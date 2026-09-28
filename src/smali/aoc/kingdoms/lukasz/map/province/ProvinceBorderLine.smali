.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
.super Ljava/lang/Object;
.source "ProvinceBorderLine.java"


# instance fields
.field private fAngle:F

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 9
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPosX2"    # I
    .param p4, "nPosY2"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosX:I

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosY:I

    .line 17
    sub-int v0, p3, p1

    sub-int v1, p3, p1

    mul-int v0, v0, v1

    sub-int v1, p2, p4

    sub-int v2, p2, p4

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iWidth:I

    .line 18
    sub-int v0, p2, p4

    int-to-double v0, v0

    neg-int v2, p1

    add-int/2addr v2, p3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->fAngle:F

    .line 19
    return-void
.end method


# virtual methods
.method public getAngle()F
    .registers 2

    .line 36
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->fAngle:F

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 24
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 28
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosY:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 32
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iWidth:I

    return v0
.end method
