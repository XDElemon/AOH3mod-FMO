.class public final Laoc/kingdoms/lukasz/map/province/RadarDisc;
.super Ljava/lang/Object;
.source "RadarDisc.java"


# ============================================================================
# RadarDisc —— 飞机雷达盘：**复用建筑那套"扫描线填充椭圆盘"**，不再用 radarFill.png 贴图
#
# 为什么是手写 smali（而不是走 tools/build_java.sh）：
#   本类要真调 libgdx 的 Pixmap / Texture / TextureRegion / SpriteBatch，
#   而 gen_java_stubs.py 把树外类型（libgdx 等）统一退化成 Object，
#   `pm.fillRectangle(...)` 那一类调用在 javac 阶段就不成立。
#   ⇒ 这是"无分支的绘图原语"（与 RadarBitmap.drawRadarEllipse 同构），
#     由 B24 的解释器用例真跑（颜色/alpha/255 行扫描线/纹理只建一次），不靠正则自检。
#
# 与建筑的等价性（用户口径："颜色和透明度都走一样的，唯一区别可能就是飞机会动"）：
#   1) 盘内颜色 (0.2, 0.2, 1.0, 1.0) —— 与 RadarBitmap.refresh() 蓝层一致；
#   2) 绘制 alpha 0x3dcccccd = 0.1 —— 与 RadarBitmap.draw() / RadarOverlay.end 一致；
#   3) 盘 = 逐行 Pixmap.fillRectangle 的椭圆（不是贴图），数学上等价于逐行填充椭圆。
#   唯一区别：飞机在地图上移动 ⇒ 不能烘整张地图，改烘**一张单位盘纹理**（懒建、只建一次），
#   绘制时按 rx×ry 缩放 ⇒ 每次绘制只是 1 个四边形，成本与建筑的单贴图绘制相同。
#   不做多层 / 不做渐变 / 不做脉动（不许 currentTimeMillis / nanoTime）。
# ============================================================================


# static fields
.field private static region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static tex:Lcom/badlogic/gdx/graphics/Texture;

# v78：单位**环**纹理（内径 117/127 ≈ 92%，环宽 ≈ 半径 8%）—— 防空红圈改描边用
.field private static ringRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static ringTex:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public static getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 1

    # r6d391：单位盘 TextureRegion 的**唯一**出口（v40 的 RadarOverlay 拿它去离屏合成 ——
    # 不复制第二份纹理）。先 ensure()：让"第一帧就离屏合成"成立，不必先走一帧 v39 老路。
    # 建失败时 ensure 内部把 region 置 null，这里如实返回 null ⇒ RadarOverlay.begin()
    # 不会激活、drawDisc 回退 RadarDisc->draw（雷达圈不会消失）。
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ensure()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarDisc;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public static draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I

    # r6d480：单位盘改白色后，蓝盘颜色由 tint 决定 —— 本方法只是"蓝盘色 + 共享 α"的别名。
    # 8 个实参必须连续 ⇒ 用 v3..v10 + invoke-static/range（非 range 形式最多 5 个寄存器）
    move-object v3, p0

    const v4, 0x3e4ccccd    # R=0.2f（蓝盘色，与 FBO 路径 drawDisc 同值）

    const v5, 0x3e4ccccd    # G=0.2f

    const/high16 v6, 0x3f800000    # B=1.0f

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v3 .. v10}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->drawTint(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFIIII)V

    return-void
.end method

