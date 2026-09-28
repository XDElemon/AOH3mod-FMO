.class Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_Sandbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2$1;->this$1:Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$2;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 155
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Messages()V

    .line 156
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wars()V

    .line 157
    return-void
.end method
