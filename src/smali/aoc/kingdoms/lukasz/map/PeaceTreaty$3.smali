.class Laoc/kingdoms/lukasz/map/PeaceTreaty$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "PeaceTreaty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/PeaceTreaty;->enforceDemands(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/PeaceTreaty;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/PeaceTreaty;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 917
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty$3;->this$0:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 920
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    .line 921
    return-void
.end method
