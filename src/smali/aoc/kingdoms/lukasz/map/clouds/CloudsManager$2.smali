.class Laoc/kingdoms/lukasz/map/clouds/CloudsManager$2;
.super Ljava/lang/Object;
.source "CloudsManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateCloudsInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    .line 156
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$2;->this$0:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCloudsInterface(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 158
    return-void
.end method
