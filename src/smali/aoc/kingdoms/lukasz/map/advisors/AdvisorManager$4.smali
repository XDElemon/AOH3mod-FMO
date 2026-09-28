.class Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$4;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "AdvisorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$4;->this$0:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 170
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCourt:I

    if-ne v0, v1, :cond_1d

    .line 171
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSavePos()V

    .line 172
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 173
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 175
    :cond_1d
    return-void
.end method
