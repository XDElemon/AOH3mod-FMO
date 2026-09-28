.class Laoc/kingdoms/lukasz/map/map/MapBG$1;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapBG;->updateActiveMapBGShader()V
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

    .line 247
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 250
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setBlackWhite(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 251
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    .line 252
    return-void
.end method

.method public drawMapEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 256
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 257
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    .line 258
    return-void
.end method
