.class Laoc/kingdoms/lukasz/map/map/MapBG$5;
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

    .line 447
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 451
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_129

    .line 452
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Scale:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bd

    .line 453
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v0

    if-ne v0, v3, :cond_30

    .line 454
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # setter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I
    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$002(Laoc/kingdoms/lukasz/map/map/MapBG;I)I

    .line 455
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->updateBGAnimationTime()V
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$100(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    .line 458
    :cond_30
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$200(Laoc/kingdoms/lukasz/map/map/MapBG;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 459
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v2, v5

    if-gez v0, :cond_a0

    .line 460
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 462
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 463
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 465
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 466
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_133

    .line 469
    :cond_a0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 471
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # setter for: Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z
    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$202(Laoc/kingdoms/lukasz/map/map/MapBG;Z)Z

    .line 472
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto/16 :goto_133

    .line 476
    :cond_b1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 477
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto/16 :goto_133

    .line 481
    :cond_bd
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v0

    if-nez v0, :cond_cf

    .line 482
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # setter for: Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$002(Laoc/kingdoms/lukasz/map/map/MapBG;I)I

    .line 483
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->updateBGAnimationTime()V
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$100(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    .line 486
    :cond_cf
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$200(Laoc/kingdoms/lukasz/map/map/MapBG;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 487
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v2, v5

    if-gez v0, :cond_118

    .line 488
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 490
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # getter for: Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 491
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_133

    .line 494
    :cond_118
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # setter for: Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z
    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$202(Laoc/kingdoms/lukasz/map/map/MapBG;Z)Z

    .line 495
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_133

    .line 499
    :cond_123
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_133

    .line 504
    :cond_129
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 505
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_133} :catch_134

    .line 509
    :goto_133
    goto :goto_138

    .line 507
    :catch_134
    move-exception v0

    .line 508
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 510
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_138
    return-void
.end method

.method public drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 514
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 515
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 516
    return-void
.end method
