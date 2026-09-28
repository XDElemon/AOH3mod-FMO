.class Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "PMessageCallToWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar;->onRefuse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar$1;->this$0:Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageCallToWar;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 85
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    .line 86
    return-void
.end method
