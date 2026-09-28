.class public Laoc/kingdoms/lukasz/map/map/Ship/Ship;
.super Ljava/lang/Object;
.source "Ship.java"


# instance fields
.field public angle:F

.field public currentWidth:F

.field public iPrecision:I

.field public moveToX:F

.field public moveToY:F

.field public posX:F

.field public posY:F

.field public speed:F

.field tID:I

.field public vPoints:[Lcom/badlogic/gdx/math/Vector2;

.field public width:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 24
    .param p1, "nX"    # I
    .param p2, "nY"    # I
    .param p3, "moveToX"    # I
    .param p4, "moveToY"    # I
    .param p5, "catX"    # I
    .param p6, "catY"    # I

    .line 28
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    .line 23
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->speed:F

    .line 24
    const/4 v5, 0x0

    iput v5, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    .line 26
    const/16 v5, 0xc8

    iput v5, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->iPrecision:I

    .line 56
    const/4 v5, 0x0

    iput v5, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    .line 29
    int-to-float v6, v1

    iput v6, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->posX:F

    .line 30
    int-to-float v6, v2

    iput v6, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->posY:F

    .line 32
    int-to-float v6, v3

    iput v6, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->moveToX:F

    .line 33
    int-to-float v6, v4

    iput v6, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->moveToY:F

    .line 35
    iget v6, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->iPrecision:I

    new-array v6, v6, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v6, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 36
    const/4 v6, 0x5

    new-array v6, v6, [Lcom/badlogic/gdx/math/Vector2;

    .line 38
    .local v6, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v7, v6, v5

    .line 39
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 40
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v9, p5

    int-to-float v10, v9

    move/from16 v11, p6

    int-to-float v12, v11

    invoke-direct {v7, v10, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v10, 0x2

    aput-object v7, v6, v10

    .line 41
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v3

    int-to-float v12, v4

    invoke-direct {v7, v10, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v10, 0x3

    aput-object v7, v6, v10

    .line 42
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v3

    int-to-float v12, v4

    invoke-direct {v7, v10, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v10, 0x4

    aput-object v7, v6, v10

    .line 44
    new-instance v7, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v7, v6, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move-object v5, v7

    .line 46
    .local v5, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_73
    iget v10, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->iPrecision:I

    if-ge v7, v10, :cond_92

    .line 47
    iget-object v10, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v12, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v12}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v12, v10, v7

    .line 48
    iget-object v10, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v7

    int-to-float v12, v7

    iget v13, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->iPrecision:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-virtual {v5, v10, v12}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 51
    .end local v7    # "j":I
    :cond_92
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_93
    iget v10, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->iPrecision:I

    sub-int/2addr v10, v8

    if-ge v7, v10, :cond_ef

    .line 52
    iget-object v10, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget-object v12, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v13, v7, 0x1

    aget-object v12, v12, v13

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v13, v13, v7

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v12, v13

    iget-object v13, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v14, v7, 0x1

    aget-object v13, v13, v14

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v14, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v14, v14, v7

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v13, v14

    mul-float v12, v12, v13

    iget-object v13, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v13, v13, v7

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v14, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v15, v7, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v13, v14

    iget-object v14, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v14, v14, v7

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v15, v0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v16, v7, 0x1

    aget-object v15, v15, v16

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v14, v15

    mul-float v13, v13, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    .line 54
    .end local v7    # "j":I
    :cond_ef
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 119
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->speed:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    .line 121
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3d

    .line 122
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    .line 124
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    const/16 v1, 0xc6

    if-le v0, v1, :cond_3d

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    .line 129
    :cond_3d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->posX:F

    .line 130
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->posY:F

    .line 133
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->angle:F

    .line 144
    return-void
.end method

.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 59
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->speed:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    .line 61
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3d

    .line 62
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    .line 64
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    const/16 v1, 0xc6

    if-le v0, v1, :cond_3d

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    .line 69
    :cond_3d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->posX:F

    .line 70
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->currentWidth:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->width:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->posY:F

    .line 73
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->tID:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship;->angle:F

    .line 82
    return-void
.end method
