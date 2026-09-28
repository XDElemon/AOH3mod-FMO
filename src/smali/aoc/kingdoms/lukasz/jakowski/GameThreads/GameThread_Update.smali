.class public Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;
.super Ljava/lang/Thread;
.source "GameThread_Update.java"


# instance fields
.field public iLastUpdateTurnID:I

.field public running:Z

.field private simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;",
            ">;"
        }
    .end annotation
.end field

.field public timeSleep:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->running:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->iLastUpdateTurnID:I

    return-void
.end method


# virtual methods
.method public final addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .registers 3
    .param p1, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    return-void

    .line 39
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public final addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .registers 3
    .param p1, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    return-void

    .line 47
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public clearData()V
    .registers 2

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->iLastUpdateTurnID:I

    .line 53
    return-void
.end method

.method public run()V
    .registers 5

    .line 62
    nop

    :goto_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->running:Z

    if-eqz v0, :cond_5d

    .line 65
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->timeSleep:J

    .line 67
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateGame()V

    .line 69
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->updateSimpleTask()V

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 72
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->iLastUpdateTurnID:I

    if-eq v0, v1, :cond_3d

    .line 73
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CURRENT_SITUATION_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2f

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    .line 77
    :cond_2f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->updateNotifications()V

    .line 78
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->updateMessages()V

    .line 80
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->iLastUpdateTurnID:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 85
    :cond_3d
    goto :goto_42

    .line 83
    :catch_3e
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_58

    .line 88
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_42
    :try_start_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->timeSleep:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xf

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_55} :catch_56
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_55} :catch_58

    .line 91
    goto :goto_5c

    .line 89
    :catch_56
    move-exception v0

    goto :goto_5c

    .line 92
    :catch_58
    move-exception v0

    .line 93
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5c
    goto :goto_1

    .line 96
    :cond_5d
    return-void
.end method

.method public final updateSimpleTask()V
    .registers 3

    .line 22
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_1e

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 24
    :try_start_a
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->update()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    .line 27
    goto :goto_1a

    .line 25
    :catch_16
    move-exception v1

    .line 26
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_17
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1e

    .line 22
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 31
    .end local v0    # "i":I
    :cond_1d
    goto :goto_22

    .line 29
    :catch_1e
    move-exception v0

    .line 30
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 32
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22
    return-void
.end method
