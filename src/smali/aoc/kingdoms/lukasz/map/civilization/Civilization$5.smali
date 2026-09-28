.class Laoc/kingdoms/lukasz/map/civilization/Civilization$5;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Civilization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInBattles(Ljava/lang/String;)V
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

    .line 4265
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization$5;->this$0:Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 4268
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 4269
    return-void
.end method
