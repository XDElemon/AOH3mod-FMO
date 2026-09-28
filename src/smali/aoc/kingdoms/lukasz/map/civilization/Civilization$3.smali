.class Laoc/kingdoms/lukasz/map/civilization/Civilization$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Civilization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V
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

    .line 2147
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization$3;->this$0:Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 2150
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    .line 2151
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    .line 2152
    return-void
.end method
