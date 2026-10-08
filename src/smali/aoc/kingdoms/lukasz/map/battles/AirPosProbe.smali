.class public final Laoc/kingdoms/lukasz/map/battles/AirPosProbe;
.super Ljava/lang/Object;
.source "AirPosProbe.java"


# ============================================================================
# 部队/空军图标位置：探针集合（r6d144，只读不改逻辑）
#
# 覆盖的"可疑点"：
#   ① updateArmyPosY 汇总   -> upy(...)   nUPY
#   ② 每次排布的单部队明细 -> upd(...)   nUP
#   ③ 停靠飞机绘制坐标     -> paf(...)   nPAF
#   ④ 部队屏幕坐标 X/Y     -> gx(...)/gy(...)  nGPX / nGPY
#   ⑤ 排布被重置处         -> uaw(...)   nUAW
#
# 全部走 dWrite（aircfg_diag.txt，免 debug 闸、免 500ms 节流）
# 热路径（每帧调用）先用 ok() 采样（全局 300ms 一次），避免日志洪水
# ============================================================================

.field private static last:J

.field private static cnt:I

.field private static sb:Ljava/lang/StringBuilder;

.field private static id0:I

.field private static id1:I

.field private static id2:I

.field private static id3:I

.field private static q0:I

.field private static q1:I

.field private static q2:I

.field private static q3:I

.field private static an:I

.field private static ldup:I


# 采样闸：距上次放行 ≥ nGapMs 才返回 true（并刷新时间戳）
.field private static pk:Ljava/lang/String;

.field private static pp:I

