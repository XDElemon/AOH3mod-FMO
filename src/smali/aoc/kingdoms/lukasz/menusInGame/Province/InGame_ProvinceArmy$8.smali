.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$8;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_ProvinceArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 596
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 599
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v0, :cond_b

    return-void

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    .line 600
    return-void
.end method
