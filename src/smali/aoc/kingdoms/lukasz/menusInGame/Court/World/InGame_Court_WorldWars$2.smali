.class Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;
.source "InGame_Court_WorldWars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars;

.field public warKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars;IIIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars;
    .param p2, "imageID"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxWidth"    # I

    .line 125
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 135
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->warKey:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    goto :goto_52

    .line 140
    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 141
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 143
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 145
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    .line 147
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->warKey:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    .line 148
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_War()V

    .line 150
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WAR_VIEW:I

    if-eq v0, v1, :cond_4b

    .line 151
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WAR_VIEW:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_52

    .line 153
    :cond_4b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateWarView(Ljava/lang/String;)V

    .line 157
    :cond_52
    :goto_52
    return-void
.end method

.method public buildElementHover()V
    .registers 4

    .line 161
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->warKey:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->warKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MessageWar;->getHoverWar(Ljava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 162
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldWars$2;->warKey:Ljava/lang/String;

    .line 131
    return-void
.end method
