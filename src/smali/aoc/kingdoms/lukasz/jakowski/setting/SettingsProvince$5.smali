.class Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$5;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "SettingsProvince.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->updateSettings_Cities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 244
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 247
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesInGame()V

    .line 248
    return-void
.end method
