# 由 tools/gen_air_defense.py 生成，禁止手改
# 真源：data/air_defense.json（防空阵地参数，M3 前置）
# 口径：range 为 Real 单位；speed 为世界 px/回合；中段雷达只探测不发射
.class public Laoc/kingdoms/lukasz/map/battles/AirDefCfg;
.super Ljava/lang/Object;
.source "AirDefCfg.smali"

.field public static ID:[Ljava/lang/String;

.field public static NAMEKEY:[Ljava/lang/String;

.field public static RANGE:[I

.field public static RANGEBONUS:[I

.field public static SPEED:[F

.field public static COUNT:[I

.field public static COOLDOWN:[I

.field public static FIRE:[Z

.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aaa"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "radar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "midcourse"

    aput-object v2, v0, v1

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->ID:[Ljava/lang/String;

    const/16 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AD_AAA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AD_RADAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AD_MID"

    aput-object v2, v0, v1

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->NAMEKEY:[Ljava/lang/String;

    const/16 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :d_RANGE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->RANGE:[I

    const/16 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :d_RANGEBONUS

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->RANGEBONUS:[I

    const/16 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :d_SPEED

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->SPEED:[F

    const/16 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :d_COUNT

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->COUNT:[I

    const/16 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :d_COOLDOWN

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->COOLDOWN:[I

    const/16 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :d_FIRE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->FIRE:[Z

    return-void

:d_RANGE
    .array-data 4
        0x64
        0x82
        0xc8
    .end array-data

:d_RANGEBONUS
    .array-data 4
        0x82
        0x82
        0xc8
    .end array-data

:d_SPEED
    .array-data 4
        0x42b40000
        0x0
        0x0
    .end array-data

:d_COUNT
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

:d_COOLDOWN
    .array-data 4
        0x4
        0x0
        0x0
    .end array-data

:d_FIRE
    .array-data 1
        0x1
        0x0
        0x0
    .end array-data

.end method

.method public static rangeRealOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->RANGE:[I

    aget v1, v0, p0

    return v1
.end method

.method public static rangeBonusRealOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->RANGEBONUS:[I

    aget v1, v0, p0

    return v1
.end method

.method public static speedOf(I)F
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->SPEED:[F

    aget v1, v0, p0

    return v1
.end method

.method public static countOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->COUNT:[I

    aget v1, v0, p0

    return v1
.end method

.method public static cooldownHoursOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->COOLDOWN:[I

    aget v1, v0, p0

    return v1
.end method

.method public static canFire(I)Z
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->FIRE:[Z

    aget v1, v0, p0

    return v1
.end method

.method public static count()I
    .registers 1

    const/16 v0, 0x3

    return v0
.end method

.method public static idOf(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->ID:[Ljava/lang/String;

    aget-object v1, v0, p0

    return-object v1
.end method

.method public static nameKeyOf(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->NAMEKEY:[Ljava/lang/String;

    aget-object v1, v0, p0

    return-object v1
.end method

