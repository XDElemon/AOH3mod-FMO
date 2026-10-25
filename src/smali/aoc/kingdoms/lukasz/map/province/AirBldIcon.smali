.class public final Laoc/kingdoms/lukasz/map/province/AirBldIcon;
.super Ljava/lang/Object;
.source "AirBldIcon.java"

# 地图建筑圆盘的落笔原语（v75）。
# Java 侧：AirBldIcon.begin(sbObj) 一次；然后每个图标 AirBldIcon.drawIcon(sbObj, imageId, x, y, w, h)。
# 为什么是 smali：Image.draw 的 SpriteBatch 形参在 gen_java_stubs.py 里退化成 Object，
# Java 直接 invoke 会 NoSuchMethodError。见 baseline/smali_exceptions.txt。

.method public static begin(Ljava/lang/Object;)V
    .registers 6
    .param p0, "sb"      # Ljava/lang/Object;

    move-object v0, p0
    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    # 与 drawAirForce 入口一致：普通 alpha 混合
    const/16 v1, 0x302
    const/16 v2, 0x303
    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    # 白色不透明：冲掉城市层留下的 setColor(1,1,1,DRAW_CITIES_ALPHA)
    const/high16 v1, 0x3f800000
    move v2, v1
    move v3, v1
    move v4, v1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    return-void
.end method

.method public static drawIcon(Ljava/lang/Object;IIIII)V
    .registers 13
    .param p0, "sb"      # Ljava/lang/Object;
    .param p1, "imageId" # I
    .param p2, "x"       # I  屏幕像素，左上角，y 向下
    .param p3, "y"       # I
    .param p4, "w"       # I
    .param p5, "h"       # I

    move-object v0, p0
    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v1

    if-eqz v1, :ret

    # Image.draw 是 virtual：this=v1，参数连续放 v2..v6 ⇒ /range
    move-object v2, v0
    move v3, p2
    move v4, p3
    move v5, p4
    move v6, p5
    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :ret
    return-void
.end method
