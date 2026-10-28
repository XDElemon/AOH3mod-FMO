.class public final Laoc/kingdoms/lukasz/map/province/AirProjectileRender;
.super Ljava/lang/Object;
.source "AirProjectileRender.smali"

# M3a（v113）：导弹弹体 + 尾迹绘制桥（smali 只做 setColor + Image.drawFullCenter）
# 数值全部由 AirProjectileFx.prepare() 算好：屏幕坐标/旋转/国家色/24 段尾迹坐标。

.method public static drawAll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->prepare()I
    move-result v0
    if-gtz v0, :ret

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airProj:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v1
    if-eqz v1, :ret

    const/4 v2, 0x0

    :body_top
    if-ge v2, v0, :body_done

    # 本发弹的旋转角（尾迹与弹体同一个）
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F
    aget v13, v3, v2

    # ---------- 尾迹 24 段（先画，弹体压上面）----------
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

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F
    aget-object v4, v4, v2
    aget v4, v4, v3
    float-to-int v9, v4

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F
    aget-object v5, v5, v2
    aget v5, v5, v3
    float-to-int v10, v5

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I
    aget v11, v6, v3
    move v12, v11
    move-object v8, p0
    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v3, v3, 0x1
    goto :trail_top

    :trail_done
    # ---------- 弹体（国家色，20px）----------
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F
    aget v4, v3, v2
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F
    aget v5, v3, v2
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F
    aget v6, v3, v2
    const/high16 v7, 0x3f800000    # 1.0f
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F
    aget v3, v3, v2
    float-to-int v9, v3
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F
    aget v3, v3, v2
    float-to-int v10, v3
    const/16 v11, 0x14
    move v12, v11
    move-object v8, p0
    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v2, v2, 0x1
    goto :body_top

    :body_done
    const/high16 v3, 0x3f800000    # 1.0f
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :ret
    return-void
.end method
