.class public Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;
.super Ljava/lang/Object;
.source "ShipLine.java"


# instance fields
.field public fromProvinceID:I

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

.field public toProvinceID:I

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
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    .line 23
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNewPoint()V
    .registers 7

    .line 34
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

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

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    .line 37
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->buildData()V

    .line 38
    return-void
.end method

.method public addNewPoint_Just(II)V
    .registers 5
    .param p1, "nX"    # I
    .param p2, "nY"    # I

    .line 50
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    .line 52
    return-void
.end method

.method public final buildData()V
    .registers 11

    .line 57
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_120

    .line 58
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 61
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 63
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    if-ge v1, v2, :cond_64

    .line 65
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 67
    .end local v1    # "i":I
    :cond_64
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v1

    .line 69
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 71
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_95
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    if-ge v3, v4, :cond_b8

    .line 72
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v5, v4, v3

    .line 73
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v3

    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 76
    .end local v3    # "j":I
    :cond_b8
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_b9
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_117

    .line 77
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v7, v3, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

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

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 80
    .end local v3    # "j":I
    :cond_117
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v0    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v1    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_120
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 88
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_6b

    .line 89
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 91
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    if-ge v1, v2, :cond_49

    .line 92
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 93
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 92
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 96
    .end local v1    # "j":I
    :cond_49
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 97
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v3, 0x1

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v1, v0, v4, v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 99
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 100
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    .line 104
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_6b
    goto :goto_70

    .line 102
    :catch_6c
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_70
    return-void
.end method

.method public removePoint()V
    .registers 3

    .line 41
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    if-lez v0, :cond_15

    .line 42
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    .line 46
    :cond_15
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->buildData()V

    .line 47
    return-void
.end method
