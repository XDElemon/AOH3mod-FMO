.class Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$6;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "SettingsProvince.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->updateSettings_Clouds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 261
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 264
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateCloudsInterface()V

    .line 265
    return-void
.end method
