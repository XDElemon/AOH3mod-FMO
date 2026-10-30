.class public final Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;
.super Ljava/lang/Object;
.source "AirDefCfgRt.java"


# static fields
.field private static final FB_DETECT:F = 300.0f

.field private static final FB_ENGAGE:F = 100.0f

.field private static final FB_HIT:F = 0.8f

.field private static final FB_RELOAD:F = 1.0f

.field private static final LAST_HOUR:[I

.field private static final T_AAA:Ljava/lang/String; = "aaa"

.field private static final T_MID:Ljava/lang/String; = "midcourse"

.field private static final T_RADAR:Ljava/lang/String; = "radar"

.field private static iAAA:I

.field private static iMid:I

.field private static iRadar:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 29
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 30
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    .line 33
    const/high16 v0, 0x10000

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static clear()V
    .registers 3

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 162
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v0, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    :cond_e
    return-void
.end method

.method public static detectReal(I)F
    .registers 3

    .line 81
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 83
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_2d

    .line 85
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v1, :cond_1b

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 86
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 88
    :cond_1b
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v1, :cond_2d

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 89
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2e

    int-to-float p0, p0

    return p0

    .line 93
    :cond_2d
    goto :goto_2f

    .line 92
    :catchall_2e
    move-exception p0

    .line 94
    :goto_2f
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-ltz p0, :cond_40

    .line 95
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0

    int-to-float p0, p0

    .line 96
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_40

    .line 97
    return p0

    .line 100
    :cond_40
    const/high16 p0, 0x43960000    # 300.0f

    return p0
.end method

.method public static engageReal(I)F
    .registers 4

    .line 61
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 62
    nop

    .line 63
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-ltz v0, :cond_2f

    .line 65
    :try_start_a
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2c

    int-to-float v0, v0

    .line 66
    :try_start_11
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_29

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 68
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeBonusRealOf(I)I

    move-result p0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_2a

    int-to-float p0, p0

    .line 69
    cmpl-float v2, p0, v0

    if-lez v2, :cond_29

    .line 70
    move v0, p0

    .line 74
    :cond_29
    goto :goto_30

    .line 73
    :catchall_2a
    move-exception p0

    goto :goto_30

    :catchall_2c
    move-exception p0

    move v0, v1

    goto :goto_30

    .line 63
    :cond_2f
    move v0, v1

    .line 76
    :goto_30
    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_36

    move v1, v0

    :cond_36
    return v1
.end method

.method public static hitChance()F
    .registers 3

    .line 105
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 106
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const v1, 0x3f4ccccd    # 0.8f

    if-gez v0, :cond_b

    .line 107
    return v1

    .line 109
    :cond_b
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->hitChanceOf(I)F

    move-result v0

    .line 110
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_17

    move v1, v0

    :cond_17
    return v1
.end method

.method private static init()V
    .registers 2

    .line 39
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-gez v0, :cond_33

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-gez v0, :cond_33

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v0, :cond_d

    goto :goto_33

    .line 43
    :cond_d
    const/4 v0, -0x1

    :try_start_e
    const-string v1, "aaa"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    .line 46
    goto :goto_1a

    .line 44
    :catchall_17
    move-exception v1

    .line 45
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 48
    :goto_1a
    :try_start_1a
    const-string v1, "radar"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_23

    .line 51
    goto :goto_26

    .line 49
    :catchall_23
    move-exception v1

    .line 50
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 53
    :goto_26
    :try_start_26
    const-string v1, "midcourse"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2f

    .line 56
    goto :goto_32

    .line 54
    :catchall_2f
    move-exception v1

    .line 55
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    .line 57
    :goto_32
    return-void

    .line 40
    :cond_33
    :goto_33
    return-void
.end method

.method public static reloadHours()F
    .registers 1

    .line 115
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 116
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-gez v0, :cond_a

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 119
    :cond_a
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->reloadHoursOf(I)F

    move-result v0

    return v0
.end method

.method public static shotsDue(II)I
    .registers 6

    .line 126
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 127
    return v0

    .line 129
    :cond_4
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->reloadHours()F

    move-result v1

    .line 130
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_e

    .line 131
    return p1

    .line 135
    :cond_e
    :try_start_e
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v2, v2, 0x18

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_3f

    add-int/2addr v2, v3

    .line 139
    nop

    .line 140
    if-ltz p0, :cond_3e

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    array-length v3, v3

    if-lt p0, v3, :cond_1e

    goto :goto_3e

    .line 143
    :cond_1e
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aget v3, v3, p0

    .line 144
    if-lez v3, :cond_39

    if-ge v2, v3, :cond_27

    goto :goto_39

    .line 148
    :cond_27
    sub-int v3, v2, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 149
    if-gtz v1, :cond_2f

    .line 150
    return v0

    .line 152
    :cond_2f
    const/4 v0, 0x4

    if-le v1, v0, :cond_33

    .line 153
    move v1, v0

    .line 155
    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v2, v0, p0

    .line 156
    mul-int/2addr p1, v1

    return p1

    .line 145
    :cond_39
    :goto_39
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v2, v0, p0

    .line 146
    return p1

    .line 141
    :cond_3e
    :goto_3e
    return p1

    .line 137
    :catchall_3f
    move-exception p0

    .line 138
    return p1
.end method
