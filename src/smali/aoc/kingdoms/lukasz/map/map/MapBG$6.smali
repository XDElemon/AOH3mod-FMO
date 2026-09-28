.class Laoc/kingdoms/lukasz/map/map/MapBG$6;
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

    .line 520
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 524
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/high16 v1, 0x3f800000    # 1.0f

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 525
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 528
    goto :goto_11

    .line 526
    :catch_d
    move-exception v0

    .line 527
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 529
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 533
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 534
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    # invokes: Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 535
    return-void
.end method
