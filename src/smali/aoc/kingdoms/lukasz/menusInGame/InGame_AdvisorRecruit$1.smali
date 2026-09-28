.class Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;
.source "InGame_AdvisorRecruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;IILjava/lang/String;IIIILjava/lang/String;)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "sName"    # Ljava/lang/String;
    .param p5, "imageID"    # I
    .param p6, "iCivID"    # I
    .param p7, "iHireModeID"    # I
    .param p8, "iAdvisorType"    # I
    .param p9, "sIMG"    # Ljava/lang/String;

    .line 68
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 9

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x64

    const-string v3, ": "

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InsufficientGold"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_14e

    .line 74
    :cond_4a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_90

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InsufficientLegacy"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_14e

    .line 78
    :cond_90
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 80
    .local v0, "tName":Ljava/lang/String;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;->getCurrent()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->recruitAdvisorID(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11e

    .line 81
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 82
    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 84
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Hired"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_f9

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoGeneral:I

    goto :goto_fb

    :cond_f9
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    :goto_fb
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 87
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    .line 89
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 92
    :cond_11e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AdvisorRecruit(Z)V

    .line 94
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_13a

    .line 95
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSavePos()V

    .line 96
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 97
    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 100
    :cond_13a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 101
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 102
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 103
    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    .line 106
    .end local v0    # "tName":Ljava/lang/String;
    :cond_14e
    :goto_14e
    return-void
.end method
