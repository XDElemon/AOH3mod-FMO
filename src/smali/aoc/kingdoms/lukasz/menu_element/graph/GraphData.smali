.class public Laoc/kingdoms/lukasz/menu_element/graph/GraphData;
.super Ljava/lang/Object;
.source "GraphData.java"


# static fields
.field private static final ALPHA_CIV_LINE:F = 0.8f

.field protected static final ANIMATION_TIME:I = 0x1c2


# instance fields
.field private backAnimation:Z

.field private drawData:Z

.field private iBeginTurnID:I

.field private iCivID:I

.field private iPointsSize:I

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private lVectorPoints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method protected constructor <init>(ILjava/util/List;I)V
    .registers 8
    .param p1, "iCivID"    # I
    .param p3, "iBeginTurnID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 43
    .local p2, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    .line 33
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->visible:Z

    .line 34
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    .line 44
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    .line 48
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    if-ge v1, v2, :cond_3a

    .line 51
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 54
    .end local v1    # "i":I
    :cond_3a
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iBeginTurnID:I

    .line 56
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    .line 57
    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p5, "id"    # I
    .param p6, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 86
    .local p4, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_5
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v5

    if-eqz p6, :cond_2a

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2d

    :cond_2a
    const v6, 0x3f4ccccd    # 0.8f

    :goto_2d
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_33} :catch_34

    .line 89
    goto :goto_44

    .line 87
    :catch_34
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p6, :cond_3b

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3b
    const v4, 0x3d70f0f1

    invoke-direct {v3, v4, v4, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_44
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_d1

    .line 98
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 100
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p2

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    neg-int v5, p3

    int-to-float v5, v5

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    .line 101
    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 100
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 103
    const/4 v3, 0x1

    .local v3, "i":I
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "iSize":I
    :goto_78
    if-ge v3, v4, :cond_b9

    .line 104
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_b6

    .line 105
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v6, p2

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v7

    neg-int v7, p3

    int-to-float v7, v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    .line 106
    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 105
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 103
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 110
    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_b9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 111
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v3, v0, v1, v4, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 113
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 114
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 116
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_d1
    return-void
.end method


# virtual methods
.method protected final buildGraph(IIILjava/util/List;)V
    .registers 13
    .param p1, "iHeight"    # I
    .param p2, "nMinPoint"    # I
    .param p3, "nMaxPoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p4, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    if-ge v0, v1, :cond_40

    .line 148
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iBeginTurnID:I

    add-int/2addr v3, v0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    int-to-float v5, p1

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    mul-float v5, v5, v6

    sub-int v6, p3, p2

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 150
    .end local v0    # "i":I
    :cond_40
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "id"    # I
    .param p8, "active"    # Z
    .param p9, "iFixPosY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    .line 62
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, p0

    iget-wide v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    const-wide/16 v2, 0x1c2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_10

    .line 63
    invoke-virtual/range {p0 .. p9}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto :goto_1c

    .line 66
    :cond_10
    sub-int v3, p3, p9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    .line 68
    :goto_1c
    return-void
.end method

.method protected final drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "id"    # I
    .param p8, "active"    # Z
    .param p9, "iFixPosY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    .line 71
    .local p6, "nPointsPosX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    const/high16 v1, 0x43e10000    # 450.0f

    if-eqz v0, :cond_22

    .line 72
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p3

    int-to-float v2, v10

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int v1, v10, v1

    neg-int v2, v11

    invoke-static {p1, p2, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    goto :goto_34

    .line 75
    :cond_22
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p3

    int-to-float v2, v10

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    neg-int v2, v11

    invoke-static {p1, p2, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 78
    :goto_34
    sub-int v3, p3, p9

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    .line 81
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 82
    return-void
.end method

.method protected final drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "active"    # Z

    .line 119
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-eqz p4, :cond_19

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    goto :goto_29

    :cond_19
    iget-boolean v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz v4, :cond_22

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_29

    :cond_22
    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    :goto_29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 120
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v5

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 122
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    const/high16 v7, 0x3e800000    # 0.25f

    if-eqz v4, :cond_58

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_5a

    :cond_58
    const/high16 v4, 0x3e800000    # 0.25f

    :goto_5a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3ecccccd    # 0.4f

    :try_start_66
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v5

    iget-boolean v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz v6, :cond_8e

    const v6, 0x3f4ccccd    # 0.8f

    goto :goto_91

    :cond_8e
    const v6, 0x3ecccccd    # 0.4f

    :goto_91
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_97
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_66 .. :try_end_97} :catch_98

    .line 127
    goto :goto_ac

    .line 125
    :catch_98
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz v4, :cond_a0

    goto :goto_a3

    :cond_a0
    const v1, 0x3ecccccd    # 0.4f

    :goto_a3
    const v2, 0x3d70f0f1

    invoke-direct {v3, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 129
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_ac
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 131
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz v0, :cond_c1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_c8

    :cond_c1
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_c8
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 133
    :try_start_cb
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_f7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_cb .. :try_end_f7} :catch_f8

    .line 136
    goto :goto_12c

    .line 134
    :catch_f8
    move-exception v0

    .line 135
    .restart local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 139
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_12c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 140
    return-void
.end method

.method protected final getBackAnimation()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    return v0
.end method

.method protected final getBeginTurnID()I
    .registers 2

    .line 171
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iBeginTurnID:I

    return v0
.end method

.method protected final getCivID()I
    .registers 2

    .line 167
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    return v0
.end method

.method protected final getDrawData()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    return v0
.end method

.method protected final getPointY(I)I
    .registers 4
    .param p1, "i"    # I

    .line 156
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 157
    :catch_d
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method

.method protected final getPointsSize()I
    .registers 2

    .line 163
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    return v0
.end method

.method protected final getTime()J
    .registers 3

    .line 210
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    return-wide v0
.end method

.method protected final getVisible()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->visible:Z

    return v0
.end method

.method protected final setBackAnimation(Z)V
    .registers 2
    .param p1, "backAnimation"    # Z

    .line 206
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    .line 207
    return-void
.end method

.method protected final setDrawData(Z)V
    .registers 10
    .param p1, "drawData"    # Z

    .line 179
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eq p1, v0, :cond_2b

    .line 180
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x1c2

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_23

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    if-eqz v0, :cond_23

    .line 181
    :cond_17
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    goto :goto_27

    .line 184
    :cond_23
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    .line 187
    :goto_27
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    .line 190
    :cond_2b
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    .line 191
    return-void
.end method

.method protected final setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 198
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->visible:Z

    .line 199
    return-void
.end method
