.class Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ButtonStatsRectIMG_ActiveBuilding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_BuildSavePos()V

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 60
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 61
    return-void
.end method
