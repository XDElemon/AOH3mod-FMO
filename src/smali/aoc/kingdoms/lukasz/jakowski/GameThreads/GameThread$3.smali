.class Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "GameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateNewYear()V
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

    .line 154
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$3;->this$0:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 158
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced_NewYear()V

    .line 159
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateUniqueCivsGoods()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 162
    goto :goto_b

    .line 160
    :catch_7
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b
    return-void
.end method
