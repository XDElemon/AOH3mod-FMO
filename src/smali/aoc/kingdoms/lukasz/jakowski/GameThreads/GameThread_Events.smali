.class public Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;
.super Ljava/lang/Thread;
.source "GameThread_Events.java"


# static fields
.field public static THREAD_TURN_ID:I


# instance fields
.field public iLastUpdateTurnID:I

.field public running:Z

.field public timeSleep:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->running:Z

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->iLastUpdateTurnID:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 21
    nop

    :goto_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->running:Z

    if-eqz v0, :cond_52

    .line 24
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->timeSleep:J

    .line 26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 27
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->iLastUpdateTurnID:I

    if-eq v0, v1, :cond_32

    .line 28
    sget v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    .line 30
    sget v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents(I)V

    .line 32
    sget v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents_Global(I)V

    .line 34
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->updateEvents()V

    .line 36
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->iLastUpdateTurnID:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    .line 42
    :cond_32
    goto :goto_37

    .line 40
    :catch_33
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_34
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_4d

    .line 45
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_37
    :try_start_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->timeSleep:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_4d

    .line 48
    goto :goto_51

    .line 46
    :catch_4b
    move-exception v0

    goto :goto_51

    .line 49
    :catch_4d
    move-exception v0

    .line 50
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 51
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_51
    goto :goto_1

    .line 53
    :cond_52
    return-void
.end method
