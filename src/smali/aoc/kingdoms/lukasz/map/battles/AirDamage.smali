.class public final Laoc/kingdoms/lukasz/map/battles/AirDamage;
.super Ljava/lang/Object;
.source "AirDamage.java"


# static fields
.field public static final AAM_PCT_BASE:F = 3.3f

.field public static final AAM_PCT_EXP:F = 2.6f

.field public static final AAM_PCT_MAX:F = 1.0f

.field public static final AAM_PCT_MIN:F = 0.08f

.field public static final FUSE_MUL:F = 0.7f

.field private static final INDEX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Laoc/kingdoms/lukasz/map/battles/AirMission;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAM_BASE_DMG:F = 50.0f

.field public static final SAM_EXEC:F = 0.6f

.field public static final SAM_PCT:F = 0.5f

.field public static dbgAgm:I

.field public static dbgAgmSum:F

.field public static dbgCalc:I

.field public static dbgOld:I

.field public static dbgOldSum:F

.field public static dbgSam:I

.field public static dbgSamSum:F

.field public static dbgSum:F

.field private static indexSize:I

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

    .line 58
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgm:I

    .line 59
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgmSum:F

    .line 62
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    .line 415
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->indexSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 3

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F

    move-result p0

    return p0
.end method

.method public static aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F
    .registers 7

    .line 112
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-nez p1, :cond_6

    goto :goto_48

    .line 115
    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->avgAirAttack(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result p0

    .line 116
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->avgDefense(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v1

    .line 117
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->avgMaxHp(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result p1

    .line 119
    cmpg-float v2, p0, v0

    if-lez v2, :cond_47

    cmpg-float v2, p1, v0

    if-lez v2, :cond_47

    add-float/2addr v1, p0

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_20

    goto :goto_47

    .line 122
    :cond_20
    div-float/2addr p0, v1

    .line 123
    float-to-double v0, p0

    const-wide v2, 0x4004ccccc0000000L    # 2.5999999046325684

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x40533333    # 3.3f

    mul-float/2addr p0, v0

    .line 124
    const v0, 0x3da3d70a    # 0.08f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_38

    .line 125
    move p0, v0

    .line 127
    :cond_38
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_3f

    .line 128
    move p0, v0

    .line 130
    :cond_3f
    mul-float/2addr p1, p0

    .line 131
    if-eqz p2, :cond_46

    const p0, 0x3f333333    # 0.7f

    mul-float/2addr p1, p0

    :cond_46
    return p1

    .line 120
    :cond_47
    :goto_47
    return v0

    .line 113
    :cond_48
    :goto_48
    return v0
.end method

.method public static agmApplyDamage(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)F
    .registers 1

    .line 317
    const/4 p0, 0x0

    return p0
.end method

.method public static agmHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 4

    .line 290
    if-nez p0, :cond_3

    .line 291
    return-void

    .line 294
    :cond_3
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->agmApplyDamage(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)F

    move-result v0

    .line 295
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgm:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgm:I

    .line 296
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgmSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgmSum:F

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAGM hit p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetArmyKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " v="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " n="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgm:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_51

    .line 301
    goto :goto_68

    .line 299
    :catchall_51
    move-exception p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nAGM ERR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 302
    :goto_68
    return-void
.end method

.method public static avgAirAttack(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 7

    .line 136
    nop

    .line 137
    nop

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_28

    .line 139
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 140
    move v3, v0

    move v2, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 141
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 142
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_23

    .line 143
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    add-float/2addr v3, v4

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 140
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    move v1, v2

    goto :goto_29

    .line 148
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

    .line 153
    nop

    .line 154
    nop

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_28

    .line 156
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 157
    move v3, v0

    move v2, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 158
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 159
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_23

    .line 160
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    add-float/2addr v3, v4

    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 157
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    move v1, v2

    goto :goto_29

    .line 165
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

    .line 170
    nop

    .line 171
    nop

    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_31

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_31

    .line 173
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 174
    move v3, v0

    move v2, v1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 175
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 176
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2c

    .line 177
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 178
    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_27

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    goto :goto_29

    :cond_27
    const/high16 v4, 0x42c80000    # 100.0f

    :goto_29
    add-float/2addr v3, v4

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 174
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2f
    move v1, v2

    goto :goto_32

    .line 183
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

    .line 69
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 70
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSum:F

    .line 71
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 72
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 73
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 74
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 75
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgm:I

    .line 76
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgAgmSum:F

    .line 77
    const/16 v0, 0xc8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 78
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 475
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    if-gtz v0, :cond_5

    .line 476
    return-void

    .line 478
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->logBudget:I

    .line 480
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 482
    goto :goto_10

    .line 481
    :catchall_f
    move-exception p0

    .line 483
    :goto_10
    return-void
.end method

.method private static missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 8

    .line 444
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 445
    return-object v1

    .line 448
    :cond_8
    :try_start_8
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_57

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v2, :cond_13

    goto :goto_57

    .line 452
    :cond_13
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 453
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDamage;->indexSize:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 454
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->refreshMissionIndex()V

    .line 456
    :cond_20
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 457
    if-eqz v2, :cond_2f

    .line 458
    return-object v2

    .line 461
    :cond_2f
    const/4 v2, 0x0

    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 462
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 463
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_53

    move-object v4, v3

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_53

    .line 464
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 465
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_58

    .line 466
    return-object v3

    .line 461
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 470
    :cond_56
    goto :goto_59

    .line 450
    :cond_57
    :goto_57
    return-object v1

    .line 469
    :catchall_58
    move-exception p0

    .line 471
    :goto_59
    return-object v1
.end method

.method public static old(F)V
    .registers 3

    .line 392
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 393
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    add-float/2addr v0, p0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOldSum:F

    .line 394
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

    .line 396
    goto :goto_33

    .line 395
    :catchall_32
    move-exception p0

    .line 397
    :goto_33
    return-void
.end method

.method public static onExpire(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 6

    .line 233
    if-nez p0, :cond_3

    .line 234
    return-void

    .line 237
    :cond_3
    :try_start_3
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 238
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-eq v1, v0, :cond_e

    .line 239
    return-void

    .line 241
    :cond_e
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 242
    if-nez v0, :cond_17

    .line 243
    return-void

    .line 246
    :cond_17
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    iget-wide v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_52

    .line 247
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    .line 248
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 249
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F

    .line 250
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
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_53

    .line 253
    :cond_52
    goto :goto_54

    .line 252
    :catchall_53
    move-exception p0

    .line 254
    :goto_54
    return-void
.end method

.method public static onHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 3

    .line 261
    if-nez p0, :cond_3

    .line 262
    return-void

    .line 265
    :cond_3
    :try_start_3
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 266
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v1, v0, :cond_11

    .line 267
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 268
    return-void

    .line 271
    :cond_11
    const-string v0, "AGM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 272
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v1, v0, :cond_1f

    .line 273
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->agmHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 274
    return-void

    .line 276
    :cond_1f
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->settleAam(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    .line 279
    goto :goto_3a

    .line 277
    :catchall_23
    move-exception p0

    .line 278
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

    .line 280
    :goto_3a
    return-void
.end method

.method public static refreshMissionIndex()V
    .registers 7

    .line 420
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 421
    if-eqz v1, :cond_39

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v2, :cond_c

    goto :goto_39

    .line 426
    :cond_c
    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 427
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 428
    const/4 v2, 0x0

    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 429
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 430
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_2f

    .line 431
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 432
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    iget-wide v5, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 435
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->indexSize:I

    .line 439
    goto :goto_49

    .line 422
    :cond_39
    :goto_39
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 423
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->indexSize:I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    .line 424
    return-void

    .line 436
    :catchall_41
    move-exception v1

    .line 437
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->INDEX:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 438
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->indexSize:I

    .line 440
    :goto_49
    return-void
.end method

.method public static samDamage(Z)F
    .registers 1

    .line 188
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

    .line 322
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 323
    if-nez v0, :cond_21

    .line 324
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

    .line 325
    return-void

    .line 327
    :cond_21
    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->samStrike(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)F

    move-result v0

    .line 328
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSam:I

    .line 329
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    add-float/2addr v1, v0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgSamSum:F

    .line 330
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

    .line 331
    return-void
.end method

.method public static samStrike(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)F
    .registers 10

    .line 342
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 343
    return v0

    .line 345
    :cond_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 346
    if-eqz v1, :cond_9f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_9f

    .line 349
    :cond_10
    nop

    .line 350
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 351
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 352
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_2b

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2b

    .line 353
    nop

    .line 354
    goto :goto_2f

    .line 350
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2e
    const/4 v4, 0x0

    .line 357
    :goto_2f
    if-nez v4, :cond_32

    .line 358
    return v0

    .line 360
    :cond_32
    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3b

    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    goto :goto_3d

    :cond_3b
    const/high16 v1, 0x42c80000    # 100.0f

    .line 361
    :goto_3d
    iget v3, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 363
    mul-float/2addr p2, v1

    const v5, 0x3a83126f    # 0.001f

    add-float/2addr p2, v5

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_49

    const/4 v2, 0x1

    .line 364
    :cond_49
    if-eqz v2, :cond_4e

    .line 365
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    goto :goto_5b

    .line 367
    :cond_4e
    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    iput p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 368
    iget p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5b

    .line 369
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 372
    :cond_5b
    :goto_5b
    iget p1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_96

    .line 373
    iput v0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    .line 375
    :try_start_63
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 377
    goto :goto_68

    .line 376
    :catchall_67
    move-exception p1

    .line 378
    :goto_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nDM ex tgt="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " max="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    float-to-int p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    float-to-int p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->log(Ljava/lang/String;)V

    .line 383
    :cond_96
    :try_start_96
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    .line 385
    goto :goto_9b

    .line 384
    :catchall_9a
    move-exception p0

    .line 386
    :goto_9b
    iget p0, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    sub-float/2addr v3, p0

    return v3

    .line 347
    :cond_9f
    :goto_9f
    return v0
.end method

.method public static settleAam(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V
    .registers 4

    .line 205
    if-nez p0, :cond_3

    .line 206
    return-void

    .line 208
    :cond_3
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 209
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-eq v1, v0, :cond_e

    .line 210
    return-void

    .line 212
    :cond_e
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 213
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->missionById(J)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v1

    .line 214
    if-eqz v0, :cond_33

    if-nez v1, :cond_1f

    goto :goto_33

    .line 219
    :cond_1f
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 220
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxContact(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    .line 221
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgCalc:I

    .line 222
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDamage;->dbgOld:I

    .line 223
    return-void

    .line 215
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

    .line 216
    return-void
.end method
