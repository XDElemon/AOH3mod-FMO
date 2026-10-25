.class public final Laoc/kingdoms/lukasz/map/province/AirRadarSync;
.super Ljava/lang/Object;
.source "AirRadarSync.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static onRadarBuildingRemoved(I)V
    .registers 3

    .line 22
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 23
    if-nez v0, :cond_7

    .line 24
    return-void

    .line 26
    :cond_7
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 27
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 28
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1e

    .line 32
    :cond_1a
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->unregisterRadar(I)V

    goto :goto_21

    .line 30
    :cond_1e
    :goto_1e
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    .line 36
    :goto_21
    goto :goto_23

    .line 34
    :catchall_22
    move-exception p0

    .line 37
    :goto_23
    return-void
.end method
