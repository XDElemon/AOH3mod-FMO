.class Laoc/kingdoms/lukasz/map/map/MapCoords$1;
.super Ljava/lang/Object;
.source "MapCoords.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapCoords;->updateWorldMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapCoords;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 45
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMapPosX()V
    .registers 5

    .line 59
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_2b

    .line 60
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v3

    add-int/2addr v1, v3

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_57

    .line 62
    :cond_2b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v0

    if-lez v0, :cond_4c

    .line 63
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v3

    add-int/2addr v1, v3

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_57

    .line 66
    :cond_4c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v1

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 69
    :goto_57
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapX()V

    .line 70
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->updateSecondSideOfMap()V

    .line 71
    return-void
.end method

.method public updateSecondSideOfMap()V
    .registers 5

    .line 48
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$100(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$002(Laoc/kingdoms/lukasz/map/map/MapCoords;Z)Z

    .line 50
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$000(Laoc/kingdoms/lukasz/map/map/MapCoords;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$202(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    goto :goto_40

    .line 53
    :cond_3b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$202(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 55
    :goto_40
    return-void
.end method
