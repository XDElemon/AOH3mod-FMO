.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$25;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawCivBorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V
    .registers 20
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F
    .param p4, "nColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "nColor2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "offsetX"    # F
    .param p8, "offsetY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "F",
            "Lcom/badlogic/gdx/graphics/Color;",
            "Lcom/badlogic/gdx/graphics/Color;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;FF)V"
        }
    .end annotation

    .line 471
    .local p6, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    sget v8, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    const/4 v4, 0x1

    move-object/from16 v1, p6

    move v2, p3

    move-object v3, p2

    move/from16 v5, p7

    move/from16 v6, p8

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2_Double(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFFLspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 472
    return-void
.end method
