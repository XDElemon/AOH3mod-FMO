.class public final Laoc/kingdoms/lukasz/map/province/AirTexBake;
.super Ljava/lang/Object;
.source "AirTexBake.java"

# 雷达盘单位贴图的烘焙与旋转绘制（v79）。
# 像素值由 Java AirRadarTex 纯数学算出（libgdx 在 Java 桩里是 Object，Java 造不了 Pixmap），
# 本类只做两件事：把 int[] 填进 Pixmap 建成 TextureRegion；每帧按时间旋转画扇面。
# 手写 smali 的理由与 RadarOverlay/RadarDisc 相同，已登记 baseline/smali_exceptions.txt。

# static fields
.field private static fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static fabricT:Lcom/badlogic/gdx/graphics/Texture;

.field private static sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static sweepT:Lcom/badlogic/gdx/graphics/Texture;

# 盘面尺寸
.field private static final SIZE:I = 0x100

# 盘面织物参数：中心 0.32 淡填充，0.86 半径起过渡到亮描边
.field private static final BODY_A:I = 0x52

.field private static final RIM_A:I = 0xff

# 扫描扇面：拖尾 105°、前沿 alpha 0.94
.field private static final SPAN:F = 105.0f

.field private static final SWEEP_A:F = 240.0f


.method public static getFabricRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->ensureFabric()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public static getSweepRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->ensureSweep()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :fail

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->fabricT:Lcom/badlogic/gdx/graphics/Texture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ret

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
    const/16 v0, 0x100

    const/high16 v1, 0x42d20000    # 105.0f

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->sweep(IFF)[I

    move-result-object v0

    const/16 v1, 0x100

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->bake([III)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :fail

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepT:Lcom/badlogic/gdx/graphics/Texture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ret

    :catch_0
    move-exception v0

    :fail
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepT:Lcom/badlogic/gdx/graphics/Texture;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
    return-void
.end method

.method private static bake([III)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 10
    .param p0, "px"    # [I
    .param p1, "w"     # I
    .param p2, "h"     # I

    # 逐像素填 Pixmap → Texture → TextureRegion（一次性，建好即缓存）
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

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirTexBake;->ensureSweep()V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirTexBake;->sweepR:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :ret

    move-object v0, p0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/high16 v8, 0x3f800000

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirRadarTex;->rotation()F

    move-result v10

    sub-int v2, p1, p3

    int-to-float v2, v2

    add-int v3, p2, p4

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, p3

    int-to-float v5, p4

    add-int v6, p3, p3

    int-to-float v6, v6

    add-int v7, p4, p4

    int-to-float v7, v7

    move v9, v8

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :ret
    return-void
.end method
