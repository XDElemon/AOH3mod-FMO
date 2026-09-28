.class Laoc/kingdoms/lukasz/map/war/War$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "War.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/war/War;->peaceTreaty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/war/War;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/war/War;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 440
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/war/War$3;->this$0:Laoc/kingdoms/lukasz/map/war/War;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 443
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    .line 444
    return-void
.end method
