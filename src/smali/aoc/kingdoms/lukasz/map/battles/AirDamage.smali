.class public final Laoc/kingdoms/lukasz/map/battles/AirDamage;
.super Ljava/lang/Object;
.source "AirDamage.java"


# static fields
.field public static final AAM_ATK_MUL:F = 2.0f

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

    .line 37
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 38
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 40
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 41
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 43
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 44
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 47
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F
    .registers 8

    .line 95
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    if-nez p1, :cond_6

    goto :goto_3f

    .line 98
    :cond_6
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 99
    if-eqz p0, :cond_3e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_3e

    .line 102
    :cond_11
    nop

    .line 103
    const/4 v1, 0x0

    move v2, v0

    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 104
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 105
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v4, :cond_27

    .line 106
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    add-float/2addr v2, v3

    .line 103
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 109
    :cond_2a
    cmpg-float p0, v2, v0

    if-gtz p0, :cond_2f

    .line 110
    return v0

    .line 112
    :cond_2f
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result p0

    mul-float/2addr v2, p0

    .line 113
    if-eqz p2, :cond_3d

    const p0, 0x3f333333    # 0.7f

    mul-float/2addr v2, p0

    :cond_3d
    return v2

    .line 100
    :cond_3e
    :goto_3e
    return v0

    .line 96
    :cond_3f
    :goto_3f
    return v0
.end method

.method public static clear()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 55
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 56
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 57
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 58
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 59
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 60
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 61
    return-void
.end method

.method public static defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 7

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_5

    .line 71
    return v0

    .line 73
    :cond_5
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 74
    if-eqz p0, :cond_38

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_38

    .line 77
    :cond_10
    nop

    .line 78
    nop

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2e

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 81
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2b

    .line 82
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    add-float/2addr v3, v4

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 79
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 86
    :cond_2e
    if-gtz v2, :cond_31

    .line 87
    return v0

    .line 89
    :cond_31
    int-to-float p0, v2

    div-float/2addr v3, p0

    .line 90
    const/high16 p0, 0x42200000    # 40.0f

    add-float/2addr v3, p0

    div-float/2addr p0, v3

    return p0

    .line 75
    :cond_38
    :goto_38
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 280
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    if-gtz v0, :cond_5

    .line 281
    return-void

    .line 283
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 285
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 287
    goto :goto_10

    .line 286
    :catchall_f
    move-exception p0

    .line 288
    :goto_10
    return-void
.end method

.method private static missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 8

    .line 260
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 261
    return-object v1

    .line 264
    :cond_8
    :try_start_8
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_36

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v2, :cond_13

    goto :goto_36

    .line 268
    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 269
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 270
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_32

    move-object v4, v3

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_32

    .line 271
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_37

    return-object v3

    .line 268
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 275
    :cond_35
    goto :goto_38

    .line 266
    :cond_36
    :goto_36
    return-object v1

    .line 274
    :catchall_37
    move-exception p0

    .line 276
    :goto_38
    return-object v1
.end method

.method public static noteHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 11

    .line 128
    if-nez p0, :cond_3

    .line 129
    return-void

    .line 132
    :cond_3
    :try_start_3
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 133
    const-string v1, "SAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 134
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f3

    const-string v3, " n="

    const/high16 v4, 0x3f000000    # 0.5f

    const-string v5, " v="

    const-string v6, " fuse=1"

    const-string v7, " fuse=0"

    if-ne v2, v0, :cond_a5

    .line 135
    :try_start_1d
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 136
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_f3

    .line 137
    const-string v2, " tgt="

    if-eqz v0, :cond_82

    if-nez v1, :cond_30

    goto :goto_82

    .line 141
    :cond_30
    :try_start_30
    iget-boolean v8, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    invoke-static {v0, v1, v8}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F

    move-result v0

    .line 142
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 143
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nDM calc ty=AAM s="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz p0, :cond_61

    goto :goto_62

    :cond_61
    move-object v6, v7

    :goto_62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    goto :goto_f1

    .line 138
    :cond_82
    :goto_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDM calc skip ty=AAM s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 139
    return-void

    .line 147
    :cond_a5
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v0, v1, :cond_f1

    .line 148
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samDamage(Z)F

    move-result v0

    .line 149
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 150
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nDM calc ty=SAM tgt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz p0, :cond_d0

    goto :goto_d1

    :cond_d0
    move-object v6, v7

    :goto_d1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_30 .. :try_end_f0} :catchall_f3

    goto :goto_f2

    .line 147
    :cond_f1
    :goto_f1
    nop

    .line 157
    :goto_f2
    goto :goto_f4

    .line 155
    :catchall_f3
    move-exception p0

    .line 158
    :goto_f4
    return-void
.end method

.method public static old(F)V
    .registers 3

    .line 249
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 250
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    add-float/2addr v0, p0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 251
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

    .line 253
    goto :goto_33

    .line 252
    :catchall_32
    move-exception p0

    .line 254
    :goto_33
    return-void
.end method

.method public static onHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 3

    .line 165
    if-nez p0, :cond_3

    .line 166
    return-void

    .line 169
    :cond_3
    :try_start_3
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 170
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v1, v0, :cond_11

    .line 171
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    goto :goto_14

    .line 173
    :cond_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->noteHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 177
    :goto_14
    goto :goto_2c

    .line 175
    :catchall_15
    move-exception p0

    .line 176
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

    .line 178
    :goto_2c
    return-void
.end method

.method public static samDamage(Z)F
    .registers 1

    .line 118
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

    .line 182
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 183
    if-nez v0, :cond_21

    .line 184
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

    .line 185
    return-void

    .line 187
    :cond_21
    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samStrike(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)F

    move-result v0

    .line 188
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 189
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 190
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

    .line 191
    return-void
.end method

.method public static samStrike(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)F
    .registers 10

    .line 201
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 202
    return v0

    .line 204
    :cond_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 205
    if-eqz v1, :cond_9f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_9f

    .line 208
    :cond_10
    nop

    .line 209
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 210
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 211
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2b

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2b

    .line 212
    nop

    .line 213
    goto :goto_2f

    .line 209
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2e
    const/4 v4, 0x0

    .line 216
    :goto_2f
    if-nez v4, :cond_32

    .line 217
    return v0

    .line 219
    :cond_32
    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3b

    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    goto :goto_3d

    :cond_3b
    const/high16 v1, 0x42c80000    # 100.0f

    .line 220
    :goto_3d
    iget v3, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 222
    mul-float/2addr p2, v1

    const v5, 0x3a83126f    # 0.001f

    add-float/2addr p2, v5

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_49

    const/4 v2, 0x1

    .line 223
    :cond_49
    if-eqz v2, :cond_4e

    .line 224
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    goto :goto_5b

    .line 226
    :cond_4e
    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    iput p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 227
    iget p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5b

    .line 228
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 231
    :cond_5b
    :goto_5b
    iget p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_9b

    .line 232
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 234
    :try_start_63
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 236
    goto :goto_68

    .line 235
    :catchall_67
    move-exception p1

    .line 238
    :goto_68
    :try_start_68
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    .line 240
    goto :goto_6d

    .line 239
    :catchall_6c
    move-exception p1

    .line 241
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

    .line 243
    :cond_9b
    iget p0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    sub-float/2addr v3, p0

    return v3

    .line 206
    :cond_9f
    :goto_9f
    return v0
.end method
