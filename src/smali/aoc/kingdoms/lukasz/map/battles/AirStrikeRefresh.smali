.class public Laoc/kingdoms/lukasz/map/battles/AirStrikeRefresh;
.super Ljava/lang/Object;
.source "AirStrikeRefresh.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterStrike(Ljava/lang/Object;)V
    .registers 2

    .line 16
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/province/Province;

    if-nez v0, :cond_5

    .line 17
    return-void

    .line 19
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/province/Province;

    .line 21
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 22
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V

    .line 23
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    .line 24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 26
    if-eqz v0, :cond_18

    .line 27
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 31
    :cond_18
    goto :goto_1a

    .line 29
    :catchall_19
    move-exception p0

    .line 32
    :goto_1a
    return-void
.end method
