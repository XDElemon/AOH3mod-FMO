.class public Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;
.super Ljava/lang/Thread;
.source "GameThread_Turns.java"


# instance fields
.field public THREAD_TURN_ID:I

.field public civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public iLastUpdateTurnID:I

.field public provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public running:Z

.field public timeSleep:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->running:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-void
.end method


# virtual methods
.method public final addCivUpdateMaxManpower(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 721
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 722
    return-void

    .line 725
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 728
    goto :goto_1b

    .line 726
    :catch_17
    move-exception v0

    .line 727
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 729
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addCivsNukes(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 621
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 622
    return-void

    .line 625
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 628
    goto :goto_1b

    .line 626
    :catch_17
    move-exception v0

    .line 627
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 629
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceBuildingsUnderConstruction(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 147
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    return-void

    .line 151
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 154
    goto :goto_1b

    .line 152
    :catch_17
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 155
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceConvertReligion(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 351
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    return-void

    .line 355
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 358
    goto :goto_1b

    .line 356
    :catch_17
    move-exception v0

    .line 357
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 359
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceCoreCreation(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 384
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 385
    return-void

    .line 388
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 391
    goto :goto_1b

    .line 389
    :catch_17
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 392
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceDevelopInfrastructure(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 285
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 286
    return-void

    .line 289
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 292
    goto :goto_1b

    .line 290
    :catch_17
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 293
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceIncreaseGrowthRate(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 253
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    return-void

    .line 257
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 260
    goto :goto_1b

    .line 258
    :catch_17
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceIncreaseManpower(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 318
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 319
    return-void

    .line 322
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 325
    goto :goto_1b

    .line 323
    :catch_17
    move-exception v0

    .line 324
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceIncreaseTaxEfficiency(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 221
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    return-void

    .line 225
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 228
    goto :goto_1b

    .line 226
    :catch_17
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 229
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceInvest(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 189
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    return-void

    .line 193
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 196
    goto :goto_1b

    .line 194
    :catch_17
    move-exception v0

    .line 195
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addProvinceWonderConstruction(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 417
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 418
    return-void

    .line 421
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 424
    goto :goto_1b

    .line 422
    :catch_17
    move-exception v0

    .line 423
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 425
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public clearData()V
    .registers 2

    .line 46
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 47
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 48
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 49
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 50
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 52
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 53
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 54
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 55
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 56
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    .line 60
    return-void
.end method

.method public final removeCivsNukes(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 633
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 636
    goto :goto_e

    .line 634
    :catch_a
    move-exception v0

    .line 635
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 637
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceBuildingsUnderConstruction(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 159
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 162
    goto :goto_e

    .line 160
    :catch_a
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceConvertReligion(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 363
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 366
    goto :goto_e

    .line 364
    :catch_a
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceCoreCreation(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 396
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 399
    goto :goto_e

    .line 397
    :catch_a
    move-exception v0

    .line 398
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 400
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceDevelopInfrastructure(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 297
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 300
    goto :goto_e

    .line 298
    :catch_a
    move-exception v0

    .line 299
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 301
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceIncreaseGrowthRate(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 265
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 268
    goto :goto_e

    .line 266
    :catch_a
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 269
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceIncreaseManpower(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 330
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 333
    goto :goto_e

    .line 331
    :catch_a
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 334
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceIncreaseTaxEfficiency(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 233
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 236
    goto :goto_e

    .line 234
    :catch_a
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 237
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceInvest(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 201
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 204
    goto :goto_e

    .line 202
    :catch_a
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 205
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final removeProvinceWonderConstruction(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 429
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 432
    goto :goto_e

    .line 430
    :catch_a
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 433
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public run()V
    .registers 5

    .line 65
    nop

    :goto_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->running:Z

    if-eqz v0, :cond_b3

    .line 68
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->timeSleep:J

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 71
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    if-eq v0, v1, :cond_92

    .line 72
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 73
    .local v0, "turns":I
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    .line 75
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateBuildingsUnderConstruction(I)V

    .line 77
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceConvertReligion(I)V

    .line 78
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceCoreCreation(I)V

    .line 80
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceInvestEconomy()V

    .line 81
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceIncreaseManpower()V

    .line 82
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceIncreaseTaxEfficiency()V

    .line 83
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceIncreaseGrowthRate()V

    .line 84
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceWonderConstruction()V

    .line 85
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceDevelopInfrastructure()V

    .line 87
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateMaxManpower()V

    .line 89
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateUnrest()V

    .line 91
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDevastation()V

    .line 93
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceValues()V

    .line 95
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateColonization()V

    .line 98
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateRelations()V

    .line 99
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy()V

    .line 101
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Player;->update()V

    .line 103
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_RULER_MIN_TURN_ID:I

    if-le v1, v2, :cond_78

    .line 104
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Administrative()V

    .line 105
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Economic()V

    .line 106
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Innovation()V

    .line 107
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Military()V

    .line 109
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAGenerals_NotAssigned()V

    .line 110
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAGenerals_Assigned()V

    .line 112
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfRulers()V

    .line 115
    :cond_78
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateRegimentsLimit()V

    .line 117
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge()V

    .line 119
    invoke-static {}, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->runPlagues()V

    .line 120
    invoke-static {}, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->startDisease()V

    .line 122
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateCivsNukes(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateAll()V

    .line 124
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_92} :catch_93

    .line 130
    .end local v0    # "turns":I
    :cond_92
    goto :goto_97

    .line 128
    :catch_93
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_94
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_ad

    .line 133
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_97
    :try_start_97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->timeSleep:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xf

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_aa} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_aa} :catch_ad

    .line 136
    goto :goto_b1

    .line 134
    :catch_ab
    move-exception v0

    goto :goto_b1

    .line 137
    :catch_ad
    move-exception v0

    .line 138
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 139
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b1
    goto/16 :goto_1

    .line 141
    :cond_b3
    return-void
.end method

.method public final unlockGoldenAge_Military(I)V
    .registers 8
    .param p1, "i"    # I

    .line 830
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 832
    .local v0, "nCivBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_UNITS_ATTACK:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 833
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_UNITS_DEFENSE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 834
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_MAX_MANPOWER_PERC:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    .line 836
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_DURATION_DAYS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 838
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 840
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->setGoldenAgeMilitary(I)V

    .line 842
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_8c

    .line 843
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeMilitary;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeMilitary;-><init>(II)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    .line 845
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_MILITARY:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    .line 847
    :cond_8c
    return-void
.end method

.method public final unlockGoldenAge_Prosperity(I)V
    .registers 8
    .param p1, "i"    # I

    .line 795
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 797
    .local v0, "nCivBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_MONTHLY_INCOME:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 798
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_INCOME_PRODUCTION:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 800
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_DURATION_DAYS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 802
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 804
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->setGoldenAgeProsperity(I)V

    .line 806
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_7a

    .line 807
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeProsperity;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeProsperity;-><init>(II)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    .line 809
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_PROSPERITY:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    .line 811
    :cond_7a
    return-void
.end method

.method public final unlockGoldenAge_Science(I)V
    .registers 8
    .param p1, "i"    # I

    .line 866
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 868
    .local v0, "nCivBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_RESEARCH:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 869
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_LEGACY:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    .line 871
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_DURATION_DAYS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 873
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 875
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->setGoldenAgeScience(I)V

    .line 877
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_7a

    .line 878
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeScience;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeScience;-><init>(II)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    .line 880
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_SCIENCE:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    .line 882
    :cond_7a
    return-void
.end method

.method public final updateBuildingsUnderConstruction(I)V
    .registers 6
    .param p1, "turns"    # I

    .line 167
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_3b

    .line 169
    .local v1, "provinceID":Ljava/lang/Integer;
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v2, :cond_2a

    .line 170
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingsUnderConstrucion(I)V

    goto :goto_2f

    .line 173
    :cond_2a
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_30

    .line 178
    :goto_2f
    goto :goto_39

    .line 175
    :catch_30
    move-exception v2

    .line 176
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_31
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 177
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3b

    .line 179
    .end local v1    # "provinceID":Ljava/lang/Integer;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_39
    goto :goto_6

    .line 182
    :cond_3a
    goto :goto_3f

    .line 180
    :catch_3b
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 183
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method

.method public final updateCivsNukes(I)V
    .registers 4
    .param p1, "turns"    # I

    .line 641
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 642
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 643
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNukeProduction(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_6

    .line 647
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_23

    .line 645
    :catch_1f
    move-exception v0

    .line 646
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 648
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateColonization()V
    .registers 3

    .line 707
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_POPULATION_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 708
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1e

    .line 709
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColonizationProvince()V

    .line 707
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_POPULATION_STEPS:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_25

    add-int/2addr v0, v1

    goto :goto_7

    .line 714
    .end local v0    # "i":I
    :cond_24
    goto :goto_29

    .line 712
    :catch_25
    move-exception v0

    .line 713
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 715
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public final updateDeathOfAGenerals_Assigned()V
    .registers 12

    .line 533
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b0

    if-ge v0, v1, :cond_af

    .line 535
    :try_start_d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_17
    if-ltz v1, :cond_a3

    .line 536
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_9f

    .line 537
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 538
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_93

    .line 539
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->GENERAL_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "GeneralDied"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->general:I

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 543
    :cond_93
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_9f} :catch_a4

    .line 535
    :cond_9f
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_17

    .line 549
    .end local v1    # "j":I
    :cond_a3
    goto :goto_a8

    .line 547
    :catch_a4
    move-exception v1

    .line 548
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_a5
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 533
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_a8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS:I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ac} :catch_b0

    add-int/2addr v0, v1

    goto/16 :goto_7

    .line 553
    .end local v0    # "i":I
    :cond_af
    goto :goto_b4

    .line 551
    :catch_b0
    move-exception v0

    .line 552
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 554
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b4
    return-void
.end method

.method public final updateDeathOfAGenerals_NotAssigned()V
    .registers 3

    .line 517
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2c

    if-ge v0, v1, :cond_2b

    .line 519
    :try_start_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_20

    .line 520
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->update_ChanceOfGeneral_NotAssigned()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    .line 524
    :cond_20
    goto :goto_25

    .line 522
    :catch_21
    move-exception v1

    .line 523
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_22
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 517
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2c

    add-int/2addr v0, v1

    goto :goto_9

    .line 528
    .end local v0    # "i":I
    :cond_2b
    goto :goto_30

    .line 526
    :catch_2c
    move-exception v0

    .line 527
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 529
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method public final updateDeathOfAdvisors_Administrative()V
    .registers 3

    .line 450
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_28

    if-ge v0, v1, :cond_27

    .line 452
    :try_start_d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 453
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Administrative(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_1d

    .line 457
    :cond_1c
    goto :goto_21

    .line 455
    :catch_1d
    move-exception v1

    .line 456
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1e
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 450
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_28

    add-int/2addr v0, v1

    goto :goto_7

    .line 461
    .end local v0    # "i":I
    :cond_27
    goto :goto_2c

    .line 459
    :catch_28
    move-exception v0

    .line 460
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 462
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateDeathOfAdvisors_Economic()V
    .registers 3

    .line 466
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/lit8 v0, v0, 0x5a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2a

    if-ge v0, v1, :cond_29

    .line 468
    :try_start_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1e

    .line 469
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Economic(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    .line 473
    :cond_1e
    goto :goto_23

    .line 471
    :catch_1f
    move-exception v1

    .line 472
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 466
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_23
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2a

    add-int/2addr v0, v1

    goto :goto_9

    .line 477
    .end local v0    # "i":I
    :cond_29
    goto :goto_2e

    .line 475
    :catch_2a
    move-exception v0

    .line 476
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 478
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public final updateDeathOfAdvisors_Innovation()V
    .registers 3

    .line 482
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/lit16 v0, v0, 0xb4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2a

    if-ge v0, v1, :cond_29

    .line 484
    :try_start_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1e

    .line 485
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Innovation(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    .line 489
    :cond_1e
    goto :goto_23

    .line 487
    :catch_1f
    move-exception v1

    .line 488
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 482
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_23
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2a

    add-int/2addr v0, v1

    goto :goto_9

    .line 493
    .end local v0    # "i":I
    :cond_29
    goto :goto_2e

    .line 491
    :catch_2a
    move-exception v0

    .line 492
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 494
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public final updateDeathOfAdvisors_Military()V
    .registers 3

    .line 499
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/lit16 v0, v0, 0x10e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2a

    if-ge v0, v1, :cond_29

    .line 501
    :try_start_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1e

    .line 502
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Military(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    .line 506
    :cond_1e
    goto :goto_23

    .line 504
    :catch_1f
    move-exception v1

    .line 505
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 499
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_23
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2a

    add-int/2addr v0, v1

    goto :goto_9

    .line 510
    .end local v0    # "i":I
    :cond_29
    goto :goto_2e

    .line 508
    :catch_2a
    move-exception v0

    .line 509
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 511
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public final updateDeathOfRulers()V
    .registers 3

    .line 560
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_26

    if-ge v0, v1, :cond_25

    .line 562
    :try_start_d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1a

    .line 563
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/RulersManager;->update_ChanceOfDeathOfRuler(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    .line 567
    :cond_1a
    goto :goto_1f

    .line 565
    :catch_1b
    move-exception v1

    .line 566
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1c
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 560
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_26

    add-int/2addr v0, v1

    goto :goto_7

    .line 571
    .end local v0    # "i":I
    :cond_25
    goto :goto_2a

    .line 569
    :catch_26
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 572
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public final updateDevastation()V
    .registers 3

    .line 578
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEVASTATION_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 579
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_25

    .line 580
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateDevastation()V

    .line 581
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateLoot()V

    .line 578
    :cond_25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEVASTATION_STEPS:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2c

    add-int/2addr v0, v1

    goto :goto_7

    .line 586
    .end local v0    # "i":I
    :cond_2b
    goto :goto_30

    .line 584
    :catch_2c
    move-exception v0

    .line 585
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 587
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method public final updateDiplomacy()V
    .registers 3

    .line 654
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 656
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_22

    .line 657
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 658
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy(I)V

    .line 656
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 662
    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2d

    .line 663
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    add-int/2addr v0, v1

    .line 666
    :cond_2d
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 667
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_40

    .line 668
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy(I)V

    .line 666
    :cond_40
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    add-int/2addr v0, v1

    goto :goto_2d

    .line 672
    :cond_46
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v1, :cond_53

    .line 673
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy(I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 677
    .end local v0    # "i":I
    :cond_53
    goto :goto_58

    .line 675
    :catch_54
    move-exception v0

    .line 676
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 678
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_58
    return-void
.end method

.method public final updateDiplomacy(I)V
    .registers 3
    .param p1, "civID"    # I

    .line 681
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateTruces(I)V

    .line 682
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateDefensivePact(I)V

    .line 683
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateNonAggressionPact(I)V

    .line 684
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateGuarantee(I)V

    .line 685
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance(I)V

    .line 686
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateMilitaryAccess(I)V

    .line 687
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRivals(I)V

    .line 688
    return-void
.end method

.method public final updateGoldenAge()V
    .registers 3

    .line 765
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_GOLDEN_AGE:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 766
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_20

    .line 767
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge_Prosperity(I)V

    .line 768
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge_Military(I)V

    .line 769
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge_Science(I)V

    .line 765
    :cond_20
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_GOLDEN_AGE:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_27

    add-int/2addr v0, v1

    goto :goto_7

    .line 775
    .end local v0    # "i":I
    :cond_26
    goto :goto_2b

    .line 773
    :catch_27
    move-exception v0

    .line 774
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 776
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public final updateGoldenAge_Military(I)V
    .registers 5
    .param p1, "i"    # I

    .line 817
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->iGoldenAge_MilitarySize:I

    if-ge v0, v1, :cond_4f

    .line 818
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->getIncreasedManpower()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_INCREASED_MANPOWER:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4f

    .line 819
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->getMilitaryBuildingsConstructed()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_MILITARY_BUILDINGS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    if-lt v0, v1, :cond_4f

    .line 820
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->unlockGoldenAge_Military(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 826
    :cond_4f
    goto :goto_54

    .line 824
    :catch_50
    move-exception v0

    .line 825
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 827
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_54
    return-void
.end method

.method public final updateGoldenAge_Prosperity(I)V
    .registers 5
    .param p1, "i"    # I

    .line 782
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->iGoldenAge_ProsperitySize:I

    if-ge v0, v1, :cond_4f

    .line 783
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->getInvestedInEconomy()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_INVESTED_IN_ECONOMY:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4f

    .line 784
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->getEconomyBuildingsConstructed()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_ECONOMY_BUILDINGS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    if-lt v0, v1, :cond_4f

    .line 785
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->unlockGoldenAge_Prosperity(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 791
    :cond_4f
    goto :goto_54

    .line 789
    :catch_50
    move-exception v0

    .line 790
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 792
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_54
    return-void
.end method

.method public final updateGoldenAge_Science(I)V
    .registers 5
    .param p1, "i"    # I

    .line 853
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->iGoldenAge_ScienceSize:I

    if-ge v0, v1, :cond_4c

    .line 854
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->getDevelopedInfrastructure()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_DEVELOPED_INFRASTRUCTURE:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4c

    .line 855
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->getAdministrativeBuildingsConstructed()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_ADMINISTRATIVE_BUILDINGS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    if-lt v0, v1, :cond_4c

    .line 856
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->unlockGoldenAge_Science(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 862
    :cond_4c
    goto :goto_51

    .line 860
    :catch_4d
    move-exception v0

    .line 861
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 863
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method public final updateMaxManpower()V
    .registers 4

    .line 733
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 734
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 736
    .local v1, "nCivID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_21

    .line 733
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 740
    .end local v0    # "i":I
    .end local v1    # "nCivID":I
    :cond_20
    goto :goto_25

    .line 738
    :catch_21
    move-exception v0

    .line 739
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 741
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public final updateProvinceConvertReligion(I)V
    .registers 4
    .param p1, "turns"    # I

    .line 371
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateReligionConversion(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_6

    .line 377
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_23

    .line 375
    :catch_1f
    move-exception v0

    .line 376
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 378
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceCoreCreation(I)V
    .registers 4
    .param p1, "turns"    # I

    .line 404
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 405
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateCoreCreation(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_6

    .line 410
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_23

    .line 408
    :catch_1f
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 411
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceDevelopInfrastructure()V
    .registers 3

    .line 305
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateDevelopInfrastructure()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_6

    .line 311
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_23

    .line 309
    :catch_1f
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 312
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceIncreaseGrowthRate()V
    .registers 4

    .line 273
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 274
    .local v1, "provinceID":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreaseGrowthRate()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 275
    .end local v1    # "provinceID":Ljava/lang/Integer;
    goto :goto_6

    .line 278
    :cond_1e
    goto :goto_23

    .line 276
    :catch_1f
    move-exception v0

    .line 277
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 279
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceIncreaseManpower()V
    .registers 3

    .line 338
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 339
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreaseManpower()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_6

    .line 344
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_23

    .line 342
    :catch_1f
    move-exception v0

    .line 343
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 345
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceIncreaseTaxEfficiency()V
    .registers 4

    .line 241
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 242
    .local v1, "provinceID":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreaseTaxEfficiency()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 243
    .end local v1    # "provinceID":Ljava/lang/Integer;
    goto :goto_6

    .line 246
    :cond_1e
    goto :goto_23

    .line 244
    :catch_1f
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceInvestEconomy()V
    .registers 4

    .line 209
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 210
    .local v1, "provinceID":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateInvestEconomy()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 211
    .end local v1    # "provinceID":Ljava/lang/Integer;
    goto :goto_6

    .line 214
    :cond_1e
    goto :goto_23

    .line 212
    :catch_1f
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceValues()V
    .registers 3

    .line 593
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    rem-int/lit16 v0, v0, 0x16d

    .local v0, "i":I
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 594
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 595
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 593
    :cond_1b
    add-int/lit16 v0, v0, 0x16d

    goto :goto_4

    .line 600
    .end local v0    # "i":I
    :cond_1e
    goto :goto_23

    .line 598
    :catch_1f
    move-exception v0

    .line 599
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 601
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateProvinceWonderConstruction()V
    .registers 3

    .line 437
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 438
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateWonderConstruction()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_6

    .line 443
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    goto :goto_23

    .line 441
    :catch_1f
    move-exception v0

    .line 442
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 444
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateRegimentsLimit()V
    .registers 3

    .line 747
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REGIMENTS_LIMIT_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_2a

    if-ge v0, v1, :cond_29

    .line 749
    :try_start_d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1e

    .line 750
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    .line 754
    :cond_1e
    goto :goto_23

    .line 752
    :catch_1f
    move-exception v1

    .line 753
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_20
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 747
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_23
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REGIMENTS_LIMIT_STEPS:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2a

    add-int/2addr v0, v1

    goto :goto_7

    .line 758
    .end local v0    # "i":I
    :cond_29
    goto :goto_2e

    .line 756
    :catch_2a
    move-exception v0

    .line 757
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 759
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public final updateRelations()V
    .registers 3

    .line 694
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 695
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateImproveRelations(I)V

    .line 696
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateDamageRelations(I)V

    .line 694
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_IMPROVE_DAMAGE_RELATIONS:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_28

    add-int/2addr v0, v1

    goto :goto_9

    .line 700
    .end local v0    # "i":I
    :cond_27
    goto :goto_2c

    .line 698
    :catch_28
    move-exception v0

    .line 699
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 701
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateUnrest()V
    .registers 3

    .line 607
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UNREST_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 608
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_1e

    .line 609
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateRevolutionaryRisk()V

    .line 607
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UNREST_STEPS:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_25

    add-int/2addr v0, v1

    goto :goto_7

    .line 614
    .end local v0    # "i":I
    :cond_24
    goto :goto_29

    .line 612
    :catch_25
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 615
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    return-void
.end method
