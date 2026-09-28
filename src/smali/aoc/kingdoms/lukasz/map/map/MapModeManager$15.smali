.class Laoc/kingdoms/lukasz/map/map/MapModeManager$15;
.super Laoc/kingdoms/lukasz/map/map/MapMode;
.source "MapModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapModeManager;
    .param p2, "drawProvinces"    # Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;
    .param p3, "provinceHoverBuild"    # Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    .line 592
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$15;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 2

    .line 623
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 625
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-nez v0, :cond_e

    .line 626
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->clearBiggestCities()V

    .line 628
    :cond_e
    return-void
.end method

.method public enableViewAction()V
    .registers 6

    .line 595
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 596
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces_Standard()V

    .line 598
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->buildBiggestCitiesLines_Province(II)V

    .line 601
    :try_start_1f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesAttacker(II)Ljava/util/List;

    move-result-object v0

    .line 602
    .local v0, "alliesLeft":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesDefender(II)Ljava/util/List;

    move-result-object v1

    .line 604
    .local v1, "alliesRight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 605
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 606
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 609
    .end local v2    # "i":I
    :cond_4a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_50
    if-ltz v2, :cond_65

    .line 610
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput-boolean v3, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 609
    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    .line 613
    .end local v2    # "i":I
    :cond_65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_6a
    if-ltz v2, :cond_7f

    .line 614
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput-boolean v3, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_7c} :catch_80

    .line 613
    add-int/lit8 v2, v2, -0x1

    goto :goto_6a

    .line 618
    .end local v0    # "alliesLeft":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "alliesRight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_7f
    goto :goto_81

    .line 616
    :catch_80
    move-exception v0

    .line 619
    :goto_81
    return-void
.end method
