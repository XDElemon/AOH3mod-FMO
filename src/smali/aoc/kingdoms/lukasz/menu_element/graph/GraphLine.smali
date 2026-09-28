.class public Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;
.super Ljava/lang/Object;
.source "GraphLine.java"


# instance fields
.field private fAngle:F

.field private iPosY:I

.field private iWidth:I


# direct methods
.method protected constructor <init>(IIII)V
    .registers 9
    .param p1, "fromPosX"    # I
    .param p2, "fromPosY"    # I
    .param p3, "toPosX"    # I
    .param p4, "toPosY"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iPosY:I

    .line 21
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

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    .line 22
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

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->fAngle:F

    .line 23
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "i"    # I

    .line 28
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iPosY:I

    add-int v3, p3, v1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    const/4 v5, 0x1

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->fAngle:F

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 29
    return-void
.end method

.method protected final getPosY()I
    .registers 2

    .line 34
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iPosY:I

    return v0
.end method

.method protected final getWidth()I
    .registers 2

    .line 38
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    return v0
.end method

.method protected final setWidth(I)V
    .registers 2
    .param p1, "iWidth"    # I

    .line 42
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    .line 43
    return-void
.end method
