.class Laoc/kingdoms/lukasz/map/map/MapScenarios$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_48()V
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

    .line 1204
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 1207
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 1208
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner_Civ(IZ)V

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1210
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
