.class Laoc/kingdoms/lukasz/map/map/MapTouchManager$2;
.super Ljava/lang/Object;
.source "MapTouchManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosX()V
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

    .line 1382
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartMovePos(I)I
    .registers 3
    .param p1, "nPos"    # I

    .line 1385
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
