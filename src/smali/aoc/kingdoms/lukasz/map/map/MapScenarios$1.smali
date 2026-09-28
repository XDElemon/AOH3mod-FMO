.class Laoc/kingdoms/lukasz/map/map/MapScenarios$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_12()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapScenarios;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapScenarios;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapScenarios;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 1043
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$1;->this$0:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 1046
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions()V

    .line 1047
    return-void
.end method
