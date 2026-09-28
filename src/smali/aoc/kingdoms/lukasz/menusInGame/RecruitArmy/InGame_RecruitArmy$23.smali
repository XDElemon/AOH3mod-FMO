.class Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3;
.source "InGame_RecruitArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getRecruitMenuElements(IIIII)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(IIIIIZZ)V
    .registers 8
    .param p1, "unitTypeID"    # I
    .param p2, "armyID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "isClickable"    # Z
    .param p7, "isResearched"    # Z

    .line 1692
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3;-><init>(IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 7

    .line 1695
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3;->actionElement()V

    .line 1697
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v1, :cond_4b

    .line 1698
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 1699
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 1700
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 1702
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue2()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->key:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 1703
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue2()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIII)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    .line 1704
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_9b

    .line 1707
    :cond_4b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue1()I

    move-result v1

    if-ne v0, v1, :cond_69

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue2()I

    move-result v1

    if-ne v0, v1, :cond_69

    .line 1708
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_9b

    .line 1711
    :cond_69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 1712
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 1713
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 1715
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue2()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->key:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 1716
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$23;->getValue2()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIII)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    .line 1719
    :goto_9b
    return-void
.end method
