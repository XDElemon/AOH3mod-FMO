.class public final Laoc/kingdoms/lukasz/map/battles/AirLaunch;
.super Ljava/lang/Object;
.source "AirLaunch.java"


# static fields
.field public static final AT_INTERCEPTOR:I = 0x3

.field public static final COOLDOWN_HOURS:I = 0x4

.field private static final FIELD_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final MS_EN_ROUTE:I = 0x2

.field public static final MS_EXECUTING:I = 0x3

.field public static final MT_ATTACK_ARMY:I = 0x1

.field public static final MT_INTERCEPT:I = 0x2

.field public static final MT_STRATEGIC_BOMBING:I = 0x4

.field private static holdLogs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 264
    const/16 v0, 0x14

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->holdLogs:I

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->FIELD_CACHE:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static engageable(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 8

    .line 243
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    :goto_d
    if-gtz v0, :cond_10

    .line 245
    return v1

    .line 247
    :cond_10
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->totalHpOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->estimatedHitDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v3

    invoke-static {v2, v3, v0}, Laoc/kingdoms/lukasz/map/battles/AirSalvo;->needed(FFI)I

    move-result v2

    .line 248
    iget-wide v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->countAliveAamTargeting(J)I

    move-result v3

    .line 249
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    invoke-static {v0, p0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirSalvo;->shots(IIII)I

    move-result p0

    const/4 v4, 0x1

    if-lez p0, :cond_2c

    .line 250
    return v4

    .line 252
    :cond_2c
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->holdLogs:I

    if-lez p0, :cond_6d

    .line 253
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->holdLogs:I

    sub-int/2addr p0, v4

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->holdLogs:I

    .line 255
    :try_start_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nMS hold tgt="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " need="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " fly="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " planes="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_35 .. :try_end_6b} :catchall_6c

    .line 258
    goto :goto_6d

    .line 257
    :catchall_6c
    move-exception p0

    .line 260
    :cond_6d
    :goto_6d
    return v1
.end method

.method static estimatedHitDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 3

    .line 235
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->aamDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;Z)F

    move-result p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return p0

    .line 236
    :catchall_6
    move-exception p0

    .line 237
    const/4 p0, 0x0

    return p0
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 309
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 310
    return-object v0

    .line 312
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->FIELD_CACHE:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 314
    if-nez v2, :cond_3d

    .line 316
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 317
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->FIELD_CACHE:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3b

    .line 320
    goto :goto_3d

    .line 318
    :catchall_3b
    move-exception p0

    .line 319
    return-object v0

    .line 323
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_42

    return-object p0

    .line 324
    :catchall_42
    move-exception p0

    .line 325
    return-object v0
.end method

.method static inRange(III)Z
    .registers 8

    .line 191
    const/4 v0, 0x0

    if-ltz p0, :cond_48

    if-gez p1, :cond_6

    goto :goto_48

    .line 194
    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    .line 195
    return v1

    .line 197
    :cond_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    .line 198
    if-nez p0, :cond_11

    .line 199
    return v0

    .line 201
    :cond_11
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    .line 202
    move v3, v0

    :goto_16
    if-ge v3, v2, :cond_22

    .line 203
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 204
    return v1

    .line 202
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 207
    :cond_22
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    .line 208
    if-nez p1, :cond_29

    .line 209
    return v0

    .line 211
    :cond_29
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    sub-int/2addr v2, v3

    .line 212
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p0

    sub-int/2addr p1, p0

    .line 213
    if-lez p2, :cond_3e

    goto :goto_40

    :cond_3e
    const/16 p2, 0x64

    .line 214
    :goto_40
    mul-int/2addr v2, v2

    mul-int/2addr p1, p1

    add-int/2addr v2, p1

    mul-int/2addr p2, p2

    if-gt v2, p2, :cond_47

    move v0, v1

    :cond_47
    return v0

    .line 192
    :cond_48
    :goto_48
    return v0
.end method

.method static isInterceptor(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 3

    .line 284
    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2a

    .line 287
    :cond_10
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 288
    instance-of v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v1, :cond_1b

    .line 289
    return v0

    .line 291
    :cond_1b
    const-string v1, "type"

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0

    .line 285
    :cond_2a
    :goto_2a
    return v0
.end method

.method static maxRangeOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 2

    .line 277
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    .line 278
    const/16 v0, 0x64

    if-ltz p0, :cond_d

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result p0

    goto :goto_e

    :cond_d
    move p0, v0

    .line 279
    :goto_e
    if-lez p0, :cond_11

    move v0, p0

    :cond_11
    return v0
.end method

.method static modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 268
    const/4 v0, -0x1

    if-eqz p0, :cond_20

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_20

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_20

    .line 271
    :cond_10
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 272
    instance-of v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v1, :cond_1f

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    :cond_1f
    return v0

    .line 269
    :cond_20
    :goto_20
    return v0
.end method

.method static ord(Ljava/lang/Object;)I
    .registers 6

    .line 331
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 332
    return v0

    .line 334
    :cond_4
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_f

    .line 335
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    .line 338
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ordinal"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 339
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    .line 340
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2e

    return p0

    .line 343
    :cond_2d
    goto :goto_2f

    .line 342
    :catchall_2e
    move-exception p0

    .line 344
    :goto_2f
    return v0
.end method

.method static pickTarget(Laoc/kingdoms/lukasz/map/battles/AirMission;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 4

    .line 135
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_21

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v1, :cond_b

    goto :goto_21

    .line 139
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->isInterceptor(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v1

    .line 140
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-static {p0, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->scan(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/util/List;Z)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    .line 141
    if-nez v2, :cond_20

    if-eqz v1, :cond_20

    .line 142
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->scan(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/util/List;Z)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    .line 144
    :cond_20
    return-object v2

    .line 137
    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scan(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/util/List;Z)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 9

    .line 148
    nop

    .line 149
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->maxRangeOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 150
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 151
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 152
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v4, :cond_16

    .line 153
    goto :goto_6a

    .line 155
    :cond_16
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 156
    if-eq v3, p0, :cond_6a

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v4, v5, :cond_21

    .line 157
    goto :goto_6a

    .line 159
    :cond_21
    const-string v4, "state"

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v4

    .line 160
    const/4 v5, 0x2

    if-eq v4, v5, :cond_32

    const/4 v5, 0x3

    if-eq v4, v5, :cond_32

    .line 161
    goto :goto_6a

    .line 163
    :cond_32
    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-gtz v4, :cond_37

    .line 164
    goto :goto_6a

    .line 166
    :cond_37
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v4, :cond_6a

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 167
    goto :goto_6a

    .line 169
    :cond_44
    if-eqz p2, :cond_57

    .line 170
    const-string v4, "type"

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v4

    .line 171
    const/4 v5, 0x1

    if-eq v4, v5, :cond_57

    const/4 v5, 0x4

    if-eq v4, v5, :cond_57

    .line 172
    goto :goto_6a

    .line 175
    :cond_57
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v4, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->inRange(III)Z

    move-result v4

    if-nez v4, :cond_62

    .line 176
    goto :goto_6a

    .line 178
    :cond_62
    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->engageable(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 179
    goto :goto_6a

    .line 181
    :cond_69
    move-object v1, v3

    .line 150
    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 183
    :cond_6d
    return-object v1
.end method

.method public static tick(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 11

    .line 43
    if-nez p0, :cond_3

    .line 44
    return-void

    .line 46
    :cond_3
    const-string v0, "type"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v0

    .line 47
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 50
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirAgm;->tick(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    .line 51
    return-void

    .line 53
    :cond_14
    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    .line 54
    return-void

    .line 56
    :cond_18
    const-string v0, "state"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v0

    .line 57
    if-eq v0, v2, :cond_28

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    .line 58
    return-void

    .line 60
    :cond_28
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-gtz v0, :cond_2d

    .line 61
    return-void

    .line 65
    :cond_2d
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    const-string v3, " h="

    const-string v4, "AIRDBG"

    if-gtz v0, :cond_a5

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    if-eq v0, v2, :cond_a5

    .line 66
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 67
    if-eqz v0, :cond_a4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_44

    goto :goto_a4

    .line 70
    :cond_44
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v5

    .line 71
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileCountOf(I)I

    move-result v6

    .line 72
    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v6

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nMS init p="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " n="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " g="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hpt="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " t="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 68
    :cond_a4
    :goto_a4
    return-void

    .line 78
    :cond_a5
    :goto_a5
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    if-gtz v0, :cond_de

    .line 79
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    if-eq v0, v2, :cond_dd

    .line 80
    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nMS dry t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_dd
    return-void

    .line 88
    :cond_de
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v0, v0, 0x18

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v2

    .line 89
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    if-lez v2, :cond_f1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    sub-int v2, v0, v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_f1

    .line 90
    return-void

    .line 94
    :cond_f1
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->pickTarget(Laoc/kingdoms/lukasz/map/battles/AirMission;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    .line 95
    if-nez v2, :cond_f8

    .line 96
    return-void

    .line 100
    :cond_f8
    iget-object v5, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-nez v5, :cond_fe

    const/4 v5, 0x0

    goto :goto_104

    :cond_fe
    iget-object v5, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 101
    :goto_104
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->totalHpOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v6

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->estimatedHitDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v7

    invoke-static {v6, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirSalvo;->needed(FFI)I

    move-result v6

    .line 102
    iget-wide v7, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->countAliveAamTargeting(J)I

    move-result v7

    .line 103
    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    invoke-static {v5, v8, v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirSalvo;->shots(IIII)I

    move-result v5

    .line 104
    if-gtz v5, :cond_11f

    .line 105
    return-void

    .line 107
    :cond_11f
    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    sub-int/2addr v8, v5

    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    .line 108
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    .line 110
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    .line 111
    iget-wide v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F

    .line 114
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 115
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v0

    .line 116
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince_Simpler(II)F

    move-result v1

    float-to-int v1, v1

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nMS fire t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " left="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ammo="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tgt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " need="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnFromMission(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method static totalHpOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 5

    .line 219
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-nez v1, :cond_8

    goto :goto_25

    .line 222
    :cond_8
    nop

    .line 223
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 224
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 225
    instance-of v3, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_21

    .line 226
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    add-float/2addr v0, v2

    .line 223
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 229
    :cond_24
    return v0

    .line 220
    :cond_25
    :goto_25
    return v0
.end method
