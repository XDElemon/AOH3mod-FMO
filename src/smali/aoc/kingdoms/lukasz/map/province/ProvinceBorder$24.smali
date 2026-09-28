.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$24;
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

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V
    .registers 9
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

    .line 463
    .local p6, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    return-void
.end method
