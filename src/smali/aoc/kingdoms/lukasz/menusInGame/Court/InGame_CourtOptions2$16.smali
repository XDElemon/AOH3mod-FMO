.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$16;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_CourtOptions2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 982
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 985
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGame()V

    .line 986
    return-void
.end method
