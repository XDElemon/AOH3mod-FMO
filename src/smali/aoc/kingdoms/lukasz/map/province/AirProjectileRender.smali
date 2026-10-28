.class public final Laoc/kingdoms/lukasz/map/province/AirProjectileRender;
.super Ljava/lang/Object;
.source "AirProjectileRender.smali"

# M3a（v117）：导弹弹体 + 尾迹绘制桥
#
# 三批连环翻车的教训（子代理离线真跑 + 装机包反汇编确证）：
#   1) `if-gtz count, :ret` 写反 —— "大于 0 就跳" ⇒ 有弹直接 return，一笔都不画；
#   2) `.registers 16` + 静态单参 ⇒ **p0 == v15**，把 v15 当临时寄存器会把 SpriteBatch 覆盖成 int，
#      校验器直接拒（VerifyError 被 AirUx 的 catch 吞掉，连日志都没有）；
#      本文件**不许出现 v15 / p0 的写入**。
#   3) Image.draw 族的 (x,y) 语义是落笔左上角 ⇒ 想画在中心要自己减半个尺寸。
#
# 视觉口径（用户定稿）：人字弹体 20px（国家色）；尾迹 24 段方块 6→2px、黄→暖白、无描边、首段贴死。
# 尾迹用 Images.pix（1×1 白图）拉伸成方块 —— 这是旧 msFxDrawTrail 验证过可见的路径。

.method public static drawAll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 16

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->prepare()I
    move-result v0

    # ★ count<=0 才返回（v113–v116 这里写成了 if-gtz = 有弹就 return）
    if-lez v0, :ret

    # 诊断：证明"确实进了绘制"（放在所有门之前）
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->logEnter(I)V

    # v120：不再走 ImageManager.getImage（真机证明取不到对象）；自己 loadTexture 缓存
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirProjTex;->get()Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v1

    # 尾迹用的 1×1 白图（Image 对象，旧导弹弹体走的也是它）
    sget-object v14, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    # 两张都拿不到才彻底不画
    if-nez v1, :chk_pix
    goto :have_img
    :chk_pix
    if-eqz v14, :no_body
    :have_img

    const/4 v2, 0x0

    :body_top
    if-ge v2, v0, :body_done

    # ---------- 尾迹 24 段 ----------
    if-eqz v14, :trail_skip
    const/4 v3, 0x0

    :trail_top
    const/16 v4, 0x18
    if-ge v3, v4, :trail_done

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_R:[F
    aget v4, v4, v3
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_G:[F
    aget v5, v5, v3
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_B:[F
    aget v6, v6, v3
    const/high16 v7, 0x3f800000    # 1.0f
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I
    aget v11, v4, v3
    div-int/lit8 v12, v11, 0x2

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F
    aget-object v4, v4, v2
    aget v4, v4, v3
    float-to-int v4, v4
    sub-int v9, v4, v12

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F
    aget-object v4, v4, v2
    aget v4, v4, v3
    float-to-int v4, v4
    sub-int v10, v4, v12

    move v12, v11
    move-object v7, v14
    move-object v8, p0
    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v3, v3, 0x1
    goto :trail_top

    :trail_done
    :trail_skip

    # ---------- 弹体：人字（两根 pix 箭杆，不依赖贴图）----------
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F
    aget v4, v4, v2
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F
    aget v5, v5, v2
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F
    aget v6, v6, v2
    const/high16 v7, 0x3f800000    # 1.0f
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    if-eqz v14, :body_done
    const/4 v3, 0x0

    :bar_top
    const/4 v4, 0x2
    if-ge v3, v4, :bar_done

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F
    aget-object v4, v4, v2
    aget v4, v4, v3
    float-to-int v4, v4
    const/4 v12, 0x2
    sub-int v9, v4, v12

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F
    aget-object v4, v4, v2
    aget v4, v4, v3
    float-to-int v4, v4
    const/16 v12, 0x8
    sub-int v10, v4, v12

    const/4 v11, 0x4
    const/16 v12, 0x10

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F
    aget-object v13, v13, v2
    aget v13, v13, v3

    move-object v7, v14
    move-object v8, p0
    invoke-virtual/range {v7 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v3, v3, 0x1
    goto :bar_top

    :bar_done
    add-int/lit8 v2, v2, 0x1
    goto :body_top

    :body_done
    const/high16 v4, 0x3f800000    # 1.0f
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->logDrawn()V
    return-void

    :no_body
    const-string v2, "nFX noimg"
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :ret
    return-void
.end method
