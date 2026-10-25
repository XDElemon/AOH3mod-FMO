.class public final Laoc/kingdoms/lukasz/map/province/AirTexBake;
.super Ljava/lang/Object;
.source "AirTexBake.java"

# 雷达盘单位贴图（v79）：
#   · fabric = 盘面织物（淡填充 + 亮描边），静态，只建一次
#   · sweep  = 扫描扇面，**每帧按当前角度重烘一张小图**（64×64）再拉伸绘制
# 像素值由 Java AirRadarTex 纯数学算（libgdx 在 Java 桩里是 Object，Java 造不了 Pixmap）。
# 手写 smali 的理由与 RadarDisc/RadarOverlay 相同，已登记 baseline/smali_exceptions.txt。

.field private static fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static fabricT:Lcom/badlogic/gdx/graphics/Texture;

.field private static sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static sweepT:Lcom/badlogic/gdx/graphics/Texture;

.field private static sweepPm:Lcom/badlogic/gdx/graphics/Pixmap;

# 上一次烘焙用的角度（同一帧内所有盘共用，避免每个盘各烘一次）
.field private static lastBaked:F


.method public static getFabricRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->ensureFabric()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method private static ensureFabric()V
    .registers 5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricT:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :ret

    :try_start_0
    const/16 v0, 0x100

    const/16 v1, 0x52

    const/16 v2, 0xff

    const v3, 0x3f5c28f6    # 0.86f

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->fabric(IIIF)[I

    move-result-object v0

    const/16 v1, 0x100

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->bake([III)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    if-eqz v0, :fail

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricT:Lcom/badlogic/gdx/graphics/Texture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :fail
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricT:Lcom/badlogic/gdx/graphics/Texture;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
    return-void
.end method

.method private static ensureSweep()V
    .registers 5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepT:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :ret

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v1, 0x40

    const/16 v2, 0x40

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepPm:Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepT:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->lastBaked:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepT:Lcom/badlogic/gdx/graphics/Texture;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepPm:Lcom/badlogic/gdx/graphics/Pixmap;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
    return-void
.end method

.method private static updateSweep(F)V
    .registers 12
    .param p0, "angle"    # F

    # 同一帧内所有盘共用一次烘焙：角度没变直接返回
    sget v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->lastBaked:F

    cmpl-float v0, v0, p0

    if-nez v0, :ret

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->ensureSweep()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepPm:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :ret

    :try_start_0
    const/16 v1, 0x40

    const/high16 v2, 0x42d20000    # 105.0f

    const/high16 v3, 0x43700000    # 240.0f

    invoke-static {v1, v2, v3, p0}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->sweep(IFFF)[I

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x1000

    :loop
    if-ge v5, v6, :done

    rem-int v7, v5, v1

    div-int v8, v5, v1

    aget v9, v4, v5

    invoke-virtual {v0, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :loop

    :done
    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepT:Lcom/badlogic/gdx/graphics/Texture;

    # 注意：p0（角度）在本方法里 = v11，绝不能用 v11 当临时寄存器（会把角度抹成 0）
    const/4 v5, 0x0

    invoke-virtual {v10, v0, v5, v5}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    sput p0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->lastBaked:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :ret
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static bake([III)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 10
    .param p0, "px"    # [I
    .param p1, "w"     # I
    .param p2, "h"     # I

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v1, 0x0

    mul-int v2, p1, p2

    :loop
    if-ge v1, v2, :done

    rem-int v3, v1, p1

    div-int v4, v1, p1

    aget v5, p0, v1

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    add-int/lit8 v1, v1, 0x1

    goto :loop

    :done
    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v6, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v7, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static drawSweep(Ljava/lang/Object;IIII)V
    .registers 16
    .param p0, "sb"   # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "cx"   # I
    .param p2, "cy"   # I
    .param p3, "rx"   # I
    .param p4, "ry"   # I

    # 扇形在纹理空间里烘（天然是椭圆），**不旋转**，直接拉伸到盘大小 ⇒ 不会露出底下的盘
    # 整段兜异常：扫描扇画不出来可以，但不能连累盘面/后续绘制
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->rotation()F

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->updateSweep(F)V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :ret

    move-object v0, p0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/high16 v8, 0x3f800000

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sub-int v2, p1, p3

    int-to-float v2, v2

    add-int v3, p2, p4

    neg-int v3, v3

    int-to-float v3, v3

    add-int v4, p3, p3

    int-to-float v4, v4

    add-int v5, p4, p4

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :ret
    return-void

    :catch_0
    move-exception v0

    return-void
.end method
