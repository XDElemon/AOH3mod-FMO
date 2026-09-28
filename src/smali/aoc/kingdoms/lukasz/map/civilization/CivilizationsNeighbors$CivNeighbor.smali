.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;
.super Ljava/lang/Object;
.source "CivilizationsNeighbors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CivNeighbor"
.end annotation


# instance fields
.field public byLand:Z

.field public civID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    .line 19
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->this$0:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;IZ)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;
    .param p2, "civID"    # I
    .param p3, "byLand"    # Z

    .line 21
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->this$0:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    .line 23
    iput-boolean p3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->byLand:Z

    .line 24
    return-void
.end method
