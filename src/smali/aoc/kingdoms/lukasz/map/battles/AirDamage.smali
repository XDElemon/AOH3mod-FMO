.class public final Laoc/kingdoms/lukasz/map/battles/AirDamage;
.super Ljava/lang/Object;
.source "AirDamage.java"


# static fields
.field public static final AAM_PCT_BASE:F = 3.3f

.field public static final AAM_PCT_EXP:F = 2.6f

.field public static final AAM_PCT_MAX:F = 1.0f

.field public static final AAM_PCT_MIN:F = 0.08f

.field public static final FUSE_MUL:F = 0.7f

.field public static final SAM_BASE_DMG:F = 50.0f

.field public static final SAM_EXEC:F = 0.6f

.field public static final SAM_PCT:F = 0.5f

.field public static dbgCalc:I

.field public static dbgOld:I

.field public static dbgOldSum:F

.field public static dbgSam:I

.field public static dbgSamSum:F

.field public static dbgSum:F

.field private static logBudget:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 50
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 52
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 53
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 55
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 56
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 59
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 3

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F

    move-result p0

    return p0
.end method

.method public static aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F
    .registers 7

    .line 107
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-nez p1, :cond_6

    goto :goto_48

    .line 110
    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->avgAirAttack(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result p0

    .line 111
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->avgDefense(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v1

    .line 112
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->avgMaxHp(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result p1

    .line 114
    cmpg-float v2, p0, v0

    if-lez v2, :cond_47

    cmpg-float v2, p1, v0

    if-lez v2, :cond_47

    add-float/2addr v1, p0

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_20

    goto :goto_47

    .line 117
    :cond_20
    div-float/2addr p0, v1

    .line 118
    float-to-double v0, p0

    const-wide v2, 0x4004ccccc0000000L    # 2.5999999046325684

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x40533333    # 3.3f

    mul-float/2addr p0, v0

    .line 119
    const v0, 0x3da3d70a    # 0.08f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_38

    .line 120
    move p0, v0

    .line 122
    :cond_38
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_3f

    .line 123
    move p0, v0

    .line 125
    :cond_3f
    mul-float/2addr p1, p0

    .line 126
    if-eqz p2, :cond_46

    const p0, 0x3f333333    # 0.7f

    mul-float/2addr p1, p0

    :cond_46
    return p1

    .line 115
    :cond_47
    :goto_47
    return v0

    .line 108
    :cond_48
    :goto_48
    return v0
.end method

.method public static avgAirAttack(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 7

    .line 131
    nop

    .line 132
    nop

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_28

    .line 134
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 135
    move v3, v0

    move v2, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 136
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 137
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_23

    .line 138
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    add-float/2addr v3, v4

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 135
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    move v1, v2

    goto :goto_29

    .line 143
    :cond_28
    move v3, v0

    :goto_29
    if-lez v1, :cond_2e

    int-to-float p0, v1

    div-float v0, v3, p0

    :cond_2e
    return v0
.end method

.method public static avgDefense(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 7

    .line 148
    nop

    .line 149
    nop

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_28

    .line 151
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 152
    move v3, v0

    move v2, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 153
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 154
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_23

    .line 155
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    add-float/2addr v3, v4

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 152
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    move v1, v2

    goto :goto_29

    .line 160
    :cond_28
    move v3, v0

    :goto_29
    if-lez v1, :cond_2e

    int-to-float p0, v1

    div-float v0, v3, p0

    :cond_2e
    return v0
.end method

.method public static avgMaxHp(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 7

    .line 165
    nop

    .line 166
    nop

    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_31

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_31

    .line 168
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 169
    move v3, v0

    move v2, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 170
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 171
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2c

    .line 172
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 173
    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_27

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    goto :goto_29

    :cond_27
    const/high16 v4, 0x42c80000    # 100.0f

    :goto_29
    add-float/2addr v3, v4

    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 169
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2f
    move v1, v2

    goto :goto_32

    .line 178
    :cond_31
    move v3, v0

    :goto_32
    if-lez v1, :cond_37

    int-to-float p0, v1

    div-float v0, v3, p0

    :cond_37
    return v0
.end method

.method public static clear()V
    .registers 2

    .line 66
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 67
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 68
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 69
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 70
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 71
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 72
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 73
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 372
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    if-gtz v0, :cond_5

    .line 373
    return-void

    .line 375
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 377
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 379
    goto :goto_10

    .line 378
    :catchall_f
    move-exception p0

    .line 380
    :goto_10
    return-void
.end method

.method private static missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 8

    .line 352
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 353
    return-object v1

    .line 356
    :cond_8
    :try_start_8
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_36

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v2, :cond_13

    goto :goto_36

    .line 360
    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 361
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 362
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_32

    move-object v4, v3

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_32

    .line 363
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_37

    return-object v3

    .line 360
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 367
    :cond_35
    goto :goto_38

    .line 358
    :cond_36
    :goto_36
    return-object v1

    .line 366
    :catchall_37
    move-exception p0

    .line 368
    :goto_38
    return-object v1
.end method

.method public static old(F)V
    .registers 3

    .line 341
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 342
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    add-float/2addr v0, p0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDM old v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " n="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 345
    goto :goto_33

    .line 344
    :catchall_32
    move-exception p0

    .line 346
    :goto_33
    return-void
.end method

.method public static onExpire(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 8

    .line 227
    if-nez p0, :cond_3

    .line 228
    return-void

    .line 231
    :cond_3
    :try_start_3
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 232
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-eq v1, v0, :cond_e

    .line 233
    return-void

    .line 235
    :cond_e
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 236
    if-nez v0, :cond_17

    .line 237
    return-void

    .line 240
    :cond_17
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_59

    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_59

    .line 242
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    .line 243
    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    .line 244
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 245
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDM aam exp s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5a

    .line 249
    :cond_59
    goto :goto_5b

    .line 248
    :catchall_5a
    move-exception p0

    .line 250
    :goto_5b
    return-void
.end method

.method public static onHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 3

    .line 257
    if-nez p0, :cond_3

    .line 258
    return-void

    .line 261
    :cond_3
    :try_start_3
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 262
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v1, v0, :cond_11

    .line 263
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    goto :goto_14

    .line 265
    :cond_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->settleAam(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 269
    :goto_14
    goto :goto_2c

    .line 267
    :catchall_15
    move-exception p0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDM ERR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 270
    :goto_2c
    return-void
.end method

.method public static samDamage(Z)F
    .registers 1

    .line 183
    if-eqz p0, :cond_5

    const/high16 p0, 0x420c0000    # 35.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x42480000    # 50.0f

    :goto_7
    return p0
.end method

.method public static samHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 6

    .line 274
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 275
    if-nez v0, :cond_21

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDM sam skip tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 277
    return-void

    .line 279
    :cond_21
    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samStrike(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)F

    move-result v0

    .line 280
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 281
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nDM sam tgt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " v="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " n="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public static samStrike(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)F
    .registers 10

    .line 293
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 294
    return v0

    .line 296
    :cond_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 297
    if-eqz v1, :cond_9f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_9f

    .line 300
    :cond_10
    nop

    .line 301
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 302
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 303
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2b

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2b

    .line 304
    nop

    .line 305
    goto :goto_2f

    .line 301
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2e
    const/4 v4, 0x0

    .line 308
    :goto_2f
    if-nez v4, :cond_32

    .line 309
    return v0

    .line 311
    :cond_32
    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3b

    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    goto :goto_3d

    :cond_3b
    const/high16 v1, 0x42c80000    # 100.0f

    .line 312
    :goto_3d
    iget v3, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 314
    mul-float/2addr p2, v1

    const v5, 0x3a83126f    # 0.001f

    add-float/2addr p2, v5

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_49

    const/4 v2, 0x1

    .line 315
    :cond_49
    if-eqz v2, :cond_4e

    .line 316
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    goto :goto_5b

    .line 318
    :cond_4e
    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    iput p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 319
    iget p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5b

    .line 320
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 323
    :cond_5b
    :goto_5b
    iget p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_9b

    .line 324
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 326
    :try_start_63
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 328
    goto :goto_68

    .line 327
    :catchall_67
    move-exception p1

    .line 330
    :goto_68
    :try_start_68
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    .line 332
    goto :goto_6d

    .line 331
    :catchall_6c
    move-exception p1

    .line 333
    :goto_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nDM ex tgt="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " max="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    float-to-int p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " was="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    float-to-int p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 335
    :cond_9b
    iget p0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    sub-float/2addr v3, p0

    return v3

    .line 298
    :cond_9f
    :goto_9f
    return v0
.end method

.method public static settleAam(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 4

    .line 200
    if-nez p0, :cond_3

    .line 201
    return-void

    .line 203
    :cond_3
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 204
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-eq v1, v0, :cond_e

    .line 205
    return-void

    .line 207
    :cond_e
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 208
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v1

    .line 209
    if-eqz v0, :cond_33

    if-nez v1, :cond_1f

    goto :goto_33

    .line 214
    :cond_1f
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 215
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxContact(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    .line 216
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 217
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 218
    return-void

    .line 210
    :cond_33
    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDM aam skip s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 211
    return-void
.end method
