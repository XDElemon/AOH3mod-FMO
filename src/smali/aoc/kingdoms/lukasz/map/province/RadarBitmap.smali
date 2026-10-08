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

    move-object/from16 v8, p0

    const-string v0, "AIRDBG"

    const-string v1, "RBM_DRAW_ENTER"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpReady:Z

    if-nez v0, :cond_11

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rebuild()V

    goto :goto_25

    :cond_11
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dirty:Z

    if-eqz v0, :cond_25

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rebuildWait:I

    if-gtz v0, :cond_21

    const/16 v0, 0x3c

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rebuildWait:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rebuild()V

    goto :goto_25

    :cond_21
    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rebuildWait:I

    :cond_25
    :goto_25
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->tex:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_85

    :try_start_29
    const/high16 v0, 0x3f800000    # R=1.0f（r6d194：原来误写成 const/4 整数1，浮点读出≈0 ⇒ 盘被乘黑）

    const/high16 v1, 0x3f800000    # G=1.0f

    const/high16 v2, 0x3f800000    # B=1.0f

    const v3, 0x3e4ccccd    # alpha

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v7, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sget v3, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v1

    mul-float v2, v2, v0

    move v8, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    sget v3, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v1

    mul-float v2, v2, v0

    move v9, v2

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    sget v3, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    move v10, v2

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    sget v3, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    move v11, v2

    add-float v9, v9, v11

    neg-float v9, v9

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V


    # r6d200：防空射程层（逐行自绘，红）——重叠不变亮
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :adskip

    const/high16 v1, 0x3f800000    # R=1.0f（r6d200fix：原写 const/4 整数1，浮点读出≈0 ⇒ 圈变黑）

    const/high16 v2, 0x3f800000    # G=1.0f

    const/high16 v3, 0x3f800000    # B=1.0f

    const v4, 0x3dcccccd    # AD层 alpha（参数文件 adcol.expected 行2）

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :adskip

    const-string v0, "AIRDBG"

    const-string v1, "RBM_DRAWN"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_85} :catch_86

    :cond_85
    :goto_85
    return-void

    :catch_86
    move-exception v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const-string v1, "AIRDBG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
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


    # r6d200：AD 射程层用同尺寸同格式的第二张 Pixmap
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

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

.field public static adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

.field public static probeN:I



.field public static adTex:Lcom/badlogic/gdx/graphics/Texture;

.field public static adRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

# ============================================================
# r6d200：防空射程"逐行自绘"层（红）
#   · 圆心 = 省中心（getCenterX_Real/getCenterY_Real）—— 与 AirDefense.inRange 同源
#   · 半径 = Real 的 R（有雷达=390 / 只有阵地=300）—— 与判定同源
#   · 纵向 = R × AirLat.f(省中心Y) —— 与判定的纬度口径同源
#   · 逐行填进同一张 Pixmap ⇒ 两圈重叠**不会变亮**
# ============================================================
.method public static refreshAd()V
    .registers 16

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :done

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    if-lez v1, :done

    sget v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    if-lez v1, :done

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    const v1, 0x3f4ccccd    # R

    const v2, 0x3e4ccccd    # G

    const v3, 0x3e4ccccd    # B

    const/high16 v4, 0x3f800000    # A=1.0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :finish

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v5, :finish

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :loop
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :finish

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v9

    if-eqz v9, :loop


    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    if-eqz v10, :loop

    # r6d203fix：与蓝圈同门 —— 照抄 refresh() 里的 isEnemyProvince 写法（同一函数、同一极性）

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->isEnemyProvince(Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v11


    # r6d205：只读探针 —— 记录本人的省/玩家 civ/门的真值（前 6 行）
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v13, :nopc

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    goto :havepc

    :nopc
    const/4 v13, -0x1

    :havepc
    invoke-static {v7, v12, v13, v11}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->probeGate(IIII)V

    if-nez v11, :loop

    const/16 v11, 0x64    # 100（base）

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v9

    if-eqz v9, :ad_add

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v9

    if-eqz v9, :ad_add

    goto :ad_done

    :ad_add
    const/16 v11, 0x82    # 130（base ×1.30，与判定同源）

    :ad_done
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v9

    sget v12, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sub-int/2addr v9, v12

    sget v12, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    mul-int/2addr v9, v12

    sget v12, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    div-int/2addr v9, v12

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    sub-int/2addr v12, v13

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    mul-int/2addr v12, v13

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    div-int/2addr v12, v13

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    mul-int v13, v11, v13

    sget v14, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    div-int/2addr v13, v14

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/battles/AirLat;->f(I)F

    move-result v15

    int-to-float v14, v11

    mul-float/2addr v14, v15

    sget v15, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    sget v15, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v0, v9, v12, v13, v14}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->drawRadarEllipse(Lcom/badlogic/gdx/graphics/Pixmap;IIII)V

    goto/16 :loop

    :finish
    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adTex:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :newtex

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    goto/16 :done

    :newtex
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adTex:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :done
    return-void
.end method



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

    const v1, 0x3e4ccccd    # R

    const v2, 0x3e4ccccd    # G

    const/high16 v3, 0x3f800000    # B

    const/high16 v4, 0x3f800000    # A（盘内不透明度，保持 1.0）

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v5, :cond_d7

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3b
    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->isEnemyProvince(Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v15

    if-nez v15, :cond_3b

    if-eqz v8, :cond_3b

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v9

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minX:I

    sub-int/2addr v9, v11

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    mul-int/2addr v9, v11

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    div-int/2addr v9, v11

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->minY:I

    sub-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpH:I

    mul-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeY:I

    div-int/2addr v10, v11

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v11

    const/16 v12, 0x190

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v11

    if-eqz v11, :cond_80

    const/16 v12, 0x960

    goto :goto_99

    :cond_80
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v11

    if-eqz v11, :cond_8d

    const/16 v12, 0x258

    goto :goto_99

    :cond_8d
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v11

    if-eqz v11, :cond_99

    const/16 v12, 0x12c

    :cond_99
    :goto_99
    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmpW:I

    mul-int/2addr v12, v11

    sget v11, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->mapScaleI:I

    sget v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->rangeX:I

    mul-int/2addr v11, v13

    div-int/2addr v12, v11

    const/4 v11, 0x1

    if-ge v12, v11, :cond_a6

    move v12, v11

    :cond_a6
    sget-object v13, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    move v0, v12

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v14

    int-to-float v14, v14

    const v15, 0x45866000    # 4300.0f

    sub-float v14, v14, v15

    div-float v14, v14, v15

    const v15, 0x3fc90fdb

    mul-float v14, v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v11, v14, v15

    if-lez v11, :cond_c7

    move v14, v15

    :cond_c7
    const/high16 v15, 0x3e800000    # 0.25f

    cmpl-float v11, v14, v15

    if-gez v11, :cond_ce

    move v14, v15

    :cond_ce
    int-to-float v12, v0

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-static {v13, v9, v10, v0, v12}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->drawRadarEllipse(Lcom/badlogic/gdx/graphics/Pixmap;IIII)V

    goto/16 :goto_3b

    :cond_d7
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->dbgPix()V


    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->refreshAd()V

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
