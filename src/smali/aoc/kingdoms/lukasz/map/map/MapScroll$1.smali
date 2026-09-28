.class Laoc/kingdoms/lukasz/map/map/MapScroll$1;
.super Ljava/lang/Object;
.source "MapScroll.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapScroll;->buildReverseDirectionX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapScroll;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapScroll;

    .line 48
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPos(I)I
    .registers 3
    .param p1, "nPosX"    # I

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getNewPosX()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
