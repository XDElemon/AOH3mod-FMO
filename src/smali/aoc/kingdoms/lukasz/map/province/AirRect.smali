.class public final Laoc/kingdoms/lukasz/map/province/AirRect;
.super Ljava/lang/Object;
.source "AirRect.java"

# 1×1 白色纹理 + 纯色矩形填充（v85）。
# 用途：CPU 算好"被裁剪后的扫描行"后，用这些矩形拼出圆盘的可见部分。
# 为什么不走 stencil：v84 证明带 stencil 的 FBO 在本机建不完整（整帧画进去等于没画）。
# 手写 smali 的理由与 RadarOverlay 相同（libgdx 在 Java 桩里是 Object）。

.field private static region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static tex:Lcom/badlogic/gdx/graphics/Texture;


.method private static ensure()V
    .registers 5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirRect;->tex:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :ret

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirRect;->tex:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/AirRect;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirRect;->tex:Lcom/badlogic/gdx/graphics/Texture;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirRect;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
    return-void
.end method


.method public static fill(Ljava/lang/Object;IIIII)V
    .registers 14
    .param p0, "sb"   # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "x"    # I
    .param p2, "y"    # I  屏幕顶往下的 y
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "rgb"  # I  (0xRRGGBB)

    if-lez p3, :ret

    if-lez p4, :ret

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirRect;->ensure()V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirRect;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :ret

    move-object v0, p0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    # color = rgb/255，alpha = 1（FBO 内不透明覆盖，与盘面一致）
    const v2, 0x3b808081    # 1/255

    shr-int/lit8 v3, p5, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v2

    shr-int/lit8 v4, p5, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v2

    and-int/lit16 v5, p5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v6, 0x3f800000

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sub-int v2, p1, p3

    int-to-float v2, v2

    add-int v3, p2, p4

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :ret
    return-void
.end method
