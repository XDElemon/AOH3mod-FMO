.class public final Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;
.super Ljava/lang/Object;
.source "AirDefCfgRt.java"


# static fields
.field private static final FB_DETECT:F = 240.0f

.field private static final FB_DETECT_MID:F = 1200.0f

.field private static final FB_DETECT_RADAR:F = 400.0f

.field private static final FB_DISC:F = 8.0f

.field private static final FB_ENGAGE:F = 100.0f

.field private static final FB_HIT:F = 0.8f

.field private static final FB_RELOAD:F = 1.0f

.field private static final LAST_HOUR:[I

.field private static final T_AAA:Ljava/lang/String; = "aaa"

.field private static final T_MID:Ljava/lang/String; = "midcourse"

.field private static final T_RADAR:Ljava/lang/String; = "radar"

.field private static cfgLogBudget:I

.field private static iAAA:I

.field private static iMid:I

.field private static iRadar:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 32
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 33
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    .line 36
    const/high16 v0, 0x10000

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    .line 42
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLogBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static cfgLog(Ljava/lang/String;)V
    .registers 2

    .line 45
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLogBudget:I

    if-gtz v0, :cond_5

    .line 46
    return-void

    .line 48
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLogBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLogBudget:I

    .line 50
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 52
    goto :goto_10

    .line 51
    :catchall_f
    move-exception p0

    .line 53
    :goto_10
    return-void
.end method

.method public static clear()V
    .registers 3

    .line 243
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 244
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v0, v2, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    :cond_e
    return-void
.end method

.method public static detectReal(I)F
    .registers 5

    .line 99
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 101
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_2d

    .line 103
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v1, :cond_1b

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 104
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 106
    :cond_1b
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v1, :cond_2d

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 107
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2e

    int-to-float p0, p0

    return p0

    .line 111
    :cond_2d
    goto :goto_2f

    .line 110
    :catchall_2e
    move-exception v0

    .line 113
    :goto_2f
    nop

    .line 115
    const/high16 v0, 0x43700000    # 240.0f

    :try_start_32
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_49

    .line 117
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 118
    const/high16 v0, 0x44960000    # 1200.0f

    goto :goto_49

    .line 119
    :cond_41
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_4a

    if-eqz v1, :cond_49

    .line 120
    const/high16 v0, 0x43c80000    # 400.0f

    .line 124
    :cond_49
    :goto_49
    goto :goto_4b

    .line 123
    :catchall_4a
    move-exception v1

    .line 125
    :goto_4b
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-ltz v1, :cond_7d

    .line 127
    :try_start_4f
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 128
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_70

    .line 130
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v3, :cond_64

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 131
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    goto :goto_70

    .line 132
    :cond_64
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v3, :cond_70

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_70

    .line 133
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 136
    :cond_70
    :goto_70
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_7c

    int-to-float p0, p0

    .line 137
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_7b

    .line 138
    return p0

    .line 141
    :cond_7b
    goto :goto_7d

    .line 140
    :catchall_7c
    move-exception p0

    .line 143
    :cond_7d
    :goto_7d
    return v0
.end method

.method public static discScale(I)F
    .registers 4

    .line 151
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 153
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_2b

    .line 155
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v1, :cond_1a

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 156
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->discScaleOf(I)F

    move-result p0

    return p0

    .line 158
    :cond_1a
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v1, :cond_2b

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 159
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->discScaleOf(I)F

    move-result p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    return p0

    .line 163
    :cond_2b
    goto :goto_2d

    .line 162
    :catchall_2c
    move-exception v0

    .line 164
    :goto_2d
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-ltz v0, :cond_5e

    .line 166
    :try_start_31
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 167
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_52

    .line 169
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v2, :cond_46

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 170
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    goto :goto_52

    .line 171
    :cond_46
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v2, :cond_52

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 172
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 175
    :cond_52
    :goto_52
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->discScaleOf(I)F

    move-result p0
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_5d

    .line 176
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_5c

    .line 177
    return p0

    .line 180
    :cond_5c
    goto :goto_5e

    .line 179
    :catchall_5d
    move-exception p0

    .line 182
    :cond_5e
    :goto_5e
    const/high16 p0, 0x41000000    # 8.0f

    return p0
.end method

.method public static engageReal(I)F
    .registers 4

    .line 79
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 80
    nop

    .line 81
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-ltz v0, :cond_2f

    .line 83
    :try_start_a
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2c

    int-to-float v0, v0

    .line 84
    :try_start_11
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_29

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 86
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeBonusRealOf(I)I

    move-result p0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_2a

    int-to-float p0, p0

    .line 87
    cmpl-float v2, p0, v0

    if-lez v2, :cond_29

    .line 88
    move v0, p0

    .line 92
    :cond_29
    goto :goto_30

    .line 91
    :catchall_2a
    move-exception p0

    goto :goto_30

    :catchall_2c
    move-exception p0

    move v0, v1

    goto :goto_30

    .line 81
    :cond_2f
    move v0, v1

    .line 94
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

    .line 187
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 188
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const v1, 0x3f4ccccd    # 0.8f

    if-gez v0, :cond_b

    .line 189
    return v1

    .line 191
    :cond_b
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->hitChanceOf(I)F

    move-result v0

    .line 192
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_17

    move v1, v0

    :cond_17
    return v1
.end method

.method private static init()V
    .registers 4

    .line 56
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-gez v0, :cond_49

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-gez v0, :cond_49

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v0, :cond_d

    goto :goto_49

    .line 60
    :cond_d
    const/4 v0, -0x1

    :try_start_e
    const-string v1, "aaa"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    .line 64
    goto :goto_30

    .line 61
    :catchall_17
    move-exception v1

    .line 62
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nCfg ERR aaa "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLog(Ljava/lang/String;)V

    .line 66
    :goto_30
    :try_start_30
    const-string v1, "radar"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    .line 69
    goto :goto_3c

    .line 67
    :catchall_39
    move-exception v1

    .line 68
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 71
    :goto_3c
    :try_start_3c
    const-string v1, "midcourse"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_45

    .line 74
    goto :goto_48

    .line 72
    :catchall_45
    move-exception v1

    .line 73
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    .line 75
    :goto_48
    return-void

    .line 57
    :cond_49
    :goto_49
    return-void
.end method

.method public static reloadHours()F
    .registers 1

    .line 197
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 198
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-gez v0, :cond_a

    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 201
    :cond_a
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->reloadHoursOf(I)F

    move-result v0

    return v0
.end method

.method public static shotsDue(II)I
    .registers 6

    .line 208
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 209
    return v0

    .line 211
    :cond_4
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->reloadHours()F

    move-result v1

    .line 212
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_e

    .line 213
    return p1

    .line 217
    :cond_e
    :try_start_e
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v2, v2, 0x18

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_3f

    add-int/2addr v2, v3

    .line 221
    nop

    .line 222
    if-ltz p0, :cond_3e

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    array-length v3, v3

    if-lt p0, v3, :cond_1e

    goto :goto_3e

    .line 225
    :cond_1e
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aget v3, v3, p0

    .line 226
    if-lez v3, :cond_39

    if-ge v2, v3, :cond_27

    goto :goto_39

    .line 230
    :cond_27
    sub-int v3, v2, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 231
    if-gtz v1, :cond_2f

    .line 232
    return v0

    .line 234
    :cond_2f
    const/4 v0, 0x4

    if-le v1, v0, :cond_33

    .line 235
    move v1, v0

    .line 237
    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v2, v0, p0

    .line 238
    mul-int/2addr p1, v1

    return p1

    .line 227
    :cond_39
    :goto_39
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v2, v0, p0

    .line 228
    return p1

    .line 223
    :cond_3e
    :goto_3e
    return p1

    .line 219
    :catchall_3f
    move-exception p0

    .line 220
    return p1
.end method
