.class public final Laoc/kingdoms/lukasz/map/battles/AirLat;
.super Ljava/lang/Object;
.source "AirLat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# 唯一纬度换算入口（口径：贴图同款 = 半径 × clamp(cos(lat),0.25,1)）
# f(y) = clamp( cos( (y-4300)/4300 * PI/2 ), 0.25, 1.0 )
.method public static f(I)F
    .registers 6

    int-to-float v0, p0

    const v1, 0x45866000    # 4300.0f

    sub-float v0, v0, v1

    div-float v0, v0, v1

    const v1, 0x3fc90fdb    # 1.5707964f

    mul-float v0, v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_cap1

    move v0, v1

    :cond_cap1
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v2, v0, v1

    if-gez v2, :cond_cap2

    move v0, v1

    :cond_cap2
    return v0
.end method

# r(range,y) = (int)( range * f(y) )   ← 判定与渲染共用的“纬度缩小后半径”
.method public static r(II)I
    .registers 4

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirLat;->f(I)F

    move-result v1

    int-to-float v0, p0

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

# hit(dx,dy,R,y) = 判定点是否落在“与画出来的圈同口径”的椭圆内
# 内部：R' = r(R,y) ; cosK = calcCosK(y) ; return calcInEllipse(dx,dy,R',cosK)
.method public static hit(IIII)Z
    .registers 6

    invoke-static {p2, p3}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v0

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z

    move-result v0

    return v0
.end method
