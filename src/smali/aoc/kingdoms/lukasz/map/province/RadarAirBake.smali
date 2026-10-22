.class public final Laoc/kingdoms/lukasz/map/province/RadarAirBake;
.super Ljava/lang/Object;
.source "RadarAirBake.java"


# ============================================================================
# RadarAirBake —— 飞机雷达盘（v42）：把 AirRadarBitmap.discs() 算好的盘**逐行扫描线**
# 填进 RadarBitmap 的**同一张**蓝层 Pixmap。
#
# 为什么这样就不可能消失 / 不会叠亮：
#   v39 每个任务画一次盘（每次 alpha 混合 ⇒ 重叠变亮）；
#   v40/v41 画进离屏 FrameBuffer 再整图合成，但合成四边形 y=0 起、高 +fbH，
#           而本作投影可视区间是 y ∈ [-GAME_HEIGHT, 0]（FBOProvincesBG.draw 传 -(posY+GAME_HEIGHT)）
#           ⇒ 合成画在屏幕上方 ⇒ 飞机盘完全不见，且 FBO 打开成功时降级路径按设计不触发；
#   v42 与建筑盘**同一条路**：所有盘逐行填进同一张地图 Pixmap（后填覆盖先填），
#           最后由 RadarBitmap.draw 整图画一次 α=0.1 ⇒ 同色、同 A、同 α、重叠天然不叠亮。
#
# 为什么是手写 smali（而不是走 tools/build_java.sh）：
#   本类要真调 libgdx 的 Pixmap.setColor / Pixmap.fillRectangle，而 gen_java_stubs.py
#   把树外类型（libgdx 等）统一退化成 Object，`pm.fillRectangle(...)` 在 javac 阶段就不成立
#   （与 v39 的 RadarDisc 同因，已登记 baseline/smali_exceptions.txt）。
#   ⇒ 业务逻辑（遍历任务 / 盘心 / 盘径 / 脏标记）全部在 Java 的 AirRadarBitmap 里，
#     本类只有一个循环 + 一次扫描线填充，没有极性、没有算术判定。
#
# 颜色/不透明度：与 RadarBitmap.refresh 的蓝层**逐位相同** —— (0.2, 0.2, 1.0, A=1.0)，
# 即 0x3e4ccccd / 0x3e4ccccd / 0x3f800000 / 0x3f800000（B26 会比对两边常量）。
# ============================================================================


.method public static bake(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)V
    .registers 22
    .param p0, "oPm"    # Lcom/badlogic/gdx/graphics/Pixmap;（= RadarBitmap->bmp，与建筑蓝层同一张）
    .param p1, "nBmpW"  # I
    .param p2, "nBmpH"  # I
    .param p3, "nMinX"  # I
    .param p4, "nMinY"  # I
    .param p5, "nRangeX"# I
    .param p6, "nRangeY"# I
    .param p7, "nMapScaleI" # I

    # 寄存器：p0..p7 = v14..v21；v0..v13 = 局部
    #   v0 = float[] 盘表 / v1 = 长度 / v2 = 下标 i
    #   v3..v6 = cx, cy, rx, ry ｜ v7 = dy ｜ v8..v12 = 扫描线临时量
    :try_start_0
    invoke-static/range {v15 .. v21}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->discs(IIIIIII)[F

    move-result-object v0

    if-eqz v0, :done

    array-length v1, v0

    if-lez v1, :done    # 盘表为空 ⇒ 什么都不画（写成 if-gtz 会把「有盘」也跳走）

    # 盘内颜色 = 建筑蓝层（RadarBitmap.refresh:1104-1112）逐位相同，A=1.0 ⇒ 重叠后填覆盖先填
    const v2, 0x3e4ccccd    # R = 0.2f

    const v3, 0x3e4ccccd    # G = 0.2f

    const/high16 v4, 0x3f800000    # B = 1.0f

    const/high16 v5, 0x3f800000    # A = 1.0f（盘内不透明度；透明度只由 RadarBitmap.draw 的 α 决定）

    invoke-virtual {v14, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    const/4 v2, 0x0    # i = 0

    :disc_loop
    add-int/lit8 v3, v2, 0x3

    if-ge v3, v1, :done    # i+3 >= 长度 ⇒ 没有完整的盘了

    aget v3, v0, v2

    float-to-int v3, v3    # cx

    add-int/lit8 v4, v2, 0x1

    aget v4, v0, v4

    float-to-int v4, v4    # cy

    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    float-to-int v5, v5    # rx

    add-int/lit8 v6, v2, 0x3

    aget v6, v0, v6

    float-to-int v6, v6    # ry

    # 扫描线填充椭圆（与 RadarBitmap.drawRadarEllipse 240-301 逐位同算法）：
    #   for dy in -ry..ry:  t = 1 - (dy/ry)^2;  t <= 0 ⇒ 跳过；
    #                       w = (int)(sqrt(t) * rx);  fillRectangle(cx-w, cy+dy, 2w, 1)
    neg-int v7, v6    # dy = -ry

    :row_loop
    if-gt v7, v6, :disc_next

    int-to-float v8, v7

    int-to-float v9, v6

    div-float v8, v8, v9

    mul-float v8, v8, v8    # (dy/ry)^2

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8    # t = 1 - (dy/ry)^2

    const/4 v10, 0x0

    cmpl-float v11, v8, v10

    if-lez v11, :row_next    # t <= 0（含 ry=0 的 NaN）⇒ 该行没有像素

    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v8, v9

    int-to-float v9, v5

    mul-float v8, v8, v9

    float-to-int v8, v8    # w

    sub-int v9, v3, v8    # x = cx - w

    add-int v10, v4, v7    # y = cy + dy

    add-int v11, v8, v8    # 2w

    const/4 v12, 0x1    # 高 1px（一行一条扫描线）

    invoke-virtual {v14, v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->fillRectangle(IIII)V

    :row_next
    add-int/lit8 v7, v7, 0x1

    goto :row_loop

    :disc_next
    add-int/lit8 v2, v2, 0x4

    goto :disc_loop

    :done
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    # 保命：渲染线程上抛异常 = 直接闪退。烘盘失败只让飞机盘这一层缺失，
    # 建筑盘与地图本体照常（RadarBitmap.refresh 自己的 catch 也不用兜这一层）。
    move-exception v0

    return-void
.end method
