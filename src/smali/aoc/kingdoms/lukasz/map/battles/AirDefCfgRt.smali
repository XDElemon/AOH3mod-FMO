.class public final Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;
.super Ljava/lang/Object;
.source "AirDefCfgRt.java"


# static fields
.field private static final FB_DETECT:F = 500.0f

.field private static final FB_DETECT_MID:F = 2500.0f

.field private static final FB_DETECT_RADAR:F = 850.0f

.field private static final FB_DISC:F = 1.0f

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

    .line 263
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 264
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v0, v2, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    :cond_e
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 270
    return-void
.end method

.method public static detectReal(I)F
    .registers 5

    .line 119
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 121
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_2d

    .line 123
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v1, :cond_1b

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 124
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 126
    :cond_1b
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v1, :cond_2d

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 127
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2e

    int-to-float p0, p0

    return p0

    .line 131
    :cond_2d
    goto :goto_2f

    .line 130
    :catchall_2e
    move-exception v0

    .line 133
    :goto_2f
    nop

    .line 135
    const/high16 v0, 0x43fa0000    # 500.0f

    :try_start_32
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_4b

    .line 137
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 138
    const v0, 0x451c4000    # 2500.0f

    goto :goto_4b

    .line 139
    :cond_42
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v1
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_4c

    if-eqz v1, :cond_4b

    .line 140
    const v0, 0x44548000    # 850.0f

    .line 144
    :cond_4b
    :goto_4b
    goto :goto_4d

    .line 143
    :catchall_4c
    move-exception v1

    .line 145
    :goto_4d
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-ltz v1, :cond_7f

    .line 147
    :try_start_51
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 148
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_72

    .line 150
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v3, :cond_66

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 151
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    goto :goto_72

    .line 152
    :cond_66
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v3, :cond_72

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_72

    .line 153
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 156
    :cond_72
    :goto_72
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result p0
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_7e

    int-to-float p0, p0

    .line 157
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_7d

    .line 158
    return p0

    .line 161
    :cond_7d
    goto :goto_7f

    .line 160
    :catchall_7e
    move-exception p0

    .line 163
    :cond_7f
    :goto_7f
    return v0
.end method

.method public static discScale(I)F
    .registers 4

    .line 171
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 173
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2b

    .line 175
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v1, :cond_1a

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 176
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->discScaleOf(I)F

    move-result p0

    return p0

    .line 178
    :cond_1a
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v1, :cond_2b

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 179
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->discScaleOf(I)F

    move-result p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    return p0

    .line 183
    :cond_2b
    goto :goto_2d

    .line 182
    :catchall_2c
    move-exception v0

    .line 184
    :goto_2d
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-ltz v0, :cond_5e

    .line 186
    :try_start_31
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 187
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_52

    .line 189
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v2, :cond_46

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 190
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    goto :goto_52

    .line 191
    :cond_46
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-ltz v2, :cond_52

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 192
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 195
    :cond_52
    :goto_52
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->discScaleOf(I)F

    move-result p0
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_5d

    .line 196
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_5c

    .line 197
    return p0

    .line 200
    :cond_5c
    goto :goto_5e

    .line 199
    :catchall_5d
    move-exception p0

    .line 202
    :cond_5e
    :goto_5e
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static engageReal(I)F
    .registers 4

    .line 99
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 100
    nop

    .line 101
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-ltz v0, :cond_2f

    .line 103
    :try_start_a
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2c

    int-to-float v0, v0

    .line 104
    :try_start_11
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_29

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 106
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeBonusRealOf(I)I

    move-result p0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_2a

    int-to-float p0, p0

    .line 107
    cmpl-float v2, p0, v0

    if-lez v2, :cond_29

    .line 108
    move v0, p0

    .line 112
    :cond_29
    goto :goto_30

    .line 111
    :catchall_2a
    move-exception p0

    goto :goto_30

    :catchall_2c
    move-exception p0

    move v0, v1

    goto :goto_30

    .line 101
    :cond_2f
    move v0, v1

    .line 114
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

    .line 207
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 208
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const v1, 0x3f4ccccd    # 0.8f

    if-gez v0, :cond_b

    .line 209
    return v1

    .line 211
    :cond_b
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->hitChanceOf(I)F

    move-result v0

    .line 212
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

    if-gez v0, :cond_130

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    if-gez v0, :cond_130

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    if-ltz v0, :cond_e

    goto/16 :goto_130

    .line 60
    :cond_e
    const/4 v0, -0x1

    :try_start_f
    const-string v1, "aaa"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    .line 64
    goto :goto_31

    .line 61
    :catchall_18
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
    :goto_31
    :try_start_31
    const-string v1, "radar"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    .line 69
    goto :goto_3d

    .line 67
    :catchall_3a
    move-exception v1

    .line 68
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    .line 71
    :goto_3d
    :try_start_3d
    const-string v1, "midcourse"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_46

    .line 74
    goto :goto_49

    .line 72
    :catchall_46
    move-exception v1

    .line 73
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    .line 79
    :goto_49
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    const-string v1, " mid="

    const-string v2, " radar="

    if-ltz v0, :cond_103

    .line 81
    :try_start_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nCfg OK aaa="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 83
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 84
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeBonusRealOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " det="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 85
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->detectRealOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 86
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->hitChanceOf(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 87
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->reloadHoursOf(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    .line 88
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->speedOf(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->canFire(I)Z

    move-result v1

    if-eqz v1, :cond_f4

    const/4 v1, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v1, 0x0

    :goto_f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLog(Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_51 .. :try_end_100} :catchall_101

    goto :goto_102

    .line 90
    :catchall_101
    move-exception v0

    .line 91
    :goto_102
    goto :goto_12f

    .line 93
    :cond_103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nCfg MISS aaa="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iRadar:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iMid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->cfgLog(Ljava/lang/String;)V

    .line 95
    :goto_12f
    return-void

    .line 57
    :cond_130
    :goto_130
    return-void
.end method

.method public static reloadHours()F
    .registers 1

    .line 217
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->init()V

    .line 218
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    if-gez v0, :cond_a

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 221
    :cond_a
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->iAAA:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->reloadHoursOf(I)F

    move-result v0

    return v0
.end method

.method public static shotsDue(II)I
    .registers 6

    .line 228
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 229
    return v0

    .line 231
    :cond_4
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->reloadHours()F

    move-result v1

    .line 232
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_e

    .line 233
    return p1

    .line 237
    :cond_e
    :try_start_e
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v2, v2, 0x18

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_3f

    add-int/2addr v2, v3

    .line 241
    nop

    .line 242
    if-ltz p0, :cond_3e

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    array-length v3, v3

    if-lt p0, v3, :cond_1e

    goto :goto_3e

    .line 245
    :cond_1e
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aget v3, v3, p0

    .line 246
    if-lez v3, :cond_39

    if-ge v2, v3, :cond_27

    goto :goto_39

    .line 250
    :cond_27
    sub-int v3, v2, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 251
    if-gtz v1, :cond_2f

    .line 252
    return v0

    .line 254
    :cond_2f
    const/4 v0, 0x4

    if-le v1, v0, :cond_33

    .line 255
    move v1, v0

    .line 257
    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v2, v0, p0

    .line 258
    mul-int/2addr p1, v1

    return p1

    .line 247
    :cond_39
    :goto_39
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->LAST_HOUR:[I

    aput v2, v0, p0

    .line 248
    return p1

    .line 243
    :cond_3e
    :goto_3e
    return p1

    .line 239
    :catchall_3f
    move-exception p0

    .line 240
    return p1
.end method
