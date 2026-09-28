.class Laoc/kingdoms/lukasz/map/map/MapCoords$2;
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

    .line 75
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMapPosX()V
    .registers 6

    .line 84
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_50

    .line 85
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 86
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_7a

    .line 87
    :cond_50
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v1

    if-lt v0, v1, :cond_6f

    .line 88
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v1

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 89
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_7a

    .line 91
    :cond_6f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v1

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 94
    :goto_7a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$100(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v1

    if-lt v0, v1, :cond_99

    .line 95
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I

    move-result v2

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$302(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    move-result v1

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 98
    :cond_99
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapX()V

    .line 99
    return-void
.end method

.method public updateSecondSideOfMap()V
    .registers 3

    .line 78
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    const/4 v1, 0x0

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$002(Laoc/kingdoms/lukasz/map/map/MapCoords;Z)Z

    .line 79
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCoords;

    # setter for: Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->access$202(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I

    .line 80
    return-void
.end method
