.class public Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;
.super Ljava/lang/Object;
.source "WavesLine.java"


# instance fields
.field public final ANIMATION_TIME:F

.field public direction:Z

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field public pointsSize:I

.field public time:J

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
.method public constructor <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->width:Ljava/util/List;

    .line 87
    const v1, 0x459c4000    # 5000.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->ANIMATION_TIME:F

    .line 88
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->time:J

    .line 89
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->direction:Z

    .line 29
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->time:J

    .line 30
    return-void
.end method


# virtual methods
.method public addNewPoint()V
    .registers 7

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, -0x1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    .line 38
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->buildData()V

    .line 39
    return-void
.end method

.method public addNewPoint_Just(II)V
    .registers 5
    .param p1, "nX"    # I
    .param p2, "nY"    # I

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    .line 53
    return-void
.end method

.method public final buildData()V
    .registers 11

    .line 58
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_120

    .line 59
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->width:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 62
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 64
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    if-ge v1, v2, :cond_64

    .line 66
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 68
    .end local v1    # "i":I
    :cond_64
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v1

    .line 70
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 72
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_95
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    if-ge v3, v4, :cond_b8

    .line 73
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v5, v4, v3

    .line 74
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v3

    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 77
    .end local v3    # "j":I
    :cond_b8
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_b9
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_117

    .line 78
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->width:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v7, v3, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v9, v3, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 81
    .end local v3    # "j":I
    :cond_117
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->width:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v0    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v1    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_120
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 93
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_a2

    .line 94
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->time:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v0, v1

    .line 96
    .local v0, "perc":F
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_2c

    .line 97
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->time:J

    .line 98
    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->direction:Z

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->direction:Z

    .line 100
    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->direction:Z

    if-eqz v3, :cond_2a

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2c

    .line 103
    :cond_2a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    :cond_2c
    :goto_2c
    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->direction:Z

    if-nez v3, :cond_32

    .line 108
    sub-float v0, v2, v0

    .line 111
    :cond_32
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 113
    .local v3, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_38
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    if-ge v4, v5, :cond_76

    .line 114
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    mul-float v6, v6, v7

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v7, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 115
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    mul-float v7, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 114
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 118
    .end local v4    # "j":I
    :cond_76
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x3e000000    # 0.125f

    mul-float v6, v6, v0

    const v7, 0x3ccccccd    # 0.025f

    add-float/2addr v6, v7

    invoke-direct {v5, v2, v2, v2, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 119
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const v4, 0x3f59999a    # 0.85f

    mul-float v4, v4, v0

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v5

    sget-object v5, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v2, v3, v4, v5, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 121
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 122
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a2} :catch_a3

    .line 126
    .end local v0    # "perc":F
    .end local v3    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_a2
    goto :goto_a7

    .line 124
    :catch_a3
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 127
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a7
    return-void
.end method

.method public removePoint()V
    .registers 3

    .line 42
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    if-lez v0, :cond_15

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->pointsSize:I

    .line 47
    :cond_15
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;->buildData()V

    .line 48
    return-void
.end method
