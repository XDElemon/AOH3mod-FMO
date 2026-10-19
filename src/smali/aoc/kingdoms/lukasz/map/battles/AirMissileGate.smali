# 由 tools/gen_air_missile_gate.py 生成，禁止手改
# 推进模式判定的唯一入口（纯函数：相机与缩放由调用方传入）
.class public Laoc/kingdoms/lukasz/map/battles/AirMissileGate;
.super Ljava/lang/Object;
.source "AirMissileGate.java"


# static fields
.field public static final MODE_HOUR:I = 0x0

.field public static final MODE_FRAME:I = 0x1


# direct methods
# 世界坐标 -> 屏幕坐标后判断是否在屏幕矩形内
.method public static onScreen(FFFFF)Z
    .registers 10
    .param p0, "worldX"    # F
    .param p1, "worldY"    # F
    .param p2, "mapPosX"    # F
    .param p3, "mapPosY"    # F
    .param p4, "zoom"    # F

    add-float v0, p0, p2

    mul-float/2addr v0, p4

    add-float v1, p1, p3

    mul-float/2addr v1, p4

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :os_no

    cmpg-float v3, v1, v2

    if-ltz v3, :os_no

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    cmpl-float v4, v0, v3

    if-gtz v4, :os_no

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v4, v1, v3

    if-gtz v4, :os_no

    const/4 v0, 0x1

    return v0

    :os_no
    const/4 v0, 0x0

    return v0
.end method

# 推进模式：屏内 -> 逐帧；屏外 -> 按游戏小时
.method public static advanceMode(FFFFF)I
    .registers 6
    invoke-static/range {p0 .. p4}, Laoc/kingdoms/lukasz/map/battles/AirMissileGate;->onScreen(FFFFF)Z

    move-result v0

    if-eqz v0, :am_hour

    const/4 v0, 0x1

    return v0

    :am_hour
    const/4 v0, 0x0

    return v0
.end method
