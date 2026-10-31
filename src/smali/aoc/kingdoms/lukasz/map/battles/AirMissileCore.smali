.class public Laoc/kingdoms/lukasz/map/battles/AirMissileCore;
.super Ljava/lang/Object;
.source "AirMissileCore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gunMul(Z)F
    .registers 1

    .line 27
    if-eqz p0, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static speedDiv()F
    .registers 3

    .line 37
    nop

    .line 39
    const/high16 v0, 0x43960000    # 300.0f

    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 40
    if-eqz v1, :cond_e

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-lez v2, :cond_e

    .line 41
    iget v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    int-to-float v0, v0

    .line 44
    :cond_e
    goto :goto_10

    .line 43
    :catchall_f
    move-exception v1

    .line 45
    :goto_10
    nop

    .line 47
    const/4 v1, 0x1

    :try_start_12
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    if-lez v2, :cond_18

    .line 48
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    .line 51
    :cond_18
    goto :goto_1a

    .line 50
    :catchall_19
    move-exception v2

    .line 52
    :goto_1a
    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