.method public static ok(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->cnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->cnt:I

    rem-int v1, v0, p0

    if-nez v1, :yes

    const/4 v2, 0x0

    return v2

    :yes

    const/4 v2, 0x1

    return v2
.end method


.method private static sb()Ljava/lang/StringBuilder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0



    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb:Ljava/lang/StringBuilder;

    if-nez v0, :have

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb:Ljava/lang/StringBuilder;

    :have

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method


.method private static declared-synchronized w(Ljava/lang/StringBuilder;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0



    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


# ① updateArmyPosY 汇总：prov, armiesSize, jFinal, airShiftY(-1 无), maxAbsShiftY, scale
.method public static declared-synchronized csf(III)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1
    const-string v2, "nCSF p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " air="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static declared-synchronized upx(IIII)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1
    const-string v2, "nUPX p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " air="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static up(I)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0
    const/4 v13, 0x0



    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-nez v0, :end

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :loop

    if-ge v5, v1, :end

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    if-nez v6, :next

    iget v7, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    move v9, v7

    if-ltz v9, :pos

    neg-int v9, v9

    :pos

    if-lt v4, v9, :nmax

    move v4, v9

    :nmax

    iget-object v9, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v9, :next

    const-string v10, "airhq_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :next

    iget v2, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    iget v3, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    iget v13, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    :next

    add-int/lit8 v5, v5, 0x1

    goto :loop

    :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "nUPY p="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " n="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " air="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ax="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
    return-void
.end method


# 排布重置点：nUAW k= sx= sy= sxs= sys=
.method public static uaw2(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 5

    if-nez p0, :g173_uaw2_0
    return-void
    :g173_uaw2_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0



    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nUAW k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sxs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method


# 位置采样：kind(0=部队X 1=部队Y 2=停靠飞机X 3=停靠飞机Y) prov value
.method public static ap(III)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v2, :safe




    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nAP k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
    :safe

    return-void
.end method

.method public static hit1()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit2()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit3()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit4()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit5()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit6()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit7()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

.method public static hit8()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method

# 起飞空窗探针：key, state, prev, at, heading（每 60 次采样一次，走 dWrite）
.method public static takeoff(Ljava/lang/String;IIIF)V
    .registers 10

    if-nez p0, :g173_takeoff_0
    return-void
    :g173_takeoff_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nTO k="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method


# ============================================================================
# r6d154 探针：飞机"叠两层"定位（纯只读；全部走 dWrite）
#   adp  = ProvinceDrawArmy$1.drawArmy（每支师被绘制）：id/绘制省/师自认省/DUP
#   pap  = AirMission.placeAirDivision（换省）：任务key vs 师实际key / 编制数
#   fkr  = AirDbgLog.airDrawAsPlane 摘假key分支
#   tkr  = AirMission.tickInvars 写回key分支（仅 old != new）
# ============================================================================

.method public static adp(Ljava/lang/Object;II)V
    .registers 16

    if-nez p0, :g173_adp_0
    return-void
    :g173_adp_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v1, :end

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :end

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->an:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->an:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    const/4 v5, 0x0

    const/4 v8, -0x1

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i0:I

    if-eq v3, v6, :d1

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q0:I

    if-eq p1, v7, :d1

    const/4 v5, 0x1

    move v8, v7

    :d1
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i1:I

    if-eq v3, v6, :d2

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q1:I

    if-eq p1, v7, :d2

    const/4 v5, 0x1

    move v8, v7

    :d2
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i2:I

    if-eq v3, v6, :d3

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q2:I

    if-eq p1, v7, :d3

    const/4 v5, 0x1

    move v8, v7

    :d3
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i3:I

    if-eq v3, v6, :d4

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q3:I

    if-eq p1, v7, :d4

    const/4 v5, 0x1

    move v8, v7

    :d4
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i2:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i3:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q2:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q3:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i1:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i2:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q1:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q2:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i0:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i1:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q0:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q1:I

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i0:I

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q0:I

    if-nez v5, :rt

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ldup:I

    if-eq v3, v6, :rt

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ldup:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nADPD n="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pNow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pOld="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void

    :rt
    rem-int/lit8 v6, v2, 0x40

    if-nez v6, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nADP n="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 16

    if-nez p0, :g173_pap_0
    return-void
    :g173_pap_0
    if-nez p1, :g173_pap_1
    return-void
    :g173_pap_1
    if-nez p2, :g173_pap_2
    return-void
    :g173_pap_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez p2, :end

    move-object v0, p2

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :noeq

    if-eqz p1, :noeq

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :noeq
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v5, -0x1

    if-eqz v4, :nor

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :nor
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nPAP id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " at="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " eq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " rg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dk="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static fkr(Ljava/lang/Object;)V
    .registers 8

    if-nez p0, :g173_fkr_0
    return-void
    :g173_fkr_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v4, -0x1

    if-eqz v3, :nor

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :nor
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nFKR id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " k="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method

.method public static tkr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-nez p0, :g173_tkr_0
    return-void
    :g173_tkr_0
    if-nez p1, :g173_tkr_1
    return-void
    :g173_tkr_1
    if-nez p2, :g173_tkr_2
    return-void
    :g173_tkr_2


    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-nez p1, :log

    if-nez p2, :log

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :end

    :log
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v5, -0x1

    if-eqz v4, :nor

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :nor
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nTKR id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " rg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static artD(Ljava/lang/String;IIII)V
    .registers 10

    if-nez p0, :g173_artD_0
    return-void
    :g173_artD_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :end

    if-ltz p1, :c1

    const/4 v0, 0x1

    goto :log

    :c1
    if-ltz p2, :c2

    const/4 v0, 0x1

    goto :log

    :c2
    const/16 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    :log
    const/4 v1, -0x2

    if-ltz p2, :g

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v1

    :g
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nART k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " g="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static pcg(ILjava/lang/Object;ILjava/lang/String;)V
    .registers 10

    if-nez p1, :g173_pcg_1
    return-void
    :g173_pcg_1
    if-nez p3, :g173_pcg_3
    return-void
    :g173_pcg_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :end

    move-object v0, p1

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    const/16 v1, 0x10

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v1

    if-eqz v1, :end

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nPCG p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " k="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static mk(I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nMK s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static aif(Ljava/lang/String;IIII)V
    .registers 10

    if-nez p0, :g173_aif_0
    return-void
    :g173_aif_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz p1, :c1

    const/4 v0, 0x1

    goto :log

    :c1
    const/16 v0, 0x10

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    :log
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nAIF src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " civ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " k="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static posD(IIIILjava/lang/Object;)V
    .registers 14

    if-nez p4, :g173_posD_4
    return-void
    :g173_posD_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p4, :end

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v1, :end

    # ① 重复绘制自检（同省同 key 连续出现 = 同一支师被画两次）
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pp:I

    if-eq p0, v2, :no_dup

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pk:Ljava/lang/String;

    if-nez v2, :no_dup

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :no_dup

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nPOSDUP p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :no_dup
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pp:I

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pk:Ljava/lang/String;

    # ② 常规采样：1/30；mapScale<0.75 时无条件
    const/4 v2, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v3, :sampled

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v6, v4, v5

    if-gez v6, :do_log

    :sampled
    const/16 v2, 0x1e

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v2

    if-eqz v2, :end

    :do_log
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nPOS p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v3, :nosc

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :nosc
    const-string v3, " sy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static safeUpd(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    :try_start_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :end
    return-void

    :catch_1
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->rtCatch(Ljava/lang/Throwable;)V

    return-void
.end method
