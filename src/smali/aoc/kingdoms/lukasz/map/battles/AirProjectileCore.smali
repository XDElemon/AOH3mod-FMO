.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;
.super Ljava/lang/Object;
.source "AirProjectileCore.java"


# static fields
.field private static final DEDUPE_NS:J = 0x3d0900L

.field public static final MAX:I = 0x200

.field private static final MAX_DT_MS:J = 0x78L

.field private static final SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

.field public static dbgExpired:I

.field public static dbgHit:I

.field public static dbgLost:I

.field public static dbgSpawn:I

.field private static lastTickMs:J

.field private static lastTickNs:J

.field private static logBudget:I

.field private static used:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    const/16 v0, 0x200

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    .line 37
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 40
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 41
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 42
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 43
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    .line 45
    const/16 v0, 0xf0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 48
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static ageOf(I)F
    .registers 1

    .line 286
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 287
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    :goto_a
    return p0
.end method

.method public static aliveCount()I
    .registers 3

    .line 252
    nop

    .line 253
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v0, v2, :cond_1a

    .line 254
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v2, :cond_17

    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 253
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 258
    :cond_1a
    return v1
.end method

.method public static clear()V
    .registers 4

    .line 297
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v1, v2, :cond_e

    .line 298
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 300
    :cond_e
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 301
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 302
    const/16 v0, 0xf0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 303
    return-void
.end method

.method public static get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 2

    .line 262
    if-ltz p0, :cond_b

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge p0, v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object p0, v0, p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 310
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 311
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 312
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_a
    goto :goto_c

    .line 314
    :catchall_b
    move-exception v0

    .line 316
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 320
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    if-gtz v0, :cond_5

    .line 321
    return-void

    .line 323
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 325
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 327
    goto :goto_10

    .line 326
    :catchall_f
    move-exception p0

    .line 328
    :goto_10
    return-void
.end method

.method public static resultOf(I)I
    .registers 1

    .line 281
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 282
    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    :goto_a
    return p0
.end method

.method private static round2(F)F
    .registers 2

    .line 331
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static slotCount()I
    .registers 1

    .line 247
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    return v0
.end method

