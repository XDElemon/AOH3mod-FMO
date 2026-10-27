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

.field public static CANAAMISSILE:[Z

.field public static CANAGMISSILE:[Z

.field public static CANTACTICALNUKE:[Z

.field public static CANALBM:[Z

.field public static CANALBMNUKE:[Z

.field public static CANAGGUN:[Z

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

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_CANAAMISSILE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANAAMISSILE:[Z

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_CANAGMISSILE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANAGMISSILE:[Z

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_CANTACTICALNUKE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANTACTICALNUKE:[Z

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_CANALBM

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANALBM:[Z

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_CANALBMNUKE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANALBMNUKE:[Z

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_CANAGGUN

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANAGGUN:[Z

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
        0x41e00000
        0x41e00000
        0x41d00000
        0x41e00000
        0x41d00000
        0x41d00000
        0x41c80000
        0x41d00000
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
        0x43160000
        0x43160000
        0x43160000
        0x43160000
        0x43150000
        0x43160000
        0x43d20000
        0x43d20000
        0x43c78000
        0x43d20000
        0x43bb8000
        0x43bb8000
        0x43b20000
        0x43bb8000
        0x43ce8000
        0x43ce8000
        0x43c40000
        0x43ce8000
        0x43c50000
        0x43c50000
        0x43bb0000
        0x43c50000
        0x450c0000
        0x450c0000
        0x45050000
        0x450c0000
        0x44fa0000
        0x44fa0000
        0x44ed8000
        0x44fa0000
        0x45098000
        0x45098000
        0x4502a000
        0x45098000
        0x45034000
        0x45034000
        0x44f96000
        0x45034000
    .end array-data

    :d_DEFENSE
    .array-data 4
        0x41900000
        0x41900000
        0x419e6666
        0x41d80000
        0x417ccccd
        0x417ccccd
        0x418a6666
        0x41bccccd
        0x41700000
        0x41700000
        0x41840000
        0x41b40000
        0x41700000
        0x41700000
        0x41840000
        0x41b40000
        0x42700000
        0x42700000
        0x42840000
        0x42b40000
        0x42520000
        0x42520000
        0x42673333
        0x429d999a
        0x42480000
        0x42480000
        0x425c0000
        0x42960000
        0x42480000
        0x42480000
        0x425c0000
        0x42960000
        0x43b40000
        0x43b40000
        0x43c60000
        0x44070000
        0x439d8000
        0x439d8000
        0x43ad4000
        0x43ec4000
        0x43960000
        0x43960000
        0x43a50000
        0x43e10000
        0x43960000
        0x43960000
        0x43a50000
        0x43e10000
        0x44610000
        0x44610000
        0x44778000
        0x44a8c000
        0x4444e000
        0x4444e000
        0x44588ccd
        0x4493a666
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
        0x4464c000
        0x4473c000
        0x44494000
        0x44340000
        0x44624000
        0x44714000
        0x44480000
        0x4432c000
        0x44584000
        0x44660000
        0x443e0000
        0x442a0000
        0x445e8000
        0x446d8000
        0x44444000
        0x442f0000
        0x44960000
        0x44a00000
        0x4483e000
        0x446c4000
        0x4494c000
        0x449ec000
        0x4482a000
        0x4469c000
        0x448de000
        0x44974000
        0x447a0000
        0x445e8000
        0x44924000
        0x449ba000
        0x44802000
        0x44660000
        0x44ba4000
        0x44c62000
        0x44a3c000
        0x44924000
        0x44b86000
        0x44c44000
        0x44a1e000
        0x44910000
        0x44afa000
        0x44bae000
        0x449a6000
        0x448a2000
        0x44b4a000
        0x44c08000
        0x449ec000
        0x448e8000
        0x44dde000
        0x44ec4000
        0x44c30000
        0x44ae6000
        0x44dc0000
        0x44e9c000
        0x44c12000
        0x44ad2000
        0x44d16000
        0x44de8000
        0x44b7c000
        0x44a50000
        0x44d7a000
        0x44e56000
        0x44bd6000
        0x44a96000
    .end array-data

    :d_MISSILESPEED
    .array-data 4
        0x428e0000
        0x428e0000
        0x428e0000
        0x428e0000
        0x428e0000
        0x428e0000
        0x428e0000
        0x428e0000
        0x428c0000
        0x428c0000
        0x428c0000
        0x428c0000
        0x42900000
        0x42900000
        0x42900000
        0x42900000
        0x42b00000
        0x42b00000
        0x42b00000
        0x42b00000
        0x42ae0000
        0x42ae0000
        0x42ae0000
        0x42ae0000
        0x42ae0000
        0x42ae0000
        0x42ae0000
        0x42ae0000
        0x42b20000
        0x42b20000
        0x42b20000
        0x42b20000
        0x42d60000
        0x42d60000
        0x42d60000
        0x42d60000
        0x42d40000
        0x42d40000
        0x42d40000
        0x42d40000
        0x42d20000
        0x42d20000
        0x42d20000
        0x42d20000
        0x42d80000
        0x42d80000
        0x42d80000
        0x42d80000
        0x43020000
        0x43020000
        0x43020000
        0x43020000
        0x43010000
        0x43010000
        0x43010000
        0x43010000
        0x43000000
        0x43000000
        0x43000000
        0x43000000
        0x43030000
        0x43030000
        0x43030000
        0x43030000
    .end array-data

    :d_RADARDETECT
    .array-data 4
        0x44278000
        0x44278000
        0x44278000
        0x44278000
        0x44228000
        0x44228000
        0x44228000
        0x44228000
        0x44110000
        0x44110000
        0x44110000
        0x44110000
        0x442c8000
        0x442c8000
        0x442c8000
        0x442c8000
        0x44898000
        0x44898000
        0x44898000
        0x44898000
        0x44848000
        0x44848000
        0x44848000
        0x44848000
        0x446b0000
        0x446b0000
        0x446b0000
        0x446b0000
        0x448c0000
        0x448c0000
        0x448c0000
        0x448c0000
        0x44c6c000
        0x44c6c000
        0x44c6c000
        0x44c6c000
        0x44bf4000
        0x44bf4000
        0x44bf4000
        0x44bf4000
        0x44aa0000
        0x44aa0000
        0x44aa0000
        0x44aa0000
        0x44ca8000
        0x44ca8000
        0x44ca8000
        0x44ca8000
        0x45098000
        0x45098000
        0x45098000
        0x45098000
        0x45048000
        0x45048000
        0x45048000
        0x45048000
        0x44ec4000
        0x44ec4000
        0x44ec4000
        0x44ec4000
        0x450ca000
        0x450ca000
        0x450ca000
        0x450ca000
    .end array-data

    :d_MISSILERANGE
    .array-data 4
        0x7d
        0x7d
        0x7d
        0x7d
        0x78
        0x78
        0x78
        0x78
        0x6e
        0x6e
        0x6e
        0x6e
        0x78
        0x78
        0x78
        0x78
        0xa0
        0xa0
        0xa0
        0xa0
        0x9b
        0x9b
        0x9b
        0x9b
        0x91
        0x91
        0x91
        0x91
        0x9b
        0x9b
        0x9b
        0x9b
        0xc8
        0xc8
        0xc8
        0xc8
        0xbe
        0xbe
        0xbe
        0xbe
        0xaf
        0xaf
        0xaf
        0xaf
        0xbe
        0xbe
        0xbe
        0xbe
        0xf0
        0xf0
        0xf0
        0xf0
        0xe1
        0xe1
        0xe1
        0xe1
        0xd2
        0xd2
        0xd2
        0xd2
        0xe6
        0xe6
        0xe6
        0xe6
    .end array-data

    :d_MISSILECOUNT
    .array-data 4
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x5
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
        0xaa
        0xaa
        0xaa
        0xaa
        0xdc
        0xdc
        0xdc
        0xdc
        0xaa
        0xaa
        0xaa
        0xaa
        0xe6
        0xe6
        0xe6
        0xe6
        0x165
        0x165
        0x165
        0x165
        0x1ce
        0x1ce
        0x1ce
        0x1ce
        0x165
        0x165
        0x165
        0x165
        0x1e3
        0x1e3
        0x1e3
        0x1e3
        0x2fd
        0x2fd
        0x2fd
        0x2fd
        0x3de
        0x3de
        0x252
        0x252
        0x2fd
        0x2fd
        0x2fd
        0x2fd
        0x40b
        0x40b
        0x26d
        0x40b
        0x5fa
        0x5fa
        0x5fa
        0x5fa
        0x7bc
        0x7bc
        0x7bc
        0x7bc
        0x5fa
        0x5fa
        0x396
        0x5fa
        0x816
        0x816
        0x816
        0x816
    .end array-data

    :d_TIME
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x4
        0x4
        0x4
        0x4
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
        0x6
        0x6
        0x6
        0x6
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
        0x9
        0x9
        0x8
        0x8
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
        0xd
        0xd
        0xd
        0xd
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
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
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
        0x1
        0x1
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
        0x1
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
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

    :d_CANAAMISSILE
    .array-data 1
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
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
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
        0x0
    .end array-data

    :d_CANAGMISSILE
    .array-data 1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
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
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :d_CANTACTICALNUKE
    .array-data 1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
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
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :d_CANALBM
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
        0x1
        0x1
        0x1
        0x1
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
    .end array-data

    :d_CANALBMNUKE
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
        0x1
        0x1
        0x1
        0x1
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
    .end array-data

    :d_CANAGGUN
    .array-data 1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x1
        0x0
        0x1
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
# 按 modelAid 取 canAGGun；越界/未定型 → false
.method public static canAGGun(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_false

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANAGGUN:[Z

    array-length v1, v0

    if-ge p0, v1, :g_false

    aget-boolean v0, v0, p0

    return v0

    :g_false
    const/4 v0, 0x0

    return v0
.end method

# 按 modelAid 取 canAAMissile；越界/未定型 → false
.method public static canAAMissile(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_false

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANAAMISSILE:[Z

    array-length v1, v0

    if-ge p0, v1, :g_false

    aget-boolean v0, v0, p0

    return v0

    :g_false
    const/4 v0, 0x0

    return v0
.end method

# 按 modelAid 取 canAGMissile；越界/未定型 → false
.method public static canAGMissile(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_false

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANAGMISSILE:[Z

    array-length v1, v0

    if-ge p0, v1, :g_false

    aget-boolean v0, v0, p0

    return v0

    :g_false
    const/4 v0, 0x0

    return v0
.end method

# 按 modelAid 取 canTacticalNuke；越界/未定型 → false
.method public static canTacticalNuke(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_false

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANTACTICALNUKE:[Z

    array-length v1, v0

    if-ge p0, v1, :g_false

    aget-boolean v0, v0, p0

    return v0

    :g_false
    const/4 v0, 0x0

    return v0
.end method

# 按 modelAid 取 canALBM；越界/未定型 → false
.method public static canALBM(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_false

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANALBM:[Z

    array-length v1, v0

    if-ge p0, v1, :g_false

    aget-boolean v0, v0, p0

    return v0

    :g_false
    const/4 v0, 0x0

    return v0
.end method

# 按 modelAid 取 canALBMNuke；越界/未定型 → false
.method public static canALBMNuke(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_false

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->CANALBMNUKE:[Z

    array-length v1, v0

    if-ge p0, v1, :g_false

    aget-boolean v0, v0, p0

    return v0

    :g_false
    const/4 v0, 0x0

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

