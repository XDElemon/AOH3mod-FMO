.class Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$4;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "GameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->autoSaveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$4;->this$0:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->saveStats()V

    .line 191
    return-void
.end method
