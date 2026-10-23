.class public final Laoc/kingdoms/lukasz/map/province/RadarBitmap;
.super Ljava/lang/Object;
.source "RadarBitmap.java"


# static fields
.field private static bmp:Lcom/badlogic/gdx/graphics/Pixmap;

.field private static bmpH:I

.field private static bmpReady:Z

.field private static bmpW:I

.field private static dirty:Z

.field private static mapScaleI:I

.field private static maxX:I

.field private static maxY:I

.field private static minX:I

.field private static minY:I

.field private static rangeX:I

.field private static rangeY:I

.field private static rebuildWait:I

.field private static region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static tex:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public static draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    # r6d500：建筑蓝盘 / 飞机盘 / 防空红盘**全部**改走 RadarOverlay 的离屏 FBO，
    # 本类不再画任何东西；连 rebuild 的 16MB Pixmap 也不再需要（没人调用 ⇒ 不会分配）。
    #
    # 起因：v46 删蓝层、v48 删红层时都留下过"绘制调用删了、move-object 中转没删"的半截块，
    # 汇编能过、静态闸门也能过，但 ART 校验器会判 VerifyError
    # （v49 一建雷达建筑就闪退：copy-reference v7<-v0 type=Float）。
    # ⇒ 本方法现在**一个寄存器操作都没有**，B30 闸门盯着。
    return-void
.end method

.method private static drawRadarEllipse(Lcom/badlogic/gdx/graphics/Pixmap;IIII)V
    .registers 12

    const/4 v0, 0x0

    neg-int v1, p4

    :goto_2
    if-gt v1, p4, :cond_2b

    int-to-float v2, v1

    int-to-float v3, p4

    div-float v2, v2, v3

    mul-float v2, v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/4 v4, 0x0

    cmpl-float v6, v2, v4

    if-lez v6, :cond_28

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v6, p3

    mul-float v4, v4, v6

    float-to-int v4, v4

    neg-int v6, v4

    add-int v6, v6, p1

    add-int v5, p2, v1

    shl-int/lit8 v4, v4, 0x1

    const/4 v0, 0x1

    invoke-virtual {p0, v6, v5, v4, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->fillRectangle(IIII)V

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2b
    return-void
.end method

.method private static initBitmap()V
    .registers 8

    const v0, 0x7fffffff

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxX:I

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v0, :cond_114

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_68

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v3, :cond_65

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v4

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    if-gt v4, v6, :cond_2f

    sput v4, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    :cond_2f
    sget v6, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    if-gt v5, v6, :cond_35

    sput v5, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    :cond_35
    sget v6, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxX:I

    if-le v4, v6, :cond_3b

    sput v4, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxX:I

    :cond_3b
    sget v6, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxY:I

    if-le v5, v6, :cond_41

    sput v5, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxY:I

    :cond_41
    if-nez v2, :cond_65

    const-string v0, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RBM_IB_P0 cx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_68
    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RBM_IB_DONE size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxX:I

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxY:I

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_a2

    sput v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    :cond_a2
    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    const/16 v1, 0x800

    if-gt v0, v1, :cond_aa

    sput v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    :cond_aa
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;



    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_bf

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I

    :cond_bf
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpReady:Z

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RBM_INIT minX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->maxX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rangeX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rangeY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nprov="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v2, :cond_105

    const/4 v2, 0x0

    goto :goto_109

    :cond_105
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    return-void
.end method

# ============================================================
# r6d205（只读探针）：把"玩家门"的真值打出来
#   nADG p=<省id> c=<省civ> pc=<player.civ> e=<isEnemyProvince>
#   只打前 6 行（probeN 限流），走 dWrite（免节流）
# ============================================================
.method public static probeGate(IIII)V
    .registers 12

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeN:I

    const/4 v1, 0x6

    if-ge v0, v1, :skip

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nADG p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeN:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeN:I

    :skip
    return-void
.end method



.method public static dbgPix()V
    .registers 8

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :done

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    const/4 v3, 0x0

    :yloop
    if-ge v3, v2, :none

    const/4 v4, 0x0

    :xloop
    if-ge v4, v1, :ynext

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x18

    if-eqz v6, :xnext

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nRBM px="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void

    :xnext
    add-int/lit8 v4, v4, 0x8

    goto/16 :xloop

    :ynext
    add-int/lit8 v3, v3, 0x8

    goto/16 :yloop

    :none
    const-string v0, "nRBM pxnone"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :done
    return-void
.end method


.field public static probeN:I





# r6d480：red 层（refreshAd/adBmp/adTex/adRegion）已整体删除 —— 改由 AirRadarAD 每帧喂 RadarOverlay 的 FBO




.method private static isEnemyProvince(Laoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 3

    const/4 v0, 0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :cond_e

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    if-ne v1, p0, :cond_e

    const/4 v0, 0x0

    :cond_e
    return v0
.end method

.method public static markDirty()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dirty:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_e

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogRefresh()V

    :cond_e
    return-void
.end method

.method private static rebuild()V
    .registers 2

    const-string v0, "AIRDBG"

    const-string v1, "RBM_REBUILD"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpReady:Z

    if-nez v0, :cond_e

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->initBitmap()V

    :cond_e
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->refresh()V

    return-void
.end method

.method private static refresh()V
    .registers 16

    const-string v0, "AIRDBG"

    const-string v1, "RBM_REFRESH_START"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    :try_start_9
    if-gtz v0, :cond_12

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->initBitmap()V

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    if-lez v0, :cond_101

    :cond_12
    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    if-lez v0, :cond_101

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :cond_101

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    :cond_d7
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dbgPix()V



    # r6d402（v42）：飞机雷达盘并进**同一张**蓝层 Pixmap —— 与建筑盘同色同 A、同一次整图绘制
    # （下面 tex.draw 一次上传、draw() 里 α=0.1 画一次）⇒ 飞机盘 = 建筑盘，重叠天然不叠亮。
    # 盘心/盘径/脏标记在 Java 的 AirRadarBitmap 里，逐行填充在 RadarAirBake 里。
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    sget v3, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sget v4, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    sget v5, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    sget v6, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    sget v7, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I


    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :cond_ee

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_f7

    :cond_ee
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    :goto_f7
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dirty:Z

    const-string v0, "AIRDBG"

    const-string v1, "RBM_REFRESH_DONE"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_101} :catch_102

    :cond_101
    return-void

    :catch_102
    move-exception v0

    const-string v1, "AIRDBG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
