.class public final Laoc/kingdoms/lukasz/map/battles/AirDefDiag;
.super Ljava/lang/Object;
.source "AirDefDiag.java"


# static fields
.field public static boot:Z

.field public static cap:I

.field public static pA:I

.field public static pM:I

.field public static pR:I

.field public static skip:I

.field public static tA:I

.field public static tM:I

.field public static tR:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanAll()V
    .registers 4

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->run(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    return-void

    :catch_3
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->logX(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static run(I)V
    .registers 8

    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->boot:Z

    if-nez v0, :cond_boot

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->boot:Z

    const-string v0, "nABOOT v=r6d257"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :cond_boot
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->cap:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->skip:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tA:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tR:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tM:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pA:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pR:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pM:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->mline(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pline(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->trunc()V

    return-void
.end method

.method private static trunc()V
    .registers 6

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->skip:I

    if-lez v0, :cond_end

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nADTRUNC n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :cond_end
    return-void
.end method

.method private static mline(I)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-static {v0, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_end

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v6, :cond_end

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_l
    if-ge v7, v3, :cond_end

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->live(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v10

    if-eqz v10, :cond_next

    add-int/lit8 v4, v4, 0x1

    iget v10, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v10, :cond_next

    add-int/lit8 v5, v5, 0x1

    :cond_next
    add-int/lit8 v7, v7, 0x1

    goto :goto_l

    :cond_end
    const-string v1, "all"

    invoke-static {v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "alive"

    invoke-static {v0, v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "dep"

    invoke-static {v0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "h1"

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I

    invoke-static {v0, v1, v11}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    sub-int v11, v4, v5

    const-string v1, "noDep"

    invoke-static {v0, v1, v11}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

.method private static pline(I)V
    .registers 12

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-lez v0, :cond_end

    sget v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    sget v9, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    sget v10, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    const/4 v1, 0x0

    :goto_l
    if-ge v1, v0, :cond_end

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_next

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ltz v8, :cond_skip_a

    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->cnt(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v4

    :cond_skip_a
    if-ltz v9, :cond_skip_r

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->cnt(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v5

    :cond_skip_r
    if-ltz v10, :cond_skip_m

    invoke-static {v2, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->cnt(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v6

    :cond_skip_m
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tA:I

    add-int/2addr v7, v4

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tA:I

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tR:I

    add-int/2addr v7, v5

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tR:I

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tM:I

    add-int/2addr v7, v6

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tM:I

    if-lez v4, :cond_pa

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pA:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pA:I

    :cond_pa
    if-lez v5, :cond_pr

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pR:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pR:I

    :cond_pr
    if-lez v6, :cond_pm

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pM:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pM:I

    :cond_pm
    if-lez v4, :cond_next

    invoke-static {v2, v3, v4, p0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->aline(Laoc/kingdoms/lukasz/map/province/Province;III)V

    :cond_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_l

    :cond_end
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->gline(I)V

    return-void
.end method

.method private static gline(I)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-static {v0, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "pTot"

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "aaa"

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tA:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "rad"

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tR:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "mid"

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->tM:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "pAAA"

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pA:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "pRad"

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pR:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "pMid"

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->pM:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

.method private static aline(Laoc/kingdoms/lukasz/map/province/Province;III)V
    .registers 14

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->cap:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_write

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->skip:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->skip:I

    return-void

    :cond_write
    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->cap:I

    const/4 v3, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_ap

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_ap

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    :cond_ap
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->inR(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nADA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "t"

    invoke-static {v6, v7, p3}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "c"

    invoke-static {v6, v7, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    const-string v7, "p"

    invoke-static {v6, v7, v0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "aaa"

    invoke-static {v6, v7, p2}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "A"

    invoke-static {v6, v7, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "inR"

    invoke-static {v6, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v8

    const v9, 0x186a0

    rem-int v0, v8, v9

    div-int v8, v8, v9

    const-string v7, "d"

    invoke-static {v6, v7, v0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "w"

    invoke-static {v6, v7, v8}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

.method private static inR(Laoc/kingdoms/lukasz/map/province/Province;I)I
    .registers 16

    const/4 v11, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_end

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :cond_end

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_l
    if-ge v3, v2, :cond_end

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->live(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v12

    if-eqz v12, :cond_next

    iget v9, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v9, :cond_next

    iget v12, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v12, v6, :cond_next

    if-eq v9, v5, :cond_count

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v9, v12, :cond_next

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    if-eqz v10, :cond_next

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v13

    sub-int/2addr v13, v8

    # --- r6d182 D3-mirror：与 AirDefense.inRange 同口径（R 300/450 + AirLat 椭圆） ---
    # v15 = p1（本方法声明了但全程未用的参数，作 R）；v10 在算完中心后即死，作布尔临时
    const/16 v15, 0x64    # 100（base）

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v10

    if-eqz v10, :d_inr_add
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v10

    if-nez v10, :d_inr_done
    :d_inr_add
    const/16 v15, 0x82    # 130（base ×1.30，与判定同源）

    :d_inr_done
    invoke-static {v12, v13, v15, v8}, Laoc/kingdoms/lukasz/map/battles/AirLat;->hit(IIII)Z

    move-result v12

    if-eqz v12, :cond_next

    :cond_count
    add-int/lit8 v11, v11, 0x1

    :cond_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_l

    :cond_end
    return v11
.end method

.method private static live(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_ret

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_ret

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ret

    const/4 v0, 0x1

    :cond_ret
    return v0
.end method

.method private static cnt(Laoc/kingdoms/lukasz/map/province/Province;I)I
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v0, :cond_ret

    const/4 v2, 0x0

    :goto_l
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_ret

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v4

    if-ne v4, p1, :cond_next

    add-int/lit8 v5, v5, 0x1

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_l

    :cond_ret
    return v5
.end method

.method private static kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 8

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static logX(Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_w

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_w
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


# ============================================================================
# r6d173 · 诊断补全：最近距离（打包值 = 宽域计数×100000 + 最近距离）
# ============================================================================
.method private static isq(I)I
    .registers 4

    const/4 v0, 0x0

    :l173
    mul-int v1, v0, v0

    if-ge v1, p0, :d173

    add-int/lit8 v0, v0, 0x1

    goto :l173

    :d173
    return v0
.end method


.method private static nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I
    .registers 16

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :ret173

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :ret173

    const/4 v2, 0x0

    :loop173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :ret173

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->live(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v12

    if-eqz v12, :next173

    iget v8, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v8, :next173

    iget v12, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v12, v5, :next173

    if-ne v8, v4, :far173

    const/4 v12, 0x0

    goto :acc173

    :far173
    sget v12, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v8, v12, :next173

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    if-eqz v9, :next173

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v13

    sub-int/2addr v13, v7

    mul-int/2addr v12, v12

    mul-int/2addr v13, v13

    add-int/2addr v12, v13

    :acc173
    const v13, 0xc5c10

    if-gt v12, v13, :nw173

    add-int/lit8 v10, v10, 0x1

    :nw173
    if-gez v11, :cmp173

    move v11, v12

    goto :next173

    :cmp173
    if-ge v12, v11, :next173

    move v11, v12

    goto :next173

    :next173
    add-int/lit8 v2, v2, 0x1

    goto :loop173

    :ret173
    const v12, 0x186a0

    mul-int/2addr v10, v12

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->isq(I)I

    move-result v12

    add-int/2addr v10, v12

    return v10
.end method
