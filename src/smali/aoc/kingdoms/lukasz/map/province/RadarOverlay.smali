.class public final Laoc/kingdoms/lukasz/map/province/RadarOverlay;
.super Ljava/lang/Object;
.source "RadarOverlay.java"


# ============================================================================
# RadarOverlay —— 飞机雷达盘的**一次合成**：把所有任务的盘先画进离屏 FrameBuffer，
# 再用 alpha=0.1 整图贴一次 ⇒ 重叠处不再叠加变亮（与建筑雷达盘同口径）。
#
# 为什么是手写 smali（而不是走 tools/build_java.sh）：
#   本类要真调 libgdx 的 FrameBuffer / TextureRegion / SpriteBatch / GL20，
#   而 gen_java_stubs.py 把树外类型（libgdx 等）统一退化成 Object，
#   `fb.begin()` / `glClearColor(...)` 那一类调用在 javac 阶段就不成立（与 RadarDisc 同因）。
#   ⇒ 分支只有三处（ensure 的尺寸判等、begin/end 的 active 门、drawDisc 的降级门），
#     全部由 B25 的解释器用例真跑（事件序列 + 实参逐个断言），不靠正则自检。
#
# 为什么这样就不会变亮（数学）：
#   v39：每个任务画一次盘，每次 setColor(1,1,1,0.2) 做 alpha 混合
#        ⇒ 屏上像素 = 0.2·盘 + 0.8·底，叠 N 次 = (1-0.8^N)·盘 + 0.8^N·底（N 大就一片白）。
#   v40：FBO 内用 alpha=1.0 画（opaque）⇒ 第 2 次覆盖第 1 次是**饱和**，不是累加，
#        FBO 里一个像素只有 0 或 1；最后整图只用 0.1 混合**一次** ⇒ 与建筑盘一模一样：
#        「所有省份的盘烘进同一张地图纹理，最后整图画一次 α=0.1」（v41 起）。
#
# 保命（三道）：
#   1) ensure() 全程 try/catch：建 FrameBuffer 失败（老机型 / GL 版本 / 显存不足）
#      就把 fb/fbRegion 置 null 直接 return，绝不冒泡到渲染线程（照 RadarBitmap 的写法）；
#   2) begin() 只在 fb + fbRegion + 单位盘 region 三者都拿到时才把 active 置 true；
#   3) drawDisc() 只要 active 为 false（含上面任何一步失败）就**回退到 v39 的
#      RadarDisc->draw 逐盘绘制** —— 雷达圈绝不会因为 FBO 不可用而消失，最多退回
#      "重叠会变亮"的老样子。
# ============================================================================


# static fields
.field private static active:Z

.field public static scale:F

.field private static fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field private static fbH:I

.field private static fbRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static fbW:I


