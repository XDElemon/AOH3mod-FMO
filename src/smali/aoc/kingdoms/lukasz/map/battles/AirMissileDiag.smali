.class public final Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;
.super Ljava/lang/Object;
.source "AirMissileDiag.java"


# static fields
.field private static final GAP_MS:J = 0x96L

.field private static final MAX_LINES:I = 0x5dc

.field private static final PATH:Ljava/lang/String; = "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt"

.field private static lastMs:J

.field private static n:I

.field private static nDraw:I

.field private static nStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 24
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->n:I

    .line 25
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->lastMs:J

    .line 26
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nDraw:I

    .line 27
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nStep:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static dist2(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/province/Province;)I
    .registers 4

    .line 49
    if-eqz p0, :cond_1b

    if-nez p1, :cond_5

    goto :goto_1b

    .line 52
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    sub-int/2addr v0, v1

    .line 53
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p1

    sub-int/2addr p0, p1

    .line 54
    mul-int/2addr v0, v0

    mul-int/2addr p0, p0

    add-int/2addr v0, p0

    return v0

    .line 50
    :cond_1b
    :goto_1b
    const/4 p0, -0x1

    return p0
.end method

.method private static isNeighbor(Laoc/kingdoms/lukasz/map/province/Province;I)Z
    .registers 6

    .line 58
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 59
    return v0

    .line 61
    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    .line 62
    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_16

    .line 63
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    if-ne v3, p1, :cond_13

    .line 64
    const/4 p0, 0x1

    return p0

    .line 62
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 67
    :cond_16
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4

    .line 33
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->n:I

    const/16 v1, 0x5dc

    if-lt v0, v1, :cond_7

    .line 34
    return-void

    .line 36
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->n:I

    .line 38
    :try_start_d
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v2, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt"

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 41
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3d

    .line 44
    goto :goto_3e

    .line 42
    :catchall_3d
    move-exception p0

    .line 45
    :goto_3e
    return-void
.end method

.method public static logDraw(Ljava/lang/Object;)V
    .registers 7

    .line 119
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 120
    return-void

    .line 122
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 123
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 124
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    .line 125
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    .line 126
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    int-to-float v1, v1

    add-float/2addr v3, v1

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 127
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    int-to-float v2, v2

    add-float/2addr v3, v2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 128
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nDraw:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_2c

    .line 129
    return-void

    .line 131
    :cond_2c
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nDraw:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nDraw:I

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRAW id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    float-to-int p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " sx="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " sy="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " W="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " H="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " zoom="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_0 .. :try_end_aa} :catchall_ab

    .line 137
    goto :goto_ca

    .line 135
    :catchall_ab
    move-exception p0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXC draw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V

    .line 138
    :goto_ca
    return-void
.end method

.method public static logFire(Ljava/lang/Object;I)V
    .registers 9

    .line 157
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 158
    return-void

    .line 160
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 161
    nop

    .line 162
    nop

    .line 163
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_16

    :cond_10
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 164
    :goto_16
    const/4 v2, 0x0

    if-lez v0, :cond_2b

    .line 165
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v3, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_2b

    .line 167
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    .line 168
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v2

    .line 171
    :cond_2b
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 172
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FIRE id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " rng="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " d2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 174
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->dist2(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/province/Province;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " sk="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_0 .. :try_end_87} :catchall_88

    .line 177
    goto :goto_a7

    .line 175
    :catchall_88
    move-exception p0

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EXC fire "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V

    .line 178
    :goto_a7
    return-void
.end method

.method public static logStep(Ljava/lang/Object;)V
    .registers 4

    .line 143
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nStep:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_52

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_52

    .line 146
    :cond_b
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->nStep:I

    .line 147
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STEP id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_53

    .line 151
    goto :goto_72

    .line 144
    :cond_52
    :goto_52
    return-void

    .line 149
    :catchall_53
    move-exception p0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXC step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V

    .line 152
    :goto_72
    return-void
.end method

.method public static logTick(Ljava/lang/Object;)V
    .registers 15

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->n:I

    const/16 v3, 0x5dc

    if-ge v2, v3, :cond_158

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->lastMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    goto/16 :goto_158

    .line 76
    :cond_16
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->lastMs:J

    .line 78
    :try_start_18
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_1d

    .line 79
    return-void

    .line 81
    :cond_1d
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 83
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    .line 84
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v3, -0x1

    if-nez v2, :cond_2a

    move v2, v3

    goto :goto_30

    :cond_2a
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 85
    :goto_30
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    const/4 v4, 0x0

    if-lez v2, :cond_57

    .line 91
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 92
    instance-of v6, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v6, :cond_57

    .line 93
    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v3, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    .line 94
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v5

    .line 95
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileCountOf(I)I

    move-result v6

    .line 96
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRadarRange(I)F

    move-result v7

    .line 97
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->hasGun(I)Z

    move-result v8

    goto :goto_5b

    .line 100
    :cond_57
    const/4 v7, 0x0

    move v5, v4

    move v6, v5

    move v8, v6

    :goto_5b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    .line 101
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    .line 102
    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->dist2(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/province/Province;)I

    move-result v10

    .line 103
    invoke-static {v9, v1}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->isNeighbor(Laoc/kingdoms/lukasz/map/province/Province;I)Z

    move-result v9

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "T id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sk="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " own="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " tgt="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/2addr v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mrr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const/4 v1, 0x1

    if-eqz v8, :cond_f0

    move v2, v1

    goto :goto_f1

    :cond_f0
    move v2, v4

    :goto_f1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " d2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    if-eqz v9, :cond_108

    move v4, v1

    :cond_108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tmid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V
    :try_end_137
    .catchall {:try_start_18 .. :try_end_137} :catchall_138

    .line 113
    goto :goto_157

    .line 111
    :catchall_138
    move-exception p0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXC tick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileDiag;->log(Ljava/lang/String;)V

    .line 114
    :goto_157
    return-void

    .line 74
    :cond_158
    :goto_158
    return-void
.end method
