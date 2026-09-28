.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_Court_Religion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 444
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10$1;->this$1:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 447
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ReligionSavePos()V

    .line 448
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 450
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 451
    return-void
.end method
