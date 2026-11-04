.class public final Laoc/kingdoms/lukasz/map/battles/AirAgm;
.super Ljava/lang/Object;
.source "AirAgm.java"


# static fields
.field private static AT_WAR:Ljava/lang/reflect/Method; = null

.field public static final COOLDOWN_HOURS:I = 0x4

.field private static final LAST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEFT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCAN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCAN_MS:J = 0x190L

.field private static logBudget:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LAST:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->SCAN:Ljava/util/HashMap;

    .line 42
    const/16 v0, 0x78

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->logBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static agmRangeOf(I)I
    .registers 2

    .line 280
    nop

    .line 282
    :try_start_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->agmRangeOf(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 284
    goto :goto_8

    .line 283
    :catchall_6
    move-exception v0

    const/4 v0, 0x0

    .line 285
    :goto_8
    if-gtz v0, :cond_e

    .line 286
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v0

    .line 288
    :cond_e
    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/16 v0, 0x64

    :goto_13
    return v0
.end method

.method static atWar(II)Z
    .registers 9

    .line 338
    const/4 v0, 0x0

    if-ltz p0, :cond_4b

    if-ltz p1, :cond_4b

    if-ne p0, p1, :cond_8

    goto :goto_4b

    .line 342
    :cond_8
    :try_start_8
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirAgm;->AT_WAR:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_26

    .line 343
    const-string v1, "aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isAtWar"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 344
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirAgm;->AT_WAR:Ljava/lang/reflect/Method;

    .line 346
    :cond_26
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirAgm;->AT_WAR:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 347
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_48

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_49

    if-eqz p0, :cond_48

    move v0, v3

    :cond_48
    return v0

    .line 348
    :catchall_49
    move-exception p0

    .line 349
    return v0

    .line 339
    :cond_4b
    :goto_4b
    return v0
.end method

.method public static clear()V
    .registers 1

    .line 295
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 296
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LAST:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 297
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->SCAN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 298
    const/16 v0, 0x78

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->logBudget:I

    .line 299
    return-void
.end method

.method private static doTick(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 31

    .line 59
    move-object/from16 v0, p0

    if-nez v0, :cond_5

    .line 60
    return-void

    .line 62
    :cond_5
    const-string v1, "state"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v1

    .line 63
    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    .line 64
    return-void

    .line 66
    :cond_16
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-gtz v1, :cond_1b

    .line 67
    return-void

    .line 69
    :cond_1b
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 70
    if-eqz v1, :cond_25c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    goto/16 :goto_25c

    .line 73
    :cond_27
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v3

    .line 74
    if-ltz v3, :cond_25b

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->canAGMissile(I)Z

    move-result v4

    if-nez v4, :cond_35

    goto/16 :goto_25b

    .line 78
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 79
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirAgm;->SCAN:Ljava/util/HashMap;

    iget-wide v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 80
    if-eqz v6, :cond_56

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x190

    cmp-long v6, v6, v8

    if-gez v6, :cond_56

    .line 81
    return-void

    .line 83
    :cond_56
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirAgm;->SCAN:Ljava/util/HashMap;

    iget-wide v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    iget-wide v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 87
    if-nez v6, :cond_91

    .line 88
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileCountOf(I)I

    move-result v6

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v6, v7

    .line 90
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    iget-wide v8, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 93
    :cond_91
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 94
    if-gtz v6, :cond_98

    .line 95
    return-void

    .line 99
    :cond_98
    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v7, v7, 0x18

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v7, v8

    .line 100
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LAST:Ljava/util/HashMap;

    iget-wide v9, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 101
    if-eqz v8, :cond_b9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v7, v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_b9

    .line 102
    return-void

    .line 106
    :cond_b9
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->agmRangeOf(I)I

    move-result v8

    .line 107
    const-string v9, "targetProvinceID"

    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->intOf(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v9

    .line 108
    invoke-static {v0, v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->pickTarget(Laoc/kingdoms/lukasz/map/battles/AirMission;II)Ljava/lang/Object;

    move-result-object v9

    .line 109
    if-nez v9, :cond_ca

    .line 110
    return-void

    .line 112
    :cond_ca
    const-string v10, "provinceID"

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->intOf(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v10

    .line 113
    const-string v11, "key"

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->strOf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v6}, Laoc/kingdoms/lukasz/map/battles/AirAgmMath;->shotsFor(II)I

    move-result v1

    .line 117
    if-gtz v1, :cond_e1

    .line 118
    return-void

    .line 120
    :cond_e1
    new-array v2, v2, [F

    .line 121
    iget-wide v11, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v11, v12, v4, v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v4

    if-nez v4, :cond_104

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAGM nopos m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->log(Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_104
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    .line 126
    if-nez v4, :cond_10b

    .line 127
    return-void

    .line 129
    :cond_10b
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v5

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v11

    add-int/2addr v5, v11

    int-to-float v5, v5

    .line 130
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v11

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v4

    add-int/2addr v11, v4

    int-to-float v4, v11

    .line 132
    const-string v11, "AGM"

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 133
    if-gez v23, :cond_128

    .line 134
    return-void

    .line 136
    :cond_128
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v3

    .line 137
    const/4 v11, 0x0

    cmpg-float v11, v3, v11

    if-gtz v11, :cond_135

    .line 138
    invoke-static/range {v23 .. v23}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v3

    .line 140
    :cond_135
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v11

    .line 141
    int-to-float v12, v8

    invoke-static {v12, v3, v11}, Laoc/kingdoms/lukasz/map/battles/AirAgmMath;->lifeFor(FFF)F

    move-result v24

    .line 143
    nop

    .line 144
    const/16 v25, 0x0

    move/from16 v13, v25

    move v15, v13

    :goto_144
    const-string v14, " key="

    const/4 v12, 0x1

    if-ge v15, v1, :cond_1cc

    .line 145
    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    aget v16, v2, v25

    aget v17, v2, v12

    const/16 v22, 0x0

    const-wide/16 v18, 0x0

    move/from16 v20, v11

    move/from16 v11, v23

    move/from16 v26, v1

    move v1, v12

    move/from16 v12, v20

    move/from16 v27, v13

    move-object/from16 v28, v14

    move-wide/from16 v13, v18

    move/from16 v29, v15

    move v15, v10

    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v24

    invoke-static/range {v11 .. v22}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnEx(IIJIFFFFFFF)I

    move-result v11

    .line 147
    if-gez v11, :cond_178

    .line 148
    move/from16 v12, v27

    move-object/from16 v11, v28

    goto :goto_1cf

    .line 150
    :cond_178
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v11

    .line 151
    if-eqz v11, :cond_1c2

    .line 152
    iget-wide v12, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v12, v11, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J

    .line 153
    iput-object v9, v11, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetArmyKey:Ljava/lang/String;

    .line 154
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->interceptable(II)Z

    move-result v12

    if-eqz v12, :cond_1c2

    .line 155
    iput-boolean v1, v11, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->intercepted:Z

    .line 156
    iget v1, v11, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    const v12, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v12

    iput v1, v11, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->interceptAt:F

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nAGM intc m="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v11, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " p="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, v28

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->log(Ljava/lang/String;)V

    .line 160
    :cond_1c2
    move/from16 v12, v27

    add-int/lit8 v13, v12, 0x1

    .line 144
    add-int/lit8 v15, v29, 0x1

    move/from16 v1, v26

    goto/16 :goto_144

    :cond_1cc
    move v1, v12

    move v12, v13

    move-object v11, v14

    .line 162
    :goto_1cf
    if-gtz v12, :cond_1d2

    .line 163
    return-void

    .line 165
    :cond_1d2
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    iget-wide v13, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    sub-int/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LAST:Ljava/util/HashMap;

    iget-wide v13, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nAGM fire m="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " n="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " left="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tgt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " d="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v2, v25

    sub-float v3, v5, v3

    aget v6, v2, v25

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    aget v5, v2, v1

    sub-float v5, v4, v5

    aget v1, v2, v1

    sub-float/2addr v4, v1

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-double v1, v3

    .line 168
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->log(Ljava/lang/String;)V

    .line 171
    return-void

    .line 75
    :cond_25b
    :goto_25b
    return-void

    .line 71
    :cond_25c
    :goto_25c
    return-void
.end method

.method public static forget(J)V
    .registers 4

    .line 303
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LAST:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->SCAN:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method static intOf(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 2

    .line 325
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 326
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, -0x1

    :goto_10
    return p0
.end method

.method static interceptable(II)Z
    .registers 4

    .line 260
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v0

    .line 261
    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 262
    return v1

    .line 264
    :cond_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    .line 265
    if-nez p0, :cond_f

    .line 266
    return v1

    .line 268
    :cond_f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    .line 269
    if-ne p0, p1, :cond_16

    .line 270
    return v1

    .line 272
    :cond_16
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->hitChance()F

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirAgmMath;->rollHit(FF)Z

    move-result p0

    return p0
.end method

.method public static leftOf(J)I
    .registers 3

    .line 310
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->LEFT:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 311
    if-nez p0, :cond_10

    const/4 p0, -0x1

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_14
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 354
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->logBudget:I

    if-gtz v0, :cond_5

    .line 355
    return-void

    .line 357
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirAgm;->logBudget:I

    .line 359
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 361
    goto :goto_10

    .line 360
    :catchall_f
    move-exception p0

    .line 362
    :goto_10
    return-void
.end method

.method static pickTarget(Laoc/kingdoms/lukasz/map/battles/AirMission;II)Ljava/lang/Object;
    .registers 12

    .line 182
    const-string v0, "aoc.kingdoms.lukasz.map.army.ArmyManager"

    const-string v1, "lArmy"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->staticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 184
    return-object v2

    .line 186
    :cond_e
    check-cast v0, Ljava/util/List;

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 190
    const v1, 0x7fffffff

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7d

    .line 193
    :try_start_1f
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_78

    .line 196
    nop

    .line 197
    if-nez v5, :cond_27

    .line 198
    goto :goto_7a

    .line 200
    :cond_27
    const-string v6, "civID"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->intOf(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    .line 201
    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v6, v7, :cond_7a

    if-gez v6, :cond_34

    .line 202
    goto :goto_7a

    .line 204
    :cond_34
    const-string v7, "key"

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->strOf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_45

    const-string v8, "airhq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 206
    goto :goto_7a

    .line 208
    :cond_45
    const-string v7, "iArmy"

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->intOf(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_4e

    .line 209
    goto :goto_7a

    .line 211
    :cond_4e
    const-string v7, "provinceID"

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->intOf(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v7

    .line 212
    if-gez v7, :cond_57

    .line 213
    goto :goto_7a

    .line 215
    :cond_57
    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v8, v6}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->atWar(II)Z

    move-result v6

    if-nez v6, :cond_60

    .line 216
    goto :goto_7a

    .line 218
    :cond_60
    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v6, v7, p1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->inRange(III)Z

    move-result v6

    if-nez v6, :cond_69

    .line 219
    goto :goto_7a

    .line 221
    :cond_69
    if-ne v7, p2, :cond_6c

    .line 222
    move-object v2, v5

    .line 224
    :cond_6c
    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->provinceDist(II)I

    move-result v6

    .line 225
    if-ge v6, v1, :cond_7a

    .line 226
    nop

    .line 227
    move-object v3, v5

    move v1, v6

    goto :goto_7a

    .line 194
    :catchall_78
    move-exception v5

    .line 195
    nop

    .line 190
    :cond_7a
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 230
    :cond_7d
    if-eqz v2, :cond_80

    goto :goto_81

    :cond_80
    move-object v2, v3

    :goto_81
    return-object v2
.end method

.method static provinceDist(II)I
    .registers 4

    .line 235
    const v0, 0x7fffffff

    if-ltz p0, :cond_37

    if-gez p1, :cond_8

    goto :goto_37

    .line 238
    :cond_8
    if-ne p0, p1, :cond_c

    .line 239
    const/4 p0, 0x0

    return p0

    .line 241
    :cond_c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    .line 242
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    .line 243
    if-eqz p0, :cond_36

    if-nez p1, :cond_19

    goto :goto_36

    .line 246
    :cond_19
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    sub-int/2addr v0, v1

    .line 247
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p0

    sub-int/2addr p1, p0

    .line 248
    int-to-double v0, v0

    mul-double/2addr v0, v0

    int-to-double p0, p1

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    .line 244
    :cond_36
    :goto_36
    return v0

    .line 236
    :cond_37
    :goto_37
    return v0
.end method

.method private static staticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 318
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    return-object p0

    .line 319
    :catchall_e
    move-exception p0

    .line 320
    return-object v0
.end method

.method static strOf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 330
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 331
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static tick(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 3

    .line 52
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->doTick(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 55
    goto :goto_1b

    .line 53
    :catchall_4
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nAGM ERR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->log(Ljava/lang/String;)V

    .line 56
    :goto_1b
    return-void
.end method
