.class Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ButtonBuilding2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 5

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceBonuses()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceBonuses()V

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceBonuses(ZZ)V

    .line 138
    const-wide/16 v2, 0x0

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses;->lTime:J

    .line 141
    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceInfo()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceInfo(Z)V

    .line 146
    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Buildings()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 147
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings(Z)V

    .line 149
    :cond_32
    return-void
.end method
