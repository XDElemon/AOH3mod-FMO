.class public Laoc/kingdoms/lukasz/units/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field public moveToPosX:I

.field public moveToPosY:I

.field public pathPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/XY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .registers 9
    .param p1, "posX"    # I
    .param p2, "posY"    # I
    .param p3, "toPosX"    # I
    .param p4, "toPosY"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    .line 16
    iput p3, p0, Laoc/kingdoms/lukasz/units/Path;->moveToPosX:I

    .line 17
    iput p4, p0, Laoc/kingdoms/lukasz/units/Path;->moveToPosY:I

    .line 19
    sub-int v0, p3, p1

    .line 20
    .local v0, "diffX":I
    sub-int v1, p4, p2

    .line 23
    .local v1, "diffY":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    invoke-direct {v3, p3, p4}, Laoc/kingdoms/lukasz/jakowski/zOther/XY;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public update(I)V
    .registers 2
    .param p1, "i"    # I

    .line 35
    return-void
.end method
