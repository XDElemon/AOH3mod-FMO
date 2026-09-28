.class Laoc/kingdoms/lukasz/map/civilization/Civilization$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Civilization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/civilization/Civilization;->update_ChanceOfGeneral_NotAssigned()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/civilization/Civilization;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 1876
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization$1;->this$0:Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 1879
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1880
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    .line 1881
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    .line 1882
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->lTime:J

    .line 1884
    :cond_17
    return-void
.end method
