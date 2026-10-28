.class public final Laoc/kingdoms/lukasz/map/province/AirProjectileRender;
.super Ljava/lang/Object;
.source "AirProjectileRender.smali"

# M3a（v113/v114）：导弹弹体 + 尾迹绘制桥
# 数值全部由 AirProjectileFx.prepare() 算好；本类只做 setColor + Image.drawFullCenter。
#
# 寄存器约定（.registers 16）：
#   v0 count / v1 Image / v2 弹下标 / v3 尾迹下标 / v4..v6 颜色 / v7 调用用 Image
#   v8 = SpriteBatch / v9 = x / v10 = y / v11 = w / v12 = h / v13 = rotation(float)
#   v14/v15 = 取数组用的临时 ⇒ 调用范围固定 {v7 .. v13}（receiver=Image + 6 个参数）
#   少一个寄存器或 receiver 传错（传成 SpriteBatch）就会 VerifyError / 画不出来

.method public static drawAll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 16

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->prepare()I
    move-result v0
    if-gtz v0, :ret

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->imageId()I
    move-result v1
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v1
    if-eqz v1, :skip_arrow
    const/4 v2, 0x0
    goto :body_top
    :skip_arrow
    # 贴图取不到（或 id 越界抛异常）——打一条日志，跳过弹体/尾迹，但仍画对照圆环
    const-string v14, "nFX noimg"
    invoke-static {v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const/4 v2, 0x0
    goto :body_done

    const/4 v2, 0x0

    :body_top
    if-ge v2, v0, :body_done

    # 本发弹的旋转角（尾迹与弹体共用）
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F
    aget v13, v14, v2

    const/4 v3, 0x0

    :trail_top
    const/16 v14, 0x18
    if-ge v3, v14, :trail_done

    # ---- 颜色（尾迹黄→暖白）----
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_R:[F
    aget v4, v14, v3
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_G:[F
    aget v5, v14, v3
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_B:[F
    aget v6, v14, v3
    const/high16 v14, 0x3f800000    # 1.0f
    invoke-virtual {p0, v4, v5, v6, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    # ---- x / y ----
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F
    aget-object v14, v14, v2
    aget v14, v14, v3
    float-to-int v9, v14

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F
    aget-object v14, v14, v2
    aget v14, v14, v3
    float-to-int v10, v14

    # ---- 尺寸 ----
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I
    aget v11, v14, v3
    move v12, v11

    move-object v7, v1
    move-object v8, p0
    invoke-virtual/range {v7 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v3, v3, 0x1
    goto :trail_top

    :trail_done
    # ---- 弹体（国家色，20px）----
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F
    aget v4, v14, v2
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F
    aget v5, v14, v2
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F
    aget v6, v14, v2
    const/high16 v14, 0x3f800000    # 1.0f
    invoke-virtual {p0, v4, v5, v6, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F
    aget v14, v14, v2
    float-to-int v9, v14
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F
    aget v14, v14, v2
    float-to-int v10, v14
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->bodySize()I
    move-result v11
    move v12, v11
    move-object v7, v1
    move-object v8, p0
    invoke-virtual/range {v7 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v2, v2, 0x1
    goto :body_top

    :body_done
    # v116 对照实验：用"已知能显示"的识别圈素材在同一点画一圈，确认绘制管线本身通不通
    sget-boolean v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z
    if-eqz v14, :skip_probe
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->probeImageId()I
    move-result v14
    invoke-static {v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v14
    if-nez v14, :skip_probe
    const/high16 v15, 0x3f800000    # 1.0f
    invoke-virtual {p0, v15, v15, v15, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    const/4 v3, 0x0
    :probe_top
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F
    array-length v5, v4
    if-ge v3, v5, :probe_done
    if-ge v3, v0, :probe_draw
    goto :probe_done
    :probe_draw
    aget v9, v4, v3
    float-to-int v9, v9
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F
    aget v10, v4, v3
    float-to-int v10, v10
    const/16 v11, 0x28
    move v12, v11
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F
    aget v13, v4, v3
    move-object v7, v14
    move-object v8, p0
    invoke-virtual/range {v7 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    add-int/lit8 v3, v3, 0x1
    goto :probe_top
    :probe_done
    :skip_probe
    # v115 诊断：首帧画完打一条（与 prepare 的 nFX 配对，证明绘制确实执行到）
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I
    const/16 v15, 0x14
    if-ge v14, v15, :no_dbg_done
    add-int/lit8 v14, v14, 0x1
    sput v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I
    const-string v14, "nFX drawn"
    invoke-static {v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :no_dbg_done
    const/high16 v14, 0x3f800000    # 1.0f
    invoke-virtual {p0, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :ret
    return-void
.end method
