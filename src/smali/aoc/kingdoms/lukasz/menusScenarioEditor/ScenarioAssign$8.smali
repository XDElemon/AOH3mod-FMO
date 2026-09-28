.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign$8;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ScenarioAssign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 244
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 247
    iget v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign$8;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegion(I)V

    .line 249
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 250
    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 251
    return-void
.end method