.method public static drawTint(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFIIII)V
    .registers 17
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nR"     # F
    .param p2, "nG"     # F
    .param p3, "nB"     # F
    .param p4, "nCx"    # I
    .param p5, "nCy"    # I
    .param p6, "nRx"    # I
    .param p7, "nRy"    # I

    # r6d480：降级路径（FBO 不可用）——几何与 alpha 与 FBO 路径逐位一致，只是颜色由调用方给。
    # 寄存器：p0=v9..p7=v16；v0..v5 = 连续窗 {sb, region, x,y,w,h}；v6 = alpha；v7 = catch 变量
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ensure()V

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_restore

    move-object v0, p0

    const v6, 0x3d9fd659    # alpha：与 RadarOverlay.end() 合成层同一常量（全树恰好 2 处）

    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sub-int v2, p4, p6

    add-int v3, p5, p7

    neg-int v3, v3

    add-int v4, p6, p6

    add-int v5, p7, p7

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_restore
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v7

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static getRingRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 1

    # v78：单位环纹理的唯一出口。与 getRegion() 同构：懒建、只建一次；
    # 建失败置 null ⇒ 调用方（RadarOverlay.drawRingColor）会回退成实心盘。
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ensureRing()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ringRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method private static ensureRing()V
    .registers 6

    # v78：懒建单位环（256×256）——白盘 fillCircle(127) 后，用透明色挖掉
    # fillCircle(117) 的芯 ⇒ 环宽 10px ≈ 半径的 8%。
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ringTex:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :ret

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v1, 0x100

    const/16 v2, 0x100

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    # 白色实心盘（与单位盘同色：颜色由绘制时 tint 决定）
    const/16 v1, 0x7f

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->fillCircle(III)V

    # 挖芯：全透明
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->fillCircle(III)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ringTex:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ringRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ringTex:Lcom/badlogic/gdx/graphics/Texture;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->ringRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
    return-void
.end method

.method private static ensure()V
    .registers 12

    # r6d390：懒建单位盘纹理（256×256）——**只建一次**，且必须在渲染线程首次调用内建
    # （不在 <clinit>、不在事件回调里建 GL 纹理）
    # 极性：tex != null ⇒ 直接 return（已建过）
    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarDisc;->tex:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :ret

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v1, 0x100

    const/16 v2, 0x100

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    # 不混合：逐行直接写穿，盘内 alpha 恒为 1（重叠行不会越叠越浓）
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    # r6d480：单位盘改**白色**，颜色改由绘制时的 tint 决定
    # （蓝盘 tint 0.2/0.2/1.0、防空红盘 1.0/0.2/0.2、飞机红盘同接口任意色）
    # 255×0.2=51，与原先"贴图直接烘 0.2/0.2/1.0"逐位一致 ⇒ 蓝盘输出不变。
    const/high16 v1, 0x3f800000    # R = 1.0f

    const/high16 v2, 0x3f800000    # G = 1.0f

    const/high16 v3, 0x3f800000    # B = 1.0f

    const/high16 v4, 0x3f800000    # A = 1.0f（盘内不透明度，保持 1.0）

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    # 逐行扫描线填充椭圆（照 RadarBitmap.drawRadarEllipse 240-301 的算法）：
    #   for dy in -127..127:  t = 1 - (dy/127)^2;  t<=0 ⇒ 跳过;
    #                         w = (int)(sqrt(t)*127);  fillRectangle(127-w, 127+dy, 2w, 1)
    const/16 v6, 0x7f    # 半径 = 127（256 纹理的一半，四周各留 1px 不越界）

    const/16 v5, -0x7f    # dy = -127

    :loop_dy
    if-gt v5, v6, :done

    int-to-float v7, v5

    int-to-float v8, v6

    div-float v7, v7, v8

    mul-float v7, v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7    # t = 1 - (dy/127)^2

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :next_dy    # t <= 0 ⇒ 该行没有像素

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-float v9, v6

    mul-float v8, v8, v9

    float-to-int v8, v8    # w

    sub-int v9, v6, v8    # x = 127 - w

    add-int v10, v6, v5    # y = 127 + dy

    add-int v11, v8, v8    # 2w

    const/4 v7, 0x1    # 高 = 1（一行一条扫描线）

    invoke-virtual {v0, v9, v10, v11, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->fillRectangle(IIII)V

    :next_dy
    add-int/lit8 v5, v5, 0x1

    goto :loop_dy

    :done
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->tex:Lcom/badlogic/gdx/graphics/Texture;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/RadarDisc;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    # 保命：建纹理失败就置 null 并直接 return（本帧不画盘，绝不冒泡到渲染线程）
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->tex:Lcom/badlogic/gdx/graphics/Texture;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarDisc;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :ret
    return-void
.end method