# direct methods
.method public static begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    # 幂等：FBO 只开一次（本方法在任务循环里被调，第一次成功后就 no-op）
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v0, :begin_go

    return-void

    :begin_go

    # r6d391：开一帧的离屏合成。p0 = SpriteBatch（调用点传的还是 v39 的 v14 那个副本）
    # 寄存器：v0 = 单位盘 region / FrameBuffer、v1 = fbRegion / GL20、v2..v5 = clear/颜色实参
    # 三处前置条件全过才 active=true；任一不满足就**什么都不做**（drawDisc 会走 v39 老路）

    # 自愈：上一次 begin 之后没走到 end（drawAircraftRadar 循环里抛异常被外层吞掉，
    # 或提前 goto 出方法）时 active 还是 true ⇒ FBO 仍绑着，接着画的一切都会进离屏、
    # 屏幕上表现为"冻住"。这里先把上一帧的 FBO 关回去并复原，再重新开。
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v0, :no_leak

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->end(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :no_leak
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    # 极性：单位盘 region 为 null（RadarDisc.ensure() 建失败）⇒ 放弃本次合成，走 v39 逐盘绘制
    if-eqz v0, :ret

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->ensure()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :ret

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :ret

    :try_start_0
    # 把屏幕这一批先 flush 掉，再切到离屏
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    # active 紧跟 fb.begin() 置位：之后 end() 一定会把 FBO 关掉并回到屏幕后缓冲，
    # 不留"FBO 还绑着"的半截状态（宁可合成一张空图，也不让后续绘制全画进 FBO 里看不见）
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    # FBO 清成全透明（0,0,0,0）—— 每帧从零开始，没有上一帧残影
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    const/16 v2, 0x4000    # GL20.GL_COLOR_BUFFER_BIT

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    # FBO 内绘制一律用**不透明** (1,1,1,1)：alpha=1 时后画的盘直接覆盖先画的盘
    # （src.a=1 ⇒ dst.a = 1·1 + dst.a·0 = 1），重叠像素饱和成同一个值，不会累加。
    const/high16 v2, 0x3f800000

    const/high16 v3, 0x3f800000

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :ret
    return-void

    :catch_0
    # 保命：渲染线程上抛异常 = 直接闪退，先吞掉。但若异常发生在 fb.begin() 之后
    # （GL 上下文丢失 / glClearColor 抛 NPE / sb.begin 抛异常），FBO 已经绑上了 ——
    # 不在这里关回去，后面整块画面都会画进离屏（屏幕上表现为"冻住"）。所以补一道兜底。
    move-exception v0

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v1, :catch_ret

    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v1, :catch_ret

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    :catch_ret
    return-void
.end method

.method public static drawDisc(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I

    # r6d391：画一个任务的雷达盘。几何与 v39 的 RadarDisc.draw **逐位一致**：
    #   x = cx-rx，y = -(cy+ry)，w = 2rx，h = 2ry
    # 两条路：
    #   active（FBO 开着）  ⇒ 用 alpha=1.0 画进 FBO，重叠饱和不变亮；
    #   !active（FBO 不可用）⇒ 回退 v39 的 RadarDisc->draw 逐盘绘制，雷达圈不消失。
    # 寄存器：p0=v6..p4=v10（各占 1 槽）；v0..v5 = 连续窗 {sb, region, x,y,w,h}（draw 要 6 个字，必须 /range）
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v0, :fallback

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p0

    # FBO 内：RGB=蓝盘色 0.2/0.2/1.0、Alpha=1.0（不透明，重叠饱和）
    # —— r6d480：单位盘改白色后，颜色由这里 tint；蓝盘输出与"贴图烘 0.2/0.2/1.0"逐位相同。
    #    α 只许出现在 end 里（那一个常量），drawDisc 里既不许 0.1 也不许 0.2。
    const v2, 0x3e4ccccd

    const v3, 0x3e4ccccd

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sub-int v2, p1, p3

    add-int v3, p2, p4

    neg-int v3, v3

    add-int v4, p3, p3

    add-int v5, p4, p4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void

    :fallback
    # 降级：FBO 不可用 / 单位盘没建出来 —— 原样走 v39 的逐盘绘制
    # （那条调用自己会 setColor(1,1,1,0.1) 并复原 WHITE；v41 起与合成层同一常量）
    invoke-static {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public static drawDiscAny(Ljava/lang/Object;IIII)V
    # r6d430：Java 侧只有 Object，这里 check-cast 成 SpriteBatch 再转发；begin 折叠在此
    .registers 6
    .param p0, "sb"    # Ljava/lang/Object;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I

    move-object v0, p0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDisc(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public static drawDiscColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I
    .param p5, "nRgb"   # I  (0xRRGGBB)

    # r6d480：按颜色画一个盘（蓝盘/防空红盘/飞机红盘共用）。
    # FBO 内：tint = 调用方颜色、α=1.0（不透明，重叠饱和）；FBO 不可用 ⇒ RadarDisc.drawTint 降级。
    # 寄存器：p0=v10..p5=v15；v0..v5 = 连续窗 {sb, region, x,y,w,h}；v6=1/255→1.0；v7/v8/v9 = R/G/B
    const v6, 0x3b808081    # 1/255（float）

    shr-int/lit8 v7, p5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v7, v6

    shr-int/lit8 v8, p5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float/2addr v8, v6

    and-int/lit16 v9, p5, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v0, :fallback

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p0

    const/high16 v6, 0x3f800000

    invoke-virtual {p0, v7, v8, v9, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sub-int v2, p1, p3

    add-int v3, p2, p4

    neg-int v3, v3

    add-int v4, p3, p3

    add-int v5, p4, p4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void

    :fallback
    # 降级：FBO 不可用 —— 逐盘画，颜色与 α 走 RadarDisc.drawTint（8 个实参需连续窗）
    move-object v2, p0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->drawTint(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFIIII)V

    return-void
.end method

.method public static drawRingColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I
    .param p5, "nRgb"   # I  (0xRRGGBB)

    # r6d480：按颜色画一个盘（蓝盘/防空红盘/飞机红盘共用）。
    # FBO 内：tint = 调用方颜色、α=1.0（不透明，重叠饱和）；FBO 不可用 ⇒ RadarDisc.drawTint 降级。
    # 寄存器：p0=v10..p5=v15；v0..v5 = 连续窗 {sb, region, x,y,w,h}；v6=1/255→1.0；v7/v8/v9 = R/G/B
    const v6, 0x3b808081    # 1/255（float）

    shr-int/lit8 v7, p5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    mul-float/2addr v7, v6

    shr-int/lit8 v8, p5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    mul-float/2addr v8, v6

    and-int/lit16 v9, p5, 0xff

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v0, :fallback

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->getRingRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p0

    const/high16 v6, 0x3f800000

    invoke-virtual {p0, v7, v8, v9, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sub-int v2, p1, p3

    add-int v3, p2, p4

    neg-int v3, v3

    add-int v4, p3, p3

    add-int v5, p4, p4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void

    :fallback
    # 降级：FBO 不可用 —— 逐盘画，颜色与 α 走 RadarDisc.drawTint（8 个实参需连续窗）
    move-object v2, p0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/province/RadarDisc;->drawTint(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFIIII)V

    return-void
.end method

.method public static drawDiscAnyColor(Ljava/lang/Object;IIIII)V
    # r6d480：Java 侧只有 Object ⇒ move-object 中转后再 check-cast（直接 check-cast p0 会被 lint 判红/真机 VerifyError）
    # 6 个实参必须连续 ⇒ 先搬进 v0..v5，再 invoke-static/range
    .registers 12
    .param p0, "sb"     # Ljava/lang/Object;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I
    .param p5, "nRgb"   # I

    move-object v0, p0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    return-void
.end method

.method public static drawRingAnyColor(Ljava/lang/Object;IIIII)V
    # r6d480：Java 侧只有 Object ⇒ move-object 中转后再 check-cast（直接 check-cast p0 会被 lint 判红/真机 VerifyError）
    # 6 个实参必须连续 ⇒ 先搬进 v0..v5，再 invoke-static/range
    .registers 12
    .param p0, "sb"     # Ljava/lang/Object;
    .param p1, "nCx"    # I
    .param p2, "nCy"    # I
    .param p3, "nRx"    # I
    .param p4, "nRy"    # I
    .param p5, "nRgb"   # I

    move-object v0, p0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawRingColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    return-void
.end method

.method public static end(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    # r6d391：收尾 —— 把 FBO 里的所有盘**整图合成一次**（alpha=0.1，v41），再回到屏幕。
    # 极性：active==false ⇒ 直接 return（begin 没成功打开过 FBO，绝不能碰后缓冲）
    # 寄存器：v0 = 开关/FrameBuffer/Color、v1 = fbRegion、v2/v3 = 原点、v4/v5 = 宽高
    #         draw 要 6 个字 {sb, region, x, y, w, h} ⇒ 用 v0..v5 连续窗 + /range
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    if-eqz v0, :ret

    # 先复位再合成：即使下面抛异常，本帧也不会二次进入（每帧只合成 1 次）
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    # fb.end() 会把 glViewport 重置成整块 backbuffer（GLFrameBuffer.end(0,0,backW,backH)），
    # letterbox / 分屏 / 悬浮窗下必须把视口还回去，否则连合成四边形本身都会错位。
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    if-eqz v1, :vp_ok

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    :vp_ok
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    # 整图合成：RGB=1、Alpha=0.1 —— 与建筑 RadarBitmap.draw 的蓝层同一常量（0x3dcccccd）
    const/high16 v0, 0x3f800000

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f800000

    const v3, 0x3d9fd659

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    # 铺满全屏（FBO 尺寸 = 屏幕尺寸，见 ensure）。fbRegion 在 ensure 里已经 flip(false,true)，
    # 把 FBO 纹理上下颠倒的 v 坐标翻回来，所以这里直接用 (0,0,w,h) 就是正立的。
    move-object v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v2, 0x0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    # 用完立刻复原，否则后续所有绘制都被 alpha 0.1 污染
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :ret
    return-void

    :catch_0
    # 保命：合成失败也要把颜色复原（照 RadarDisc.draw / RadarBitmap.draw 的 catch 写法）。
    # 另外必须补一道 fb.end()：异常若发生在 sb.end()（比如批已经不在 drawing 状态，
    # SpriteBatch.end() 会抛 IllegalStateException）就还没执行到上面的 fb.end()，
    # FBO 会一直绑着 ⇒ 后面整块画面都画进离屏、屏幕冻住。
    move-exception v0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v1, :catch_nowhite

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    :catch_nowhite
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private static ensure()V
    .registers 8

    # r6d391：按屏幕尺寸懒建离屏 FrameBuffer（RGBA8888、无深度）。每帧调用都无害：
    # 尺寸没变就直接 return（只多两次 Graphics->getWidth/getHeight 接口调用）。
    # 极性：fb != null && fbW == w && fbH == h ⇒ 已就绪、直接 return
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lez v1, :ret

    if-lez v2, :ret

    sget-object v3, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v3, :build

    sget v4, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbW:I

    if-ne v4, v1, :build

    sget v4, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbH:I

    if-ne v4, v2, :build

    return-void

    :build
    :try_start_0
    # 尺寸变了先放掉旧的，别每转一次屏就漏一张屏幕大的纹理
    if-eqz v3, :skip_dispose

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    :skip_dispose
    const/4 v4, 0x0

    sput-object v4, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sput-object v4, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    sput v5, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbW:I

    sput v5, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbH:I

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v5, 0x0    # 不需要深度缓冲

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v3, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v4

    # getColorBufferTexture 的声明返回类型是 GLTexture（FrameBuffer 泛型擦除），
    # 实际对象是 Texture ⇒ downcast 一次才能喂给 TextureRegion 的构造
    check-cast v4, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v5, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    # FBO 纹理在 GL 里是自下而上存的（v=0 是最后一行），而 SpriteBatch 把 v 贴到四边形上边
    # ⇒ 不翻会上下颠倒。这里翻一次、永久生效，end() 里直接用 (0,0,w,h) 铺满。
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    sput-object v5, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbW:I

    sput v2, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    # 保命：老机型 / GL 版本 / 显存不足建不出 FBO ⇒ 全部置 null 直接 return。
    # begin() 拿不到 fb/fbRegion 就不会置 active，drawDisc 于是整条回退 v39 逐盘绘制。
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fb:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbW:I

    sput v2, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->fbH:I

    :ret
    return-void
.end method
