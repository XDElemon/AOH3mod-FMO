.class Laoc/kingdoms/lukasz/menu/MenuManager$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu/MenuManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu/MenuManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu/MenuManager;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 4178
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/MenuManager$1;->this$0:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 4181
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_RightQueue()V

    .line 4182
    return-void
.end method
