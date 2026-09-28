.class Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$4;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "SettingsProvince.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->updateSettings_Double()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 227
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 230
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawCivBorder()V

    .line 231
    return-void
.end method
