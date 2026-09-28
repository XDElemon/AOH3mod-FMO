.class Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "GameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateNewMonth()V
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

    .line 129
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$1;->this$0:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 133
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 136
    goto :goto_8

    .line 134
    :catch_4
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 137
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
