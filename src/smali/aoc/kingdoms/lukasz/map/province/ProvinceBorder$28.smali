.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$28;
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

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V
    .registers 18
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

    .line 494
    .local p6, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 495
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    const/4 v6, 0x1

    move-object v3, p6

    move-object v5, p2

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    .line 496
    return-void
.end method
