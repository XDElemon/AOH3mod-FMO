.class public final Laoc/kingdoms/lukasz/map/battles/AirLaunch;
.super Ljava/lang/Object;
.source "AirLaunch.java"


# static fields
.field public static final AT_INTERCEPTOR:I = 0x3

.field public static final COOLDOWN_HOURS:I = 0x4

.field public static final MS_EN_ROUTE:I = 0x2

.field public static final MS_EXECUTING:I = 0x3

.field public static final MT_ATTACK_ARMY:I = 0x1

.field public static final MT_INTERCEPT:I = 0x2

.field public static final MT_STRATEGIC_BOMBING:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static inRange(III)Z
    .registers 8

    .line 186
    const/4 v0, 0x0

    if-ltz p0, :cond_48

    if-gez p1, :cond_6

    goto :goto_48

    .line 189
    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    .line 190
    return v1

    .line 192
    :cond_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    .line 193
    if-nez p0, :cond_11

    .line 194
    return v0

    .line 196
    :cond_11
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    .line 197
    move v3, v0

    :goto_16
    if-ge v3, v2, :cond_22

    .line 198
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 199
    return v1

    .line 197
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 202
    :cond_22
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    .line 203
    if-nez p1, :cond_29

    .line 204
    return v0

    .line 206
    :cond_29
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    sub-int/2addr v2, v3

    .line 207
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p0

    sub-int/2addr p1, p0

    .line 208
    if-lez p2, :cond_3e

    goto :goto_40

    :cond_3e
    const/16 p2, 0x64

    .line 209
    :goto_40
    mul-int/2addr v2, v2

    mul-int/2addr p1, p1

    add-int/2addr v2, p1

    mul-int/2addr p2, p2

    if-gt v2, p2, :cond_47

    move v0, v1

    :cond_47
    return v0

    .line 187
    :cond_48
    :goto_48
    return v0
.end method

.method static isInterceptor(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 3

    .line 230
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_28

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_28

    .line 233
    :cond_10
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 234
    instance-of v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v1, :cond_1b

    .line 235
    return v0

    .line 237
    :cond_1b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Ljava/lang/Object;

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0

    .line 231
    :cond_28
    :goto_28
    return v0
.end method

.method static maxRangeOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 2

    .line 223
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    .line 224
    const/16 v0, 0x64

    if-ltz p0, :cond_d

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result p0

    goto :goto_e

    :cond_d
    move p0, v0

    .line 225
    :goto_e
    if-lez p0, :cond_11

    move v0, p0

    :cond_11
    return v0
.end method

.method static modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 214
    const/4 v0, -0x1

    if-eqz p0, :cond_20

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_20

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_20

    .line 217
    :cond_10
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 218
    instance-of v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v1, :cond_1f

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    :cond_1f
    return v0

    .line 215
    :cond_20
    :goto_20
    return v0
.end method

.method static ord(Ljava/lang/Object;)I
    .registers 6

    .line 242
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 243
    return v0

    .line 245
    :cond_4
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_f

    .line 246
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    .line 249
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

    .line 250
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    .line 251
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2e

    return p0

    .line 254
    :cond_2d
    goto :goto_2f

    .line 253
    :catchall_2e
    move-exception p0

    .line 255
    :goto_2f
    return v0
.end method

.method static pickTarget(Laoc/kingdoms/lukasz/map/battles/AirMission;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 4

    .line 133
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_21

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v1, :cond_b

    goto :goto_21

    .line 137
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->isInterceptor(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v1

    .line 138
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-static {p0, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->scan(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/util/List;Z)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    .line 139
    if-nez v2, :cond_20

    if-eqz v1, :cond_20

    .line 140
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->scan(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/util/List;Z)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    .line 142
    :cond_20
    return-object v2

    .line 135
    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scan(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/util/List;Z)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 9

    .line 146
    nop

    .line 147
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->maxRangeOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 148
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 150
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v4, :cond_16

    .line 151
    goto :goto_5b

    .line 153
    :cond_16
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 154
    if-eq v3, p0, :cond_5b

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v4, v5, :cond_21

    .line 155
    goto :goto_5b

    .line 157
    :cond_21
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Ljava/lang/Object;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v4

    .line 158
    const/4 v5, 0x2

    if-eq v4, v5, :cond_2e

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2e

    .line 159
    goto :goto_5b

    .line 161
    :cond_2e
    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-gtz v4, :cond_33

    .line 162
    goto :goto_5b

    .line 164
    :cond_33
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v4, :cond_5b

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 165
    goto :goto_5b

    .line 167
    :cond_40
    if-eqz p2, :cond_4f

    .line 168
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Ljava/lang/Object;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v4

    .line 169
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4f

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4f

    .line 170
    goto :goto_5b

    .line 173
    :cond_4f
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v4, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->inRange(III)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 174
    goto :goto_5b

    .line 176
    :cond_5a
    move-object v1, v3

    .line 148
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 178
    :cond_5e
    return-object v1
.end method

.method public static tick(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 10

    .line 43
    if-nez p0, :cond_3

    .line 44
    return-void

    .line 46
    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Ljava/lang/Object;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 47
    return-void

    .line 49
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Ljava/lang/Object;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->ord(Ljava/lang/Object;)I

    move-result v0

    .line 50
    if-eq v0, v1, :cond_19

    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    .line 51
    return-void

    .line 53
    :cond_19
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-gtz v0, :cond_1e

    .line 54
    return-void

    .line 58
    :cond_1e
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    const-string v2, " h="

    const-string v3, "AIRDBG"

    if-gtz v0, :cond_96

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    if-eq v0, v1, :cond_96

    .line 59
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 60
    if-eqz v0, :cond_95

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_35

    goto :goto_95

    .line 63
    :cond_35
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v4

    .line 64
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileCountOf(I)I

    move-result v5

    .line 65
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nMS init p="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " n="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " g="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " hpt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " t="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 61
    :cond_95
    :goto_95
    return-void

    .line 71
    :cond_96
    :goto_96
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    if-gtz v0, :cond_cf

    .line 72
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    if-eq v0, v1, :cond_ce

    .line 73
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nMS dry t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v3, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_ce
    return-void

    .line 81
    :cond_cf
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v0, v0, 0x18

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    .line 82
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    if-lez v1, :cond_e2

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    sub-int v1, v0, v1

    const/4 v4, 0x4

    if-ge v1, v4, :cond_e2

    .line 83
    return-void

    .line 87
    :cond_e2
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->pickTarget(Laoc/kingdoms/lukasz/map/battles/AirMission;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v1

    .line 88
    if-nez v1, :cond_e9

    .line 89
    return-void

    .line 93
    :cond_e9
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 94
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    if-ge v5, v4, :cond_f5

    .line 95
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    .line 97
    :cond_f5
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    sub-int/2addr v5, v4

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    .line 98
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    .line 101
    iget-wide v5, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F

    .line 104
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirLaunch;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 105
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v5

    .line 106
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v0

    .line 107
    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince_Simpler(II)F

    move-result v6

    float-to-int v6, v6

    .line 109
    invoke-static {v6, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->flightHours(IIF)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I

    .line 110
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTgtAt:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nMS fire t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " left="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " ammo="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tgt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->seedFx(Ljava/lang/Object;)V

    .line 124
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->markHourMode(Ljava/lang/Object;)V

    .line 126
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnFromMission(Ljava/lang/Object;)V

    .line 127
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    .line 128
    const/16 v0, 0xf

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    .line 129
    return-void
.end method
