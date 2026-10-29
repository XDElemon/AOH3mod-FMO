.class public final Laoc/kingdoms/lukasz/map/battles/AirDamage;
.super Ljava/lang/Object;
.source "AirDamage.java"


# static fields
.field public static final AAM_ATK_MUL:F = 2.0f

.field public static final FUSE_MUL:F = 0.7f

.field public static final SAM_BASE_DMG:F = 50.0f

.field public static dbgCalc:I

.field public static dbgOld:I

.field public static dbgOldSum:F

.field public static dbgSum:F

.field private static logBudget:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 34
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 36
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 37
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 40
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F
    .registers 8

    .line 86
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    if-nez p1, :cond_6

    goto :goto_3f

    .line 89
    :cond_6
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 90
    if-eqz p0, :cond_3e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_3e

    .line 93
    :cond_11
    nop

    .line 94
    const/4 v1, 0x0

    move v2, v0

    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 95
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 96
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v4, :cond_27

    .line 97
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    add-float/2addr v2, v3

    .line 94
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 100
    :cond_2a
    cmpg-float p0, v2, v0

    if-gtz p0, :cond_2f

    .line 101
    return v0

    .line 103
    :cond_2f
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result p0

    mul-float/2addr v2, p0

    .line 104
    if-eqz p2, :cond_3d

    const p0, 0x3f333333    # 0.7f

    mul-float/2addr v2, p0

    :cond_3d
    return v2

    .line 91
    :cond_3e
    :goto_3e
    return v0

    .line 87
    :cond_3f
    :goto_3f
    return v0
.end method

.method public static clear()V
    .registers 2

    .line 47
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 48
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 49
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 50
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 51
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 52
    return-void
.end method

.method public static defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 7

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_5

    .line 62
    return v0

    .line 64
    :cond_5
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 65
    if-eqz p0, :cond_38

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_38

    .line 68
    :cond_10
    nop

    .line 69
    nop

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2e

    .line 71
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 72
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2b

    .line 73
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    add-float/2addr v3, v4

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 70
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 77
    :cond_2e
    if-gtz v2, :cond_31

    .line 78
    return v0

    .line 80
    :cond_31
    int-to-float p0, v2

    div-float/2addr v3, p0

    .line 81
    const/high16 p0, 0x42200000    # 40.0f

    add-float/2addr v3, p0

    div-float/2addr p0, v3

    return p0

    .line 66
    :cond_38
    :goto_38
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 185
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    if-gtz v0, :cond_5

    .line 186
    return-void

    .line 188
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 190
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 192
    goto :goto_10

    .line 191
    :catchall_f
    move-exception p0

    .line 193
    :goto_10
    return-void
.end method

.method private static missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 8

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 166
    return-object v1

    .line 169
    :cond_8
    :try_start_8
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_36

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v2, :cond_13

    goto :goto_36

    .line 173
    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 174
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 175
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_32

    move-object v4, v3

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_32

    .line 176
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_37

    return-object v3

    .line 173
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 180
    :cond_35
    goto :goto_38

    .line 171
    :cond_36
    :goto_36
    return-object v1

    .line 179
    :catchall_37
    move-exception p0

    .line 181
    :goto_38
    return-object v1
.end method

.method public static noteHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 11

    .line 119
    if-nez p0, :cond_3

    .line 120
    return-void

    .line 123
    :cond_3
    :try_start_3
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 124
    const-string v1, "SAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 125
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f3

    const-string v3, " n="

    const/high16 v4, 0x3f000000    # 0.5f

    const-string v5, " v="

    const-string v6, " fuse=1"

    const-string v7, " fuse=0"

    if-ne v2, v0, :cond_a5

    .line 126
    :try_start_1d
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 127
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_f3

    .line 128
    const-string v2, " tgt="

    if-eqz v0, :cond_82

    if-nez v1, :cond_30

    goto :goto_82

    .line 132
    :cond_30
    :try_start_30
    iget-boolean v8, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    invoke-static {v0, v1, v8}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F

    move-result v0

    .line 133
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 134
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 135
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

    .line 136
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

    .line 135
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    goto :goto_f1

    .line 129
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

    .line 130
    return-void

    .line 138
    :cond_a5
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v0, v1, :cond_f1

    .line 139
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samDamage(Z)F

    move-result v0

    .line 140
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 141
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nDM calc ty=SAM tgt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
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

    .line 142
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_30 .. :try_end_f0} :catchall_f3

    goto :goto_f2

    .line 138
    :cond_f1
    :goto_f1
    nop

    .line 148
    :goto_f2
    goto :goto_f4

    .line 146
    :catchall_f3
    move-exception p0

    .line 149
    :goto_f4
    return-void
.end method

.method public static old(F)V
    .registers 3

    .line 154
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 155
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    add-float/2addr v0, p0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 156
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

    .line 158
    goto :goto_33

    .line 157
    :catchall_32
    move-exception p0

    .line 159
    :goto_33
    return-void
.end method

.method public static samDamage(Z)F
    .registers 1

    .line 109
    if-eqz p0, :cond_5

    const/high16 p0, 0x420c0000    # 35.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x42480000    # 50.0f

    :goto_7
    return p0
.end method
