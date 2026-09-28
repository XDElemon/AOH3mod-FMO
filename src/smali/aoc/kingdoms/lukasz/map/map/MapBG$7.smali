.class Laoc/kingdoms/lukasz/map/map/MapBG$7;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapBG;->updateWorldMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapBG;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 540
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 544
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$900(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "currID":I
    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    .local v2, "tempHeight":I
    :goto_1d
    if-ltz v0, :cond_7f

    .line 545
    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    .line 547
    .local v3, "tempWidth":I
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1100(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_29
    if-ltz v4, :cond_6f

    .line 549
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    invoke-virtual {v5, p1, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 551
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v5, v5, v6

    sub-int/2addr v3, v5

    .line 553
    add-int/lit8 v1, v1, -0x1

    .line 547
    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 556
    .end local v4    # "i":I
    :cond_6f
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v4, v4, v5

    sub-int/2addr v2, v4

    .line 544
    .end local v3    # "tempWidth":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 559
    .end local v0    # "j":I
    .end local v1    # "currID":I
    .end local v2    # "tempHeight":I
    :cond_7f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapOver;->drawMapOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_86} :catch_87

    .line 562
    goto :goto_8b

    .line 560
    :catch_87
    move-exception v0

    .line 561
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 563
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8b
    return-void
.end method

.method public drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 567
    neg-int v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_95

    .line 568
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    neg-int v4, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x43870000    # 270.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 569
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v0, p2, v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    neg-int v4, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    goto/16 :goto_11e

    .line 572
    :cond_95
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    neg-int v4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x43870000    # 270.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 573
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v0, p2, v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    neg-int v4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p3

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    .line 576
    :goto_11e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 577
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 578
    return-void
.end method