.method public static spawn(IIJIFFFF)I
    .registers 20

    .line 63
    move v0, p0

    const/4 v1, -0x1

    if-ltz v0, :cond_a2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v2

    if-lt v0, v2, :cond_c

    goto/16 :goto_a2

    .line 66
    :cond_c
    nop

    .line 67
    const/4 v2, 0x0

    :goto_e
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v2, v3, :cond_26

    .line 68
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v3, :cond_21

    goto :goto_24

    .line 67
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 69
    :cond_24
    :goto_24
    nop

    .line 70
    goto :goto_27

    .line 67
    :cond_26
    move v2, v1

    .line 73
    :goto_27
    if-gez v2, :cond_38

    .line 74
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_30

    .line 75
    return v1

    .line 77
    :cond_30
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    add-int/lit8 v1, v2, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    move v10, v2

    goto :goto_39

    .line 73
    :cond_38
    move v10, v2

    .line 79
    :goto_39
    sub-float v1, p8, p6

    float-to-double v1, v1

    sub-float v3, p7, p5

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v4, v1

    .line 80
    move v0, p0

    move v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move-wide v5, p2

    move v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->create(IIFFFJIFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v0

    .line 82
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aput-object v0, v1, v10

    .line 83
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAP spawn t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->idOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " civ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 86
    return v10

    .line 64
    :cond_a2
    :goto_a2
    return v1
.end method

.method public static spawnFromMission(Ljava/lang/Object;)V
    .registers 12

    .line 95
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 96
    return-void

    .line 98
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 99
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    .line 101
    return-void

    .line 103
    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 104
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    .line 105
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    .line 106
    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2c

    .line 107
    aget v1, v0, v7

    .line 108
    aget v4, v0, v6

    move v5, v1

    move v8, v4

    goto :goto_2e

    .line 106
    :cond_2c
    move v5, v1

    move v8, v4

    .line 110
    :goto_2e
    nop

    .line 111
    nop

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 113
    aget v1, v0, v7

    .line 114
    aget v0, v0, v6

    move v9, v0

    move v7, v1

    goto :goto_43

    .line 112
    :cond_41
    move v7, v5

    move v9, v8

    .line 116
    :goto_43
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 117
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    const/4 v4, -0x1

    move v6, v8

    move v8, v9

    invoke-static/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawn(IIJIFFFF)I
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_52

    .line 120
    goto :goto_53

    .line 118
    :catchall_52
    move-exception p0

    .line 121
    :goto_53
    return-void
.end method

.method public static spawnSam(Ljava/lang/Object;I)V
    .registers 12

    .line 131
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 132
    return-void

    .line 134
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 135
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    .line 136
    if-nez p1, :cond_e

    .line 137
    return-void

    .line 139
    :cond_e
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 140
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 142
    nop

    .line 143
    nop

    .line 144
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 145
    aget v1, v0, v2

    .line 146
    const/4 v3, 0x1

    aget v0, v0, v3

    move v9, v0

    move v8, v1

    goto :goto_3e

    .line 144
    :cond_3c
    move v8, v6

    move v9, v7

    .line 148
    :goto_3e
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_53

    .line 149
    nop

    .line 151
    :try_start_45
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4b

    .line 153
    move v2, p1

    goto :goto_4c

    .line 152
    :catchall_4b
    move-exception p1

    .line 154
    :goto_4c
    :try_start_4c
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    const/4 v5, -0x1

    invoke-static/range {v1 .. v9}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawn(IIJIFFFF)I
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_53

    .line 157
    goto :goto_54

    .line 155
    :catchall_53
    move-exception p0

    .line 158
    :goto_54
    return-void
.end method

.method public static stepAll(FJ)V
    .registers 15

    .line 198
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-eqz v0, :cond_10d

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_b

    goto/16 :goto_10d

    .line 201
    :cond_b
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 202
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v4, v5, :cond_10c

    .line 203
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v5, v5, v4

    .line 204
    if-eqz v5, :cond_108

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v6, :cond_20

    .line 205
    goto/16 :goto_108

    .line 207
    :cond_20
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 208
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 209
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->isHoming()Z

    move-result v8

    const-string v9, "nAP exp t="

    const-string v10, " n="

    const/4 v11, 0x1

    if-eqz v8, :cond_7a

    .line 210
    iget-wide v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v6, v7, p1, p2, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 211
    aget v6, v2, v3

    .line 212
    aget v7, v2, v11

    goto :goto_9a

    .line 215
    :cond_3c
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v6, p0

    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 216
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_108

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_108

    .line 217
    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 218
    iput v1, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 219
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto/16 :goto_108

    .line 224
    :cond_7a
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    if-ltz v8, :cond_9a

    .line 225
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 226
    if-eqz v8, :cond_9a

    .line 227
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v6

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 228
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v7

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 231
    :cond_9a
    :goto_9a
    invoke-virtual {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->step(FFF)I

    move-result v6

    .line 232
    if-ne v6, v11, :cond_d8

    .line 233
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nAP hit t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " age="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_108

    .line 235
    :cond_d8
    if-ne v6, v1, :cond_100

    .line 236
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_108

    .line 238
    :cond_100
    const/4 v5, 0x3

    if-ne v6, v5, :cond_108

    .line 239
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    add-int/2addr v5, v11

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    .line 202
    :cond_108
    :goto_108
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 242
    :cond_10c
    return-void

    .line 199
    :cond_10d
    :goto_10d
    return-void
.end method

.method public static targetMissionOf(I)J
    .registers 3

    .line 291
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 292
    if-nez p0, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    :goto_b
    return-wide v0
.end method

.method public static tick()V
    .registers 7

    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 167
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3d0900

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 168
    return-void

    .line 170
    :cond_10
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 171
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 174
    return-void

    .line 176
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    const-wide/16 v2, 0x10

    goto :goto_32

    :cond_2e
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    sub-long v2, v0, v2

    .line 178
    :goto_32
    cmp-long v6, v2, v4

    if-gez v6, :cond_37

    .line 179
    goto :goto_3f

    .line 180
    :cond_37
    const-wide/16 v4, 0x78

    cmp-long v6, v2, v4

    if-lez v6, :cond_3e

    .line 181
    goto :goto_3f

    .line 180
    :cond_3e
    move-wide v4, v2

    .line 183
    :goto_3f
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 184
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v2

    .line 185
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4c

    .line 186
    const/high16 v2, 0x43960000    # 300.0f

    .line 188
    :cond_4c
    long-to-float v3, v4

    div-float/2addr v3, v2

    invoke-static {v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->stepAll(FJ)V

    .line 189
    return-void
.end method

.method public static typeOf(I)I
    .registers 1

    .line 276
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 277
    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    :goto_a
    return p0
.end method

.method public static xOf(I)F
    .registers 1

    .line 266
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 267
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    :goto_a
    return p0
.end method

.method public static yOf(I)F
    .registers 1

    .line 271
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 272
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    :goto_a
    return p0
.end method
