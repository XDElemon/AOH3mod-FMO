.class Laoc/kingdoms/lukasz/map/war/War$1;
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
.method constructor <init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/war/War;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 404
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/war/War$1;->this$0:Laoc/kingdoms/lukasz/map/war/War;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 408
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War$1;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_ReorganizeArmiesAtPeace(I)V

    .line 409
    return-void
.end method
