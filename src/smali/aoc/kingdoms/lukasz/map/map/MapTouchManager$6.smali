.class Laoc/kingdoms/lukasz/map/map/MapTouchManager$6;
.super Ljava/lang/Object;
.source "MapTouchManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosX2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapTouchManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    .line 1418
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPos(II)I
    .registers 4
    .param p1, "iStartMovePos"    # I
    .param p2, "nPos"    # I

    .line 1421
    sub-int v0, p1, p2

    return v0
.end method
