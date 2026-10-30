# 由 tools/gen_missile_types.py 生成，禁止手改
# 真源：data/missiles.json（M2 导弹类型表）
# 口径：中段雷达只探测不发射；反导阵地只拦核弹头；防空阵地拦飞机
.class public Laoc/kingdoms/lukasz/map/battles/MissileTypes;
.super Ljava/lang/Object;
.source "MissileTypes.smali"

.field public static ID:[Ljava/lang/String;

.field public static NAMEKEY:[Ljava/lang/String;

.field public static CAP:[Ljava/lang/String;

.field public static SPEED:[F

.field public static LIFE:[F

.field public static TURN:[F

.field public static HITR:[F

.field public static FUSE:[F

.field public static LAUNCHER:[I

.field public static TARGET:[I

.field public static WARHEAD:[I

.field public static IMASK:[I

.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AAM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SAM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ABM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AGM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ALBM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TAC_NUKE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ALBM_NUKE"

    aput-object v2, v0, v1

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->ID:[Ljava/lang/String;

    const/16 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Missile.AAM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Missile.SAM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Missile.ABM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Missile.AGM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Missile.ALBM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Missile.TACNUKE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Missile.ALBMNUKE"

    aput-object v2, v0, v1

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->NAMEKEY:[Ljava/lang/String;

    const/16 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CanAAMissile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CanAGMissile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CanALBM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CanTacticalNuke"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CanALBMNuke"

    aput-object v2, v0, v1

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->CAP:[Ljava/lang/String;

    const/16 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :d_SPEED

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->SPEED:[F

    const/16 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :d_LIFE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->LIFE:[F

    const/16 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :d_TURN

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->TURN:[F

    const/16 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :d_HITR

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->HITR:[F

    const/16 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :d_FUSE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->FUSE:[F

    const/16 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :d_LAUNCHER

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->LAUNCHER:[I

    const/16 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :d_TARGET

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->TARGET:[I

    const/16 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :d_WARHEAD

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->WARHEAD:[I

    const/16 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :d_IMASK

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->IMASK:[I

    return-void

:d_SPEED
    .array-data 4
        0x42870000
        0x43020000
        0x42f00000
        0x42340000
        0x430c0000
        0x42dc0000
        0x430c0000
    .end array-data

:d_LIFE
    .array-data 4
        0x3f000000
        0x3f4ccccd
        0x3ecccccd
        0x3f99999a
        0x3f800000
        0x3f800000
        0x3f800000
    .end array-data

:d_TURN
    .array-data 4
        0x43700000
        0x43b40000
        0x43960000
        0x42b40000
        0x0
        0x0
        0x0
    .end array-data

:d_HITR
    .array-data 4
        0x40c00000
        0x40c00000
        0x41000000
        0x41000000
        0x41200000
        0x41400000
        0x41400000
    .end array-data

:d_FUSE
    .array-data 4
        0x41c00000
        0x41c00000
        0x41800000
        0x41a00000
        0x41f00000
        0x41f00000
        0x41f00000
    .end array-data

:d_LAUNCHER
    .array-data 4
        0x0
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

:d_TARGET
    .array-data 4
        0x0
        0x0
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

:d_WARHEAD
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
    .end array-data

:d_IMASK
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
    .end array-data

.end method

.method public static speedOf(I)F
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->SPEED:[F

    aget v1, v0, p0

    return v1
.end method

.method public static lifeOf(I)F
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->LIFE:[F

    aget v1, v0, p0

    return v1
.end method

.method public static turnOf(I)F
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->TURN:[F

    aget v1, v0, p0

    return v1
.end method

.method public static hitRadiusOf(I)F
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->HITR:[F

    aget v1, v0, p0

    return v1
.end method

.method public static fuseRadiusOf(I)F
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->FUSE:[F

    aget v1, v0, p0

    return v1
.end method

.method public static launcherOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->LAUNCHER:[I

    aget v1, v0, p0

    return v1
.end method

.method public static targetOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->TARGET:[I

    aget v1, v0, p0

    return v1
.end method

.method public static warheadOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->WARHEAD:[I

    aget v1, v0, p0

    return v1
.end method

.method public static interceptMaskOf(I)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->IMASK:[I

    aget v1, v0, p0

    return v1
.end method

.method public static count()I
    .registers 1

    const/16 v0, 0x7

    return v0
.end method

.method public static idOf(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->ID:[Ljava/lang/String;

    aget-object v1, v0, p0

    return-object v1
.end method

.method public static nameKeyOf(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->NAMEKEY:[Ljava/lang/String;

    aget-object v1, v0, p0

    return-object v1
.end method

.method public static capabilityOf(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->CAP:[Ljava/lang/String;

    aget-object v1, v0, p0

    return-object v1
.end method
