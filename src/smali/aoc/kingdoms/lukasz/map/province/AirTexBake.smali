.class public final Laoc/kingdoms/lukasz/map/province/AirTexBake;
.super Ljava/lang/Object;
.source "AirTexBake.java"

# 雷达盘单位贴图（v82）：
#   · fabric      = 盘面织物（淡填充 + 亮描边），静态，只建一次
#   · sweepFrames = **预烘一圈 72 张**扫描扇（每 5°），运行时按角度取一张直接拉伸绘制
# 为什么预烘而不是每帧重烘：v79-v81 证明「每帧 re-bake + Texture.draw 上传」在真机上
# 不可靠（只有角度绕回 0 时视觉上跳一下）。预烘没有上传、没有旋转、没有缓存比较，
# 物理上不可能卡住；代价是 72 张 48×48 纹理（≈0.66 MB）。
# 像素值由 Java AirRadarTex 纯数学算，本类只负责建纹理与落笔。

.field private static fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static fabricT:Lcom/badlogic/gdx/graphics/Texture;

.field private static sweepFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static sweepReady:Z


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
    .registers 15

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepReady:Z

    if-eqz v0, :ret

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepReady:Z

    :try_start_0
    # 5° 一帧，共 72 帧，覆盖 0..355°
    const/16 v0, 0x48

    new-array v1, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    :loop
    if-ge v2, v0, :done

    int-to-float v3, v2

    const v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    const/16 v5, 0x30       # 48×48

    const v6, 0x42d20000    # 105.0f

    const v7, 0x43700000    # 240.0f

    invoke-static {v5, v6, v7, v3}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->sweep(IFFF)[I

    move-result-object v8

    const/16 v9, 0x30

    const/16 v10, 0x30

    invoke-static {v8, v9, v10}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->bake([III)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    if-eqz v11, :next

    aput-object v11, v1, v2

    :next
    add-int/lit8 v2, v2, 0x1

    goto :loop

    :done
    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
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

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->ensureSweep()V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :ret

    # 当前角度 → 第几帧（5° 一帧）
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->rotation()F

    move-result v2

    const v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    array-length v4, v1

    rem-int v2, v2, v4

    aget-object v1, v1, v2

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
