.class public Laoc/kingdoms/lukasz/map/map/MapScenarios;
.super Ljava/lang/Object;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;
    }
.end annotation


# static fields
.field public static DEFAULT_VALUE:I

.field public static scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;


# instance fields
.field public SCENARIOS_SIZE:I

.field public details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;",
            ">;"
        }
    .end annotation
.end field

.field public editorProvinceReligion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lScenarios_Preview:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public lScenarios_TagsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sActiveScenarioTag:Ljava/lang/String;

.field public scenarioEditor_isCampaign:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 335
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    .line 467
    const/4 v0, -0x2

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    return-void
.end method

.method public static final buildAlliancesSpecial()V
    .registers 3

    .line 1687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    if-ge v0, v1, :cond_7e

    .line 1689
    :try_start_5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V

    .line 1691
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_26
    if-ltz v1, :cond_46

    .line 1692
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V

    .line 1691
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 1695
    .end local v1    # "j":I
    :cond_46
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "j":I
    :goto_56
    if-ltz v1, :cond_76

    .line 1696
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_73} :catch_77

    .line 1695
    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    .line 1700
    .end local v1    # "j":I
    :cond_76
    goto :goto_7b

    .line 1698
    :catch_77
    move-exception v1

    .line 1699
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1687
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1702
    .end local v0    # "i":I
    :cond_7e
    return-void
.end method

.method public static final buildArmyPosition()V
    .registers 4

    .line 1562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1563
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->clearArmyPosition()V

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1566
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 1567
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_19
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 1568
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addArmyPosition(ILjava/lang/String;)V

    .line 1567
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1566
    .end local v1    # "j":I
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1571
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method public static buildCivData()V
    .registers 4

    .line 1608
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2a

    .line 1610
    :try_start_8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v1, v0, v3, v2, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->updateCivBonuses(IIIZ)V

    .line 1611
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v1, v0, v3, v2, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    .line 1614
    goto :goto_27

    .line 1612
    :catch_23
    move-exception v1

    .line 1613
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1608
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1617
    .end local v0    # "i":I
    :cond_2a
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildVassals()V

    .line 1619
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 1621
    :try_start_34
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTaxationLevel(I)V

    .line 1622
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setResearchLevel(I)V

    .line 1623
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->CORRUPTION_BASE_VALUE:F

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCorruption(F)V

    .line 1625
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    .line 1627
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 1628
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    .line 1629
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 1631
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_70} :catch_71

    .line 1634
    goto :goto_75

    .line 1632
    :catch_71
    move-exception v1

    .line 1633
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1619
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1636
    .end local v0    # "i":I
    :cond_78
    return-void
.end method

.method public static buildCivData_Load()V
    .registers 4

    .line 1579
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 1581
    :try_start_7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->updateCivBonuses(IIIZ)V

    .line 1582
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    .line 1587
    goto :goto_27

    .line 1585
    :catch_23
    move-exception v1

    .line 1586
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1579
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1589
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public static buildCivData_Load2()V
    .registers 2

    .line 1592
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 1594
    :try_start_7
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    .line 1596
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 1597
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    .line 1598
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 1600
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2b

    .line 1603
    goto :goto_2f

    .line 1601
    :catch_2b
    move-exception v1

    .line 1602
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1592
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1605
    .end local v0    # "i":I
    :cond_32
    return-void
.end method

.method public static final buildCivsColors()V
    .registers 2

    .line 1297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1298
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1300
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final buildCivsStability()V
    .registers 2

    .line 1705
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1706
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivStability()V

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1708
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final buildIncome()V
    .registers 2

    .line 1645
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildProsperity_AverageEconomy()V

    .line 1647
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1648
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    .line 1649
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyMaintenance()V

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1652
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 1653
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 1652
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1657
    .end local v0    # "i":I
    :cond_2c
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 1658
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v1, v0, :cond_44

    .line 1659
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateIncome()V

    .line 1657
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1663
    .end local v0    # "i":I
    :cond_47
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_48
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 1664
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-ne v1, v0, :cond_5f

    .line 1665
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateIncome()V

    .line 1663
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1669
    .end local v0    # "i":I
    :cond_62
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_63
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 1670
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 1669
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1672
    .end local v0    # "i":I
    :cond_73
    return-void
.end method

.method public static final buildManpower()V
    .registers 2

    .line 1639
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1640
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 1639
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1642
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static buildProvinceData()V
    .registers 0

    .line 1574
    invoke-static {}, Laoc/kingdoms/lukasz/map/BonusesManager;->initAndBuildProvinceBonuses()V

    .line 1575
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->initProvinceData()V

    .line 1576
    return-void
.end method

.method public static final buildStartingRelationsRandom()V
    .registers 7

    .line 1713
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_CHANCE:I

    if-lez v0, :cond_b7

    .line 1714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v0, "lCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "civID":I
    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_b7

    .line 1718
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_b3

    .line 1719
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    :goto_1e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_51

    .line 1720
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4e

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingRelationsRandom_IsInDistance(II)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1721
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_CHANCE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-le v3, v4, :cond_4e

    .line 1722
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1727
    .end local v2    # "i":I
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_57
    if-ltz v2, :cond_b0

    .line 1728
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS:I

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1729
    .local v3, "relation":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_76

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_MIN:I

    goto :goto_7b

    :cond_76
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_MIN:I

    neg-int v5, v5

    :goto_7b
    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 1731
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v1, v6, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    .line 1732
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v1, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    .line 1727
    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    .line 1735
    .end local v2    # "j":I
    .end local v3    # "relation":F
    :cond_b0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1717
    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 1739
    .end local v0    # "lCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "civID":I
    :cond_b7
    return-void
.end method

.method public static buildStartingRelationsRandom_IsInDistance(II)Z
    .registers 5
    .param p0, "civID"    # I
    .param p1, "rivalID"    # I

    .line 1742
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_c

    .line 1743
    return v1

    .line 1746
    :cond_c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->RANDOM_RELATIONS_DISTANCE:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_29

    .line 1747
    return v1

    .line 1750
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static final buildVassals()V
    .registers 3

    .line 1676
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1677
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_30

    .line 1678
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addVassal(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_34

    .line 1676
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1683
    .end local v0    # "i":I
    :cond_33
    goto :goto_38

    .line 1681
    :catch_34
    move-exception v0

    .line 1682
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1684
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_38
    return-void
.end method

.method public static loadRandomScenario()V
    .registers 4

    .line 1894
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1896
    .local v0, "scenarioID":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-ne v1, v0, :cond_36

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    if-nez v1, :cond_36

    sget-boolean v1, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    if-eqz v1, :cond_1c

    goto :goto_36

    .line 1905
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 1906
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 1907
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    .line 1908
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_48

    .line 1897
    :cond_36
    :goto_36
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 1898
    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    .line 1900
    sput-boolean v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    .line 1901
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    .line 1902
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 1911
    :goto_48
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 1912
    return-void
.end method

.method public static final updateUQ_UI()V
    .registers 2

    .line 1303
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->UQ_UI:Z

    if-eqz v0, :cond_25

    .line 1304
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBGUQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    .line 1305
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStatsUQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    .line 1306
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2UQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2:I

    .line 1307
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBarUQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    .line 1309
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraUQ:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    goto :goto_39

    .line 1312
    :cond_25
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBGClassic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    .line 1313
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStatsClassic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    .line 1314
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2Classic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2:I

    .line 1315
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBarClassic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    .line 1317
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraClassic:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    .line 1319
    :goto_39
    return-void
.end method


# virtual methods
.method public final buildCivsGold()V
    .registers 7

    .line 1497
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 1498
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v1, v2, :cond_23

    .line 1499
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    int-to-float v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    goto :goto_4e

    .line 1502
    :cond_23
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 1497
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1505
    .end local v0    # "i":I
    :cond_51
    return-void
.end method

.method public final buildCivsGovernmentBuildings()V
    .registers 5

    .line 1533
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_8e

    .line 1534
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CCL:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalLevel(I)V

    .line 1535
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyLevel(I)V

    .line 1536
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAGL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyForGeneralsLevel(I)V

    .line 1537
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->SCL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setSupremeCourtLevel(I)V

    .line 1538
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->NRL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNuclearReactorLevel(I)V

    .line 1540
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCapitalCity_Bonuses()V

    .line 1541
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademy_Bonuses()V

    .line 1542
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademyForGenerals_Bonuses()V

    .line 1543
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildSupremeCourt_Bonuses()V

    .line 1544
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildNuclearReactor_Bonuses()V

    .line 1533
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1546
    .end local v0    # "i":I
    :cond_8e
    return-void
.end method

.method public final buildCivsGovernmentBuildings_LoadSavedGame()V
    .registers 3

    .line 1549
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1550
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCapitalCity_Bonuses()V

    .line 1551
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademy_Bonuses()V

    .line 1552
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademyForGenerals_Bonuses()V

    .line 1555
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildNuclearReactor_Bonuses()V

    .line 1549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1557
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public final buildCivsLegacy_Nukes_Aggressiveness()V
    .registers 7

    .line 1508
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 1509
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v1, v2, :cond_23

    .line 1510
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    int-to-float v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    goto :goto_4e

    .line 1513
    :cond_23
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 1516
    :goto_4e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    if-lez v1, :cond_67

    .line 1517
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNukes(I)V

    .line 1520
    :cond_67
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    if-eqz v1, :cond_80

    .line 1521
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setExtraAggressiveness(I)V

    .line 1508
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1524
    .end local v0    # "i":I
    :cond_84
    return-void
.end method

.method public final buildCivsManpower()V
    .registers 7

    .line 1527
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 1528
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1530
    .end local v0    # "i":I
    :cond_32
    return-void
.end method

.method public final buildCivsNeighbors()V
    .registers 3

    .line 1324
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1325
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->buildNeighbors(I)V

    .line 1324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1327
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public final buildProvincesCores()V
    .registers 4

    .line 1352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1353
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_2a

    .line 1354
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 1352
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1357
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method public final buildProvincesEconomy()V
    .registers 9

    .line 1434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_eb

    .line 1435
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 1436
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-nez v1, :cond_5d

    .line 1437
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->BASE_ECONOMY_NEUTRAL:F

    mul-float v4, v4, v5

    .line 1438
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1437
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    goto/16 :goto_e7

    .line 1441
    :cond_5d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    if-nez v1, :cond_a7

    .line 1442
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    int-to-float v4, v4

    .line 1443
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1442
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    goto :goto_e7

    .line 1446
    :cond_a7
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 1447
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1446
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    .line 1434
    :cond_e7
    :goto_e7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1452
    .end local v0    # "i":I
    :cond_eb
    return-void
.end method

.method public final buildProvincesManpower()V
    .registers 9

    .line 1474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_eb

    .line 1475
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 1476
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-nez v1, :cond_5d

    .line 1477
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->BASE_MANPOWER_NEUTRAL:F

    mul-float v4, v4, v5

    .line 1478
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1477
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    goto/16 :goto_e7

    .line 1481
    :cond_5d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    if-nez v1, :cond_a7

    .line 1482
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    int-to-float v4, v4

    .line 1483
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1482
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    goto :goto_e7

    .line 1486
    :cond_a7
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 1487
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1486
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    .line 1474
    :cond_e7
    :goto_e7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1492
    .end local v0    # "i":I
    :cond_eb
    return-void
.end method

.method public final buildProvincesPopulation()V
    .registers 13

    .line 1368
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ge v0, v1, :cond_7e

    .line 1369
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    if-eqz v1, :cond_7b

    .line 1371
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    .line 1373
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v1, v4, :cond_7b

    .line 1374
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v7, :cond_51

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v7, v7

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    :goto_52
    add-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1368
    .end local v1    # "j":I
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1380
    .end local v0    # "i":I
    :cond_7e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7f
    :try_start_7f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_274

    .line 1381
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_270

    .line 1382
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez v1, :cond_107

    .line 1383
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v7, :cond_df

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v7, v7

    goto :goto_e0

    :cond_df
    const/4 v7, 0x0

    :goto_e0
    add-float/2addr v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v7, 0x461c4000    # 10000.0f

    div-float/2addr v4, v7

    mul-float v6, v6, v4

    float-to-int v4, v6

    invoke-virtual {v1, v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    goto/16 :goto_270

    .line 1388
    :cond_107
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    if-nez v1, :cond_172

    .line 1389
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    int-to-float v1, v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v6, :cond_151

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v6, v6

    goto :goto_152

    :cond_151
    const/4 v6, 0x0

    :goto_152
    add-float/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v4

    mul-float v1, v1, v5

    float-to-int v1, v1

    .local v1, "population":I
    goto :goto_1cb

    .line 1392
    .end local v1    # "population":I
    :cond_172
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    int-to-float v1, v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v5, :cond_199

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v5, v5

    goto :goto_19a

    :cond_199
    const/4 v5, 0x0

    :goto_19a
    add-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v5, v5, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    div-float/2addr v4, v5

    mul-float v1, v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 1395
    .restart local v1    # "population":I
    :goto_1cb
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-nez v4, :cond_1e4

    .line 1396
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    goto/16 :goto_270

    .line 1399
    :cond_1e4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1fe

    .line 1400
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    goto :goto_270

    .line 1403
    :cond_1fe
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v4, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_204
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v6, v7, :cond_229

    .line 1406
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->CORES_STARTING_POPULATION_MIN:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->CORES_STARTING_POPULATION_RANDOM:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    add-int/lit8 v6, v6, 0x1

    goto :goto_204

    .line 1409
    .end local v6    # "a":I
    :cond_229
    const/4 v5, 0x0

    .line 1410
    .local v5, "sum":I
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_22b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v6, v7, :cond_241

    .line 1411
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v5, v7

    .line 1410
    add-int/lit8 v6, v6, 0x1

    goto :goto_22b

    .line 1414
    .end local v6    # "a":I
    :cond_241
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_242
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v6, v7, :cond_26d

    .line 1415
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v8

    int-to-float v9, v1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v5

    div-float/2addr v10, v11

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    .line 1414
    add-int/lit8 v6, v6, 0x1

    goto :goto_242

    .line 1418
    .end local v6    # "a":I
    :cond_26d
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_270} :catch_275

    .line 1380
    .end local v1    # "population":I
    .end local v4    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "sum":I
    :cond_270
    :goto_270
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7f

    .line 1426
    .end local v0    # "i":I
    :cond_274
    goto :goto_279

    .line 1424
    :catch_275
    move-exception v0

    .line 1425
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1428
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_279
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_27a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_28a

    .line 1429
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    .line 1428
    add-int/lit8 v0, v0, 0x1

    goto :goto_27a

    .line 1431
    .end local v0    # "i":I
    :cond_28a
    return-void
.end method

.method public final buildProvincesReligion()V
    .registers 4

    .line 1360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 1361
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_32

    .line 1362
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion_LoadScenario(I)V

    .line 1360
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1365
    .end local v0    # "i":I
    :cond_35
    return-void
.end method

.method public final buildProvincesTaxEfficiency()V
    .registers 9

    .line 1455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_eb

    .line 1456
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 1457
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-nez v1, :cond_5d

    .line 1458
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->BASE_TAX_EFFICIENCY_NEUTRAL:F

    mul-float v4, v4, v5

    .line 1459
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    .line 1458
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    goto/16 :goto_e7

    .line 1462
    :cond_5d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    if-nez v1, :cond_a7

    .line 1463
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    goto :goto_e7

    .line 1466
    :cond_a7
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float v4, v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    .line 1455
    :cond_e7
    :goto_e7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1471
    .end local v0    # "i":I
    :cond_eb
    return-void
.end method

.method public final buildStartingAdvisors(II)V
    .registers 9
    .param p1, "startID"    # I
    .param p2, "endID"    # I

    .line 1754
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e3

    .line 1755
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_df

    .line 1756
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-nez v1, :cond_44

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_ADMINISTRATIVE_CHANCE:[I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    if-ge v1, v4, :cond_44

    .line 1757
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1759
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, v0, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 1762
    :cond_44
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_77

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_ECONOMY_CHANCE:[I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    if-ge v1, v4, :cond_77

    .line 1763
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1765
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, v0, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 1768
    :cond_77
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_ab

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_INNOVATION_CHANCE:[I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    if-ge v1, v4, :cond_ab

    .line 1769
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1771
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, v0, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 1774
    :cond_ab
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_df

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_MILITARY_CHANCE:[I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v4

    if-ge v1, v2, :cond_df

    .line 1775
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 1777
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v1, v0, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 1754
    :cond_df
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1781
    .end local v0    # "i":I
    :cond_e3
    return-void
.end method

.method public final buildStartingArmy()V
    .registers 3

    .line 1797
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1798
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingArmy(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_e

    .line 1797
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1802
    .end local v0    # "i":I
    :cond_d
    goto :goto_12

    .line 1800
    :catch_e
    move-exception v0

    .line 1801
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1803
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public final buildStartingArmy(I)V
    .registers 13
    .param p1, "i"    # I

    .line 1806
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_222

    .line 1808
    :try_start_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY_RANDOM:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v1, v1, v2

    if-lez v1, :cond_39

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY_RANDOM:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->STARTING_ARMY:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1810
    .local v0, "units":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v1, p1, :cond_61

    .line 1811
    int-to-float v1, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY_VASSAL:F

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 1814
    :cond_61
    if-lez v0, :cond_21d

    .line 1815
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    .local v1, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1818
    .local v2, "firstLine":I
    int-to-float v4, v0

    div-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1820
    .local v4, "secondLine":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-nez v5, :cond_84

    .line 1821
    move v2, v0

    .line 1822
    const/4 v4, 0x0

    .line 1825
    :cond_84
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-nez v5, :cond_96

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-nez v5, :cond_96

    .line 1826
    const/4 v2, 0x0

    .line 1827
    move v4, v0

    .line 1830
    :cond_96
    const/4 v5, 0x0

    .line 1832
    .local v5, "flankUnits":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-lez v6, :cond_ba

    .line 1833
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-nez v6, :cond_aa

    .line 1834
    move v5, v2

    .line 1835
    const/4 v2, 0x0

    goto :goto_ba

    .line 1838
    :cond_aa
    int-to-float v6, v2

    div-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 1839
    int-to-float v6, v2

    div-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1843
    :cond_ba
    :goto_ba
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-lez v3, :cond_f8

    .line 1844
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_c3
    if-ge v3, v2, :cond_f8

    .line 1845
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 1846
    .local v6, "rand":I
    new-instance v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    .line 1850
    .end local v3    # "a":I
    .end local v6    # "rand":I
    :cond_f8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-lez v3, :cond_136

    .line 1851
    const/4 v3, 0x0

    .restart local v3    # "a":I
    :goto_101
    if-ge v3, v5, :cond_136

    .line 1852
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 1853
    .restart local v6    # "rand":I
    new-instance v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    add-int/lit8 v3, v3, 0x1

    goto :goto_101

    .line 1857
    .end local v3    # "a":I
    .end local v6    # "rand":I
    :cond_136
    const/4 v3, 0x0

    .line 1859
    .local v3, "siegeUnits":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-lez v6, :cond_150

    .line 1860
    int-to-float v6, v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->STARTING_ARMY_SIEGE_UNITS_PERC:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v7, v7, v8

    mul-float v6, v6, v7

    float-to-int v3, v6

    .line 1861
    sub-int/2addr v4, v3

    .line 1864
    :cond_150
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-lez v6, :cond_18e

    .line 1865
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_159
    if-ge v6, v4, :cond_18e

    .line 1866
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 1867
    .local v7, "rand":I
    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1865
    add-int/lit8 v6, v6, 0x1

    goto :goto_159

    .line 1871
    .end local v6    # "a":I
    .end local v7    # "rand":I
    :cond_18e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-lez v6, :cond_1cc

    .line 1872
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_197
    if-ge v6, v3, :cond_1cc

    .line 1873
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 1874
    .restart local v7    # "rand":I
    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    add-int/lit8 v6, v6, 0x1

    goto :goto_197

    .line 1878
    .end local v6    # "a":I
    .end local v7    # "rand":I
    :cond_1cc
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    if-ltz v6, :cond_1f1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v6, p1, :cond_1f1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    goto :goto_207

    :cond_1f1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    .line 1880
    .local v6, "inProvinceID":I
    :goto_207
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object v7

    .line 1882
    .local v7, "armyGeneral":Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_21d

    .line 1883
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    new-instance v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v9, p1, v6, v1, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21d} :catch_21e

    .line 1889
    .end local v0    # "units":I
    .end local v1    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v2    # "firstLine":I
    .end local v3    # "siegeUnits":I
    .end local v4    # "secondLine":I
    .end local v5    # "flankUnits":I
    .end local v6    # "inProvinceID":I
    .end local v7    # "armyGeneral":Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    :cond_21d
    goto :goto_222

    .line 1887
    :catch_21e
    move-exception v0

    .line 1888
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1891
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_222
    :goto_222
    return-void
.end method

.method public final buildStartingGenerals(II)V
    .registers 8
    .param p1, "startID"    # I
    .param p2, "endID"    # I

    .line 1784
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_43

    .line 1785
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_40

    .line 1786
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_NUM_OF_STARTING_GENERALS:[I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_40

    .line 1787
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_GENERAL_CHANCE:[I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    if-ge v2, v3, :cond_3d

    .line 1788
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 1786
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1784
    .end local v1    # "j":I
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1793
    .end local v0    # "i":I
    :cond_43
    return-void
.end method

.method public final clearData()V
    .registers 3

    .line 884
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->AUTO_SAVE_LAST_TURN_ID:I

    .line 886
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_1_ClearData()V

    .line 888
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->resetPriceChangePerc()V

    .line 890
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 892
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogRefresh()V

    .line 893
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->clearData()V

    .line 895
    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->clearData()V

    .line 897
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->clearData()V

    .line 899
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->clearData()V

    .line 900
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->clearData()V

    .line 902
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    .line 903
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    .line 905
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->clearData()V

    .line 907
    invoke-static {}, Laoc/kingdoms/lukasz/map/war/WarManager;->clearData()V

    .line 909
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->aiBudget:Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    .line 911
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    .line 912
    return-void
.end method

.method public final clearScenarios()V
    .registers 2

    .line 304
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    .line 307
    return-void
.end method

.method public final createScenario()V
    .registers 8

    .line 827
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->disposeCivilizations()V

    .line 828
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearAllianceSpecial()V

    .line 830
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    .line 831
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 832
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->AUTO_SAVE_LAST_TURN_ID:I

    .line 833
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    .line 836
    :try_start_17
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    .line 837
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    .line 838
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_41} :catch_42

    .line 841
    goto :goto_46

    .line 839
    :catch_42
    move-exception v2

    .line 840
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 842
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_46
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    .line 843
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateManpowerImg()V

    .line 845
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    .line 847
    const-string v2, ""

    sput-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sAuthor:Ljava/lang/String;

    .line 848
    sput-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    .line 849
    sput-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sName:Ljava/lang/String;

    .line 851
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_63
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 852
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->clearData()V

    .line 851
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 855
    .end local v2    # "i":I
    :cond_73
    invoke-static {}, Laoc/kingdoms/lukasz/map/WondersManager;->initProvinceWonders()V

    .line 858
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 861
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 864
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_92
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_fa

    .line 865
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_99
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v4

    if-ge v3, v4, :cond_de

    .line 866
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_d7

    const/4 v5, 0x1

    goto :goto_d8

    :cond_d7
    const/4 v5, 0x0

    :goto_d8
    invoke-virtual {v4, v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 865
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 869
    .end local v3    # "j":I
    :cond_de
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_f7

    .line 870
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince_Just(I)V

    .line 864
    :cond_f7
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 874
    .end local v2    # "i":I
    :cond_fa
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_fb
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_107

    .line 875
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_fb

    .line 878
    .end local v0    # "i":I
    :cond_107
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 879
    return-void
.end method

.method public final initCivilizations_ArmiesWithoutGenerals()V
    .registers 3

    .line 1344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1345
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->buildArmiesWithoutGenerals(I)V

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1347
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public final initCivilizations_ConvertReligion()V
    .registers 3

    .line 1332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1333
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->buildProvincesConvertReligion(I)V

    .line 1332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1335
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public final initCivilizations_NonCore()V
    .registers 3

    .line 1338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1339
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->buildProvincesNonCore(I)V

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1341
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public final loadCivilizations(Z)Ljava/util/List;
    .registers 25
    .param p1, "nEditor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/Civilization;",
            ">;"
        }
    .end annotation

    .line 609
    move-object/from16 v1, p0

    const-string v0, ".json"

    const-string v2, "Data_"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v3, "lCivs":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/civilization/Civilization;>;"
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput v4, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 618
    :try_start_1b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_177

    const-string v5, "/"

    const-string v6, "scenarios/"

    const-string v7, "map/"

    if-eqz v4, :cond_bb

    :try_start_27
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    .line 619
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_bb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 620
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-nez v4, :cond_79

    goto :goto_bb

    .line 625
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_f2

    .line 622
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :cond_bb
    :goto_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Data.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 628
    .restart local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    :goto_f2
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 629
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 631
    .local v4, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v5, 0x1

    .line 633
    .local v5, "tCivID":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_104
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    move-object v15, v7

    .line 634
    .local v15, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-virtual {v2, v7, v15}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    move-object v14, v7

    .line 636
    .local v14, "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    iget-object v7, v14, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v7

    move-object v13, v7

    .line 638
    .local v13, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    new-instance v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iget-object v9, v14, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    iget v10, v14, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->PCID:I

    iget v11, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v8, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v7, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    move-object/from16 v18, v0

    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v18, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    iget v0, v14, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    move-object/from16 v19, v2

    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v19, "json":Lcom/badlogic/gdx/utils/Json;
    iget v2, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->ReligionID:I

    move-object/from16 v20, v6

    iget v6, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    const/16 v17, 0x1

    move/from16 v16, v7

    move-object v7, v12

    move/from16 v21, v8

    move v8, v5

    move-object v1, v12

    move/from16 v12, v21

    move-object/from16 v21, v13

    .end local v13    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    .local v21, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    move/from16 v13, v16

    move-object/from16 v22, v4

    move-object v4, v14

    .end local v14    # "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    .local v4, "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    .local v22, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    move v14, v0

    move-object v0, v15

    .end local v15    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .local v0, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    move v15, v2

    move/from16 v16, v6

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIIIZ)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    .line 647
    add-int/lit8 v5, v5, 0x1

    .line 648
    nop

    .line 649
    .end local v0    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v4    # "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    .end local v21    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    move-object/from16 v1, p0

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v22

    goto :goto_104

    .line 651
    .end local v18    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v19    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v22    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v4, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :cond_16c
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v22, v4

    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .restart local v18    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v19    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v22    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_175} :catch_177

    .line 652
    nop

    .line 655
    .end local v5    # "tCivID":I
    .end local v18    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v19    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v22    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_17b

    .line 653
    :catch_177
    move-exception v0

    .line 654
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 658
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_17b
    move-object/from16 v1, p0

    :try_start_17d
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_189} :catch_18a

    .line 661
    goto :goto_18f

    .line 659
    :catch_18a
    move-exception v0

    .line 660
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    .line 663
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_18f
    return-object v3
.end method

.method public final loadCivilizationsProvinces()V
    .registers 11

    .line 668
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DataProvinces.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 670
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 671
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 673
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v3, 0x1

    .line 675
    .local v3, "tCivID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    .line 676
    .local v5, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;

    .line 678
    .local v6, "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;->Provinces:[I

    array-length v8, v8

    .local v8, "iSize":I
    :goto_67
    if-ge v7, v8, :cond_77

    .line 679
    iget-object v9, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;->Provinces:[I

    aget v9, v9, v7

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_LoadScenario(I)V

    .line 678
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 682
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_77
    nop

    .end local v5    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;
    add-int/lit8 v3, v3, 0x1

    .line 683
    goto :goto_4f

    .line 685
    :cond_7b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_80

    .line 686
    nop

    .line 689
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v3    # "tCivID":I
    goto :goto_84

    .line 687
    :catch_80
    move-exception v0

    .line 688
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 690
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_84
    return-void
.end method

.method public final loadCores()V
    .registers 10

    .line 696
    const-string v0, "Cores.json"

    const-string v1, "/"

    const-string v2, "scenarios/"

    const-string v3, "map/"

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 699
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 700
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 702
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 703
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;

    .line 705
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;
    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    if-ltz v6, :cond_f3

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_f3

    .line 706
    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->clearCores()V

    .line 708
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b3
    iget-object v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f3

    .line 709
    iget-object v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_f0

    iget-object v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v8

    if-ge v7, v8, :cond_f0

    .line 710
    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addCore_Just(I)V

    .line 708
    :cond_f0
    add-int/lit8 v6, v6, 0x1

    goto :goto_b3

    .line 714
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;
    .end local v6    # "i":I
    :cond_f3
    goto :goto_89

    .line 716
    :cond_f4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f7} :catch_f9

    .line 717
    nop

    .line 721
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_f8
    goto :goto_fd

    .line 719
    :catch_f9
    move-exception v0

    .line 720
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 722
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_fd
    return-void
.end method

.method public final loadPreviews()V
    .registers 11

    .line 310
    const-string v0, "previewSpecial.png"

    const-string v1, "/"

    const-string v2, "scenarios/"

    const-string v3, "map/"

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_32

    .line 311
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 312
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 313
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 316
    .end local v4    # "i":I
    :cond_2d
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 319
    :cond_32
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_33
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_102

    .line 321
    :try_start_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 322
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 325
    :cond_b6
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "preview.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_f9} :catch_fa

    .line 329
    :goto_f9
    goto :goto_fe

    .line 327
    :catch_fa
    move-exception v5

    .line 328
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 319
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_fe
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    .line 331
    .end local v4    # "i":I
    :cond_102
    return-void
.end method

.method public final loadReligions(Z)V
    .registers 11
    .param p1, "editorMode"    # Z

    .line 737
    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadReligions_JustBuild(Z)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Religions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 741
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 742
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 744
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 745
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;

    .line 747
    .local v5, "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;
    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    if-ltz v6, :cond_cc

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_cc

    .line 748
    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    .line 750
    if-nez p1, :cond_bd

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v6, :cond_bd

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_bd

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    if-ne v6, v7, :cond_bd

    .line 751
    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V

    .line 754
    :cond_bd
    if-eqz p1, :cond_cc

    .line 755
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    iget v8, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 758
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;
    :cond_cc
    goto :goto_51

    .line 760
    :cond_cd
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d0} :catch_d2

    .line 761
    nop

    .line 764
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    goto :goto_d6

    .line 762
    :catch_d2
    move-exception v0

    .line 763
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 765
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d6
    return-void
.end method

.method public final loadReligions_JustBuild(Z)V
    .registers 5
    .param p1, "editorMode"    # Z

    .line 727
    if-eqz p1, :cond_1b

    .line 728
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 730
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 733
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public final loadScenarioCharacters(Z)V
    .registers 12
    .param p1, "nEditor"    # Z

    .line 770
    const-string v0, "Characters.json"

    const-string v1, "/"

    const-string v2, "scenarios/"

    const-string v3, "map/"

    if-nez p1, :cond_124

    .line 772
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 775
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 776
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 778
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_97} :catch_120

    .line 780
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    :try_start_97
    const-class v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;

    .line 782
    .local v5, "tData":Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;
    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->CivTAG:Ljava/lang/String;

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v6

    .line 784
    .local v6, "civID":I
    if-lez v6, :cond_114

    .line 785
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Administrative:Ljava/lang/String;

    if-eqz v7, :cond_b9

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Administrative:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b9

    .line 786
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Administrative:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    .line 789
    :cond_b9
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Economic:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v7, :cond_cb

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Economic:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_cb

    .line 790
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Economic:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    .line 793
    :cond_cb
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Innovation:Ljava/lang/String;

    if-eqz v7, :cond_dd

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Innovation:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_dd

    .line 794
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Innovation:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v6, v7, v9}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    .line 797
    :cond_dd
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Military:Ljava/lang/String;

    if-eqz v7, :cond_ef

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Military:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_ef

    .line 798
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Military:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-static {v6, v7, v9}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    .line 801
    :cond_ef
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    if-eqz v7, :cond_114

    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_114

    .line 802
    iget-object v7, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    array-length v7, v7

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_fc
    if-ltz v7, :cond_114

    .line 803
    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_111

    .line 804
    iget-object v8, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    aget-object v8, v8, v7

    const/16 v9, -0x63

    invoke-static {v6, v8, v9, v9}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadGeneral(ILjava/lang/String;II)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_111} :catch_115

    .line 802
    :cond_111
    add-int/lit8 v7, v7, -0x1

    goto :goto_fc

    .line 811
    .end local v5    # "tData":Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;
    .end local v6    # "civID":I
    .end local v7    # "i":I
    :cond_114
    goto :goto_119

    .line 809
    :catch_115
    move-exception v5

    .line 810
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_116
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 812
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_119
    goto/16 :goto_8b

    .line 814
    :cond_11b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11e} :catch_120

    .line 815
    nop

    .line 819
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_11f
    goto :goto_124

    .line 817
    :catch_120
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 821
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_124
    :goto_124
    return-void
.end method

.method public final loadScenario_1()V
    .registers 4

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PB39:LS1 called sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "PB39"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    .line 933
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_1_ClearData()V

    .line 935
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateManpowerImg()V

    .line 936
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateAge(Z)V

    .line 938
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    .line 940
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    .line 942
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    .line 943
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    .line 944
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    .line 945
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    .line 946
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    .line 947
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    .line 948
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    .line 950
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    .line 951
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    .line 952
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    .line 953
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    .line 955
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    .line 956
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    const/16 v2, 0x18

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    .line 957
    return-void
.end method

.method public final loadScenario_10()V
    .registers 3

    .line 1035
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulers(II)V

    .line 1036
    return-void
.end method

.method public final loadScenario_11()V
    .registers 3

    .line 1039
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulers(II)V

    .line 1040
    return-void
.end method

.method public final loadScenario_12()V
    .registers 3

    .line 1043
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$1;

    const-string v1, "buildCivilizationsRegions"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapScenarios;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1050
    invoke-static {}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->initRandomAdvantages()V

    .line 1051
    invoke-static {}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->initAdvantagePoints()V

    .line 1052
    return-void
.end method

.method public final loadScenario_13()V
    .registers 1

    .line 1055
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesReligion()V

    .line 1056
    return-void
.end method

.method public final loadScenario_14()V
    .registers 1

    .line 1059
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesCores()V

    .line 1060
    return-void
.end method

.method public final loadScenario_15()V
    .registers 1

    .line 1063
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioArmies()V

    .line 1064
    return-void
.end method

.method public final loadScenario_16()V
    .registers 1

    .line 1067
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesEconomy()V

    .line 1068
    return-void
.end method

.method public final loadScenario_17()V
    .registers 1

    .line 1071
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesTaxEfficiency()V

    .line 1072
    return-void
.end method

.method public final loadScenario_18()V
    .registers 1

    .line 1075
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesManpower()V

    .line 1076
    return-void
.end method

.method public final loadScenario_19()V
    .registers 1

    .line 1079
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsGovernmentBuildings()V

    .line 1080
    return-void
.end method

.method public final loadScenario_1_ClearData()V
    .registers 5

    .line 918
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-gez v1, :cond_7

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    :cond_7
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PB39:CLR sid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "PB39"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->disposeCivilizations()V

    .line 919
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearAllianceSpecial()V

    .line 921
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 922
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    .line 924
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    .line 925
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    .line 926
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PB39:CLR cal="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PB39"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    .line 928
    return-void
.end method

.method public final loadScenario_2()V
    .registers 1

    .line 961
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadWasteland()V

    .line 962
    return-void
.end method

.method public final loadScenario_20()V
    .registers 1

    .line 1083
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioBuildings()V

    .line 1084
    return-void
.end method

.method public final loadScenario_21()V
    .registers 1

    .line 1087
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvinceData()V

    .line 1088
    return-void
.end method

.method public final loadScenario_22()V
    .registers 1

    .line 1091
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivData()V

    .line 1092
    return-void
.end method

.method public final loadScenario_23()V
    .registers 1

    .line 1095
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadCores()V

    .line 1096
    return-void
.end method

.method public final loadScenario_24()V
    .registers 1

    .line 1099
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesPopulation()V

    .line 1100
    return-void
.end method

.method public final loadScenario_25(Z)V
    .registers 2
    .param p1, "nEditor"    # Z

    .line 1103
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadReligions(Z)V

    .line 1104
    return-void
.end method

.method public final loadScenario_26()V
    .registers 1

    .line 1107
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsGold()V

    .line 1108
    return-void
.end method

.method public final loadScenario_27()V
    .registers 1

    .line 1111
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsManpower()V

    .line 1112
    return-void
.end method

.method public final loadScenario_28()V
    .registers 2

    .line 1115
    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced(Z)V

    .line 1116
    return-void
.end method

.method public final loadScenario_29()V
    .registers 1

    .line 1119
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->initUniqueCivsGoods()V

    .line 1121
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildDistanceToCapital()V

    .line 1122
    return-void
.end method

.method public final loadScenario_3(Z)V
    .registers 5
    .param p1, "nEditor"    # Z

    .line 965
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadCivilizations(Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    .line 966
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 968
    if-eqz p1, :cond_21

    .line 969
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 970
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 973
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public final loadScenario_30()V
    .registers 1

    .line 1125
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioRelations()V

    .line 1126
    return-void
.end method

.method public final loadScenario_31()V
    .registers 1

    .line 1129
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioMilitaryAccess()V

    .line 1130
    return-void
.end method

.method public final loadScenario_32()V
    .registers 1

    .line 1133
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioAlliances()V

    .line 1134
    return-void
.end method

.method public final loadScenario_33()V
    .registers 1

    .line 1137
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioDefensive()V

    .line 1138
    return-void
.end method

.method public final loadScenario_34()V
    .registers 1

    .line 1141
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioTruces()V

    .line 1142
    return-void
.end method

.method public final loadScenario_35()V
    .registers 1

    .line 1145
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioNonAggression()V

    .line 1146
    return-void
.end method

.method public final loadScenario_36(Z)V
    .registers 2
    .param p1, "nEditor"    # Z

    .line 1149
    if-nez p1, :cond_5

    .line 1150
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingRelationsRandom()V

    .line 1152
    :cond_5
    return-void
.end method

.method public final loadScenario_37()V
    .registers 1

    .line 1155
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioGuarantee()V

    .line 1156
    return-void
.end method

.method public final loadScenario_38(Z)V
    .registers 2
    .param p1, "editorMode"    # Z

    .line 1159
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenarioCharacters(Z)V

    .line 1160
    return-void
.end method

.method public final loadScenario_39(Z)V
    .registers 2
    .param p1, "editorMode"    # Z

    .line 1164
    return-void
.end method

.method public final loadScenario_3_A()V
    .registers 3

    .line 976
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    if-ge v0, v1, :cond_f

    .line 977
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadScenario_A()V

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 979
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public final loadScenario_3_B()V
    .registers 3

    .line 982
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    if-ge v0, v1, :cond_f

    .line 983
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadScenario_B()V

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public final loadScenario_3_C()V
    .registers 1

    .line 988
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadCivilizationsProvinces()V

    .line 989
    return-void
.end method

.method public final loadScenario_4()V
    .registers 3

    .line 992
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 993
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree()V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 995
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public final loadScenario_40(Z)V
    .registers 4
    .param p1, "editorMode"    # Z

    .line 1167
    if-nez p1, :cond_14

    .line 1168
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingAdvisors(II)V

    .line 1170
    :cond_14
    return-void
.end method

.method public final loadScenario_41(Z)V
    .registers 4
    .param p1, "editorMode"    # Z

    .line 1173
    if-nez p1, :cond_17

    .line 1174
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingAdvisors(II)V

    .line 1176
    :cond_17
    return-void
.end method

.method public final loadScenario_42()V
    .registers 1

    .line 1179
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioAlliancesSpecial()V

    .line 1180
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadAlliancesSpecial_Images()V

    .line 1181
    return-void
.end method

.method public final loadScenario_43()V
    .registers 1

    .line 1184
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildAlliancesSpecial()V

    .line 1185
    return-void
.end method

.method public final loadScenario_44()V
    .registers 1

    .line 1188
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildManpower()V

    .line 1189
    return-void
.end method

.method public final loadScenario_45()V
    .registers 1

    .line 1192
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V

    .line 1193
    return-void
.end method

.method public final loadScenario_46()V
    .registers 1

    .line 1197
    return-void
.end method

.method public final loadScenario_47()V
    .registers 2

    .line 1200
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCities()V

    .line 1201
    return-void
.end method

.method public final loadScenario_48()V
    .registers 3

    .line 1204
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$2;

    const-string v1, "loadScenario_48"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapScenarios;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1212
    return-void
.end method

.method public final loadScenario_49(Z)V
    .registers 4
    .param p1, "editorMode"    # Z

    .line 1215
    if-nez p1, :cond_14

    .line 1216
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingGenerals(II)V

    .line 1218
    :cond_14
    return-void
.end method

.method public final loadScenario_5()V
    .registers 1

    .line 998
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildProvinceIsCapital()V

    .line 999
    return-void
.end method

.method public final loadScenario_50(Z)V
    .registers 4
    .param p1, "editorMode"    # Z

    .line 1221
    if-nez p1, :cond_17

    .line 1222
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingGenerals(II)V

    .line 1224
    :cond_17
    return-void
.end method

.method public final loadScenario_51(Z)V
    .registers 2
    .param p1, "editorMode"    # Z

    .line 1227
    if-nez p1, :cond_5

    .line 1228
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingArmy()V

    .line 1230
    :cond_5
    return-void
.end method

.method public final loadScenario_52()V
    .registers 1

    .line 1233
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildArmyPosition()V

    .line 1234
    return-void
.end method

.method public final loadScenario_53()V
    .registers 1

    .line 1237
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsStability()V

    .line 1238
    return-void
.end method

.method public final loadScenario_54()V
    .registers 1

    .line 1241
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsLegacy_Nukes_Aggressiveness()V

    .line 1242
    return-void
.end method

.method public final loadScenario_55()V
    .registers 1

    .line 1245
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildIncome()V

    .line 1246
    return-void
.end method

.method public final loadScenario_56()V
    .registers 1

    .line 1249
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->initCivilizations_ConvertReligion()V

    .line 1250
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->initCivilizations_NonCore()V

    .line 1251
    return-void
.end method

.method public final loadScenario_57()V
    .registers 1

    .line 1254
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->initCivilizations_ArmiesWithoutGenerals()V

    .line 1255
    return-void
.end method

.method public final loadScenario_58()V
    .registers 1

    .line 1258
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->updateUQ_UI()V

    .line 1259
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsColors()V

    .line 1260
    return-void
.end method

.method public final loadScenario_59()V
    .registers 1

    .line 1264
    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->clearEventsScenario()V

    .line 1265
    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario()V

    .line 1267
    return-void
.end method

.method public final loadScenario_6()V
    .registers 1

    .line 1002
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->initProvinceData()V

    .line 1003
    return-void
.end method

.method public final loadScenario_60()V
    .registers 1

    .line 1270
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsNeighbors()V

    .line 1271
    return-void
.end method

.method public final loadScenario_61()V
    .registers 1

    .line 1275
    return-void
.end method

.method public final loadScenario_62(Z)V
    .registers 3
    .param p1, "nEditor"    # Z

    .line 1278
    if-nez p1, :cond_d

    .line 1279
    invoke-static {}, Laoc/kingdoms/lukasz/map/FormableCivManager;->buildFormableCivilizations()V

    .line 1280
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->loadFormableCivs()V

    .line 1282
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;->reloadFlags:Z

    .line 1284
    :cond_d
    return-void
.end method

.method public final loadScenario_63()V
    .registers 1

    .line 1288
    return-void
.end method

.method public final loadScenario_64()V
    .registers 1

    .line 1291
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->loadMissions_Civs()V

    .line 1292
    return-void
.end method

.method public final loadScenario_7()V
    .registers 6

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 1008
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 1009
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_46

    const/4 v3, 0x1

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    invoke-virtual {v2, v3, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1012
    .end local v1    # "j":I
    :cond_4d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_66

    .line 1013
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince_LoadScenario(I)V

    .line 1007
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1017
    .end local v0    # "i":I
    :cond_69
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 1018
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1020
    .end local v0    # "i":I
    :cond_7a
    return-void
.end method

.method public final loadScenario_8()V
    .registers 4

    .line 1023
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1024
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;-><init>()V

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    .line 1026
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_DIPLOMACY_POINTS:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public final loadScenario_9()V
    .registers 1

    .line 1031
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels()V

    .line 1032
    return-void
.end method

.method public final loadScenarios(Z)V
    .registers 21
    .param p1, "updateDefaultScenario"    # Z

    .line 104
    move-object/from16 v1, p0

    if-nez p1, :cond_7

    .line 105
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->clearScenarios()V

    .line 108
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 109
    .local v2, "tempScenarios_TagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 111
    .local v3, "tempDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;>;"
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    const-string v4, ";"

    const-string v5, "Scenarios.txt"

    const-string v6, "Details.json"

    const-string v7, "/"

    const-string v8, "scenarios/"

    const-string v9, "map/"

    if-eqz v0, :cond_67c

    .line 113
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_296

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v5, v0

    .line 116
    .local v5, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 117
    .local v10, "tempT":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 120
    .local v4, "tagsSPLITED":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v11, v4

    move v12, v0

    .end local v0    # "i":I
    .local v11, "iSize":I
    .local v12, "i":I
    :goto_77
    if-ge v12, v11, :cond_294

    .line 121
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object v13, v0

    .line 123
    .local v13, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v0, 0x0

    .line 125
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v14, 0x0

    .local v14, "a":I
    :goto_81
    sget v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v14, v15, :cond_194

    .line 126
    sget-boolean v15, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v15, :cond_10b

    .line 127
    sget-object v15, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    move-object/from16 v16, v0

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "file":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v17, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v4, v12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 128
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v15, v4, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 129
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_198

    .line 132
    .end local v17    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_10b
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v15, v4, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 133
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v15, v4, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 134
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_198

    .line 125
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_18c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    goto/16 :goto_81

    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_194
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .line 139
    .end local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v14    # "a":I
    .restart local v17    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :goto_198
    if-nez v0, :cond_239

    .line 140
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_19b
    sget v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v5, v14, :cond_236

    .line 141
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v15, v4, v12

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_230

    .line 142
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v15}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_22d} :catch_676

    .line 143
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v16, v0

    goto :goto_23b

    .line 140
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_230
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_19b

    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_236
    move-object/from16 v16, v0

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_23b

    .line 139
    .end local v5    # "a":I
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_239
    move-object/from16 v16, v0

    .line 149
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_23b
    if-nez v16, :cond_274

    .line 150
    :try_start_23d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v4, v12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_26a} :catch_26d

    move-object/from16 v16, v0

    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_274

    .line 152
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_26d
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_26e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    goto :goto_276

    .line 154
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_274
    :goto_274
    move-object/from16 v0, v16

    .line 156
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_276
    if-eqz v0, :cond_28e

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_28e

    .line 157
    aget-object v5, v4, v12

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-class v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {v13, v5, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v13    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_28e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v17

    goto/16 :goto_77

    .end local v17    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v5, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_294
    move-object/from16 v17, v5

    .line 163
    .end local v4    # "tagsSPLITED":[Ljava/lang/String;
    .end local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "tempT":Ljava/lang/String;
    .end local v11    # "iSize":I
    .end local v12    # "i":I
    :cond_296
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    .line 166
    .local v4, "listBegin":I
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_2c5

    .line 167
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_2ea

    .line 169
    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_2c5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 172
    .restart local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_2ea
    array-length v5, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2ed
    if-ge v11, v5, :cond_305

    aget-object v12, v0, v11

    .line 173
    .local v12, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_302

    .line 174
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v12    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_302
    add-int/lit8 v11, v11, 0x1

    goto :goto_2ed

    .line 178
    :cond_305
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_306
    sget v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v5, v11, :cond_391

    .line 179
    sget-boolean v11, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v11, :cond_341

    .line 180
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    move-object v0, v11

    goto :goto_373

    .line 182
    :cond_341
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    move-object v0, v11

    .line 185
    :goto_373
    array-length v11, v0

    const/4 v12, 0x0

    :goto_375
    if-ge v12, v11, :cond_38d

    aget-object v13, v0, v12

    .line 186
    .local v13, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_38a

    .line 187
    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v13    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_38a
    add-int/lit8 v12, v12, 0x1

    goto :goto_375

    .line 178
    :cond_38d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_306

    .line 192
    .end local v5    # "i":I
    :cond_391
    const/4 v5, 0x0

    move/from16 v18, v5

    move-object v5, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v5, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_397
    sget v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v0, v11, :cond_3f2

    .line 193
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v13}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    move-object v5, v11

    .line 195
    array-length v11, v5

    const/4 v12, 0x0

    :goto_3d7
    if-ge v12, v11, :cond_3ef

    aget-object v13, v5, v12

    .line 196
    .restart local v13    # "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3ec

    .line 197
    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v13    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_3ec
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d7

    .line 192
    :cond_3ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_397

    .line 203
    .end local v0    # "i":I
    :cond_3f2
    move v0, v4

    .restart local v0    # "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10
    :try_end_3f7
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_3f7} :catch_676

    move v11, v10

    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    .restart local v11    # "iSize":I
    :goto_3f9
    if-ge v10, v11, :cond_675

    .line 205
    :try_start_3fb
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object v12, v0

    .line 207
    .local v12, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v0, 0x0

    .line 209
    .local v0, "file2":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_403
    sget v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v13, v14, :cond_562

    .line 210
    sget-boolean v14, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v14, :cond_493

    .line 211
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "file2":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_55c

    .line 212
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 213
    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    goto/16 :goto_564

    .line 216
    :cond_493
    move-object/from16 v16, v0

    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_55c

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 219
    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_564

    .line 209
    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_55c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_403

    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_562
    move-object/from16 v16, v0

    .line 224
    .end local v13    # "a":I
    :goto_564
    if-nez v0, :cond_60d

    .line 225
    const/4 v13, 0x0

    .restart local v13    # "a":I
    :goto_567
    sget v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v13, v14, :cond_60a

    .line 226
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_604

    .line 227
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v15}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_601
    .catch Ljava/lang/Exception; {:try_start_3fb .. :try_end_601} :catch_662

    .line 228
    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v16, v0

    goto :goto_60f

    .line 225
    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_604
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_567

    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_60a
    move-object/from16 v16, v0

    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_60f

    .line 224
    .end local v13    # "a":I
    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :cond_60d
    move-object/from16 v16, v0

    .line 234
    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :goto_60f
    if-nez v16, :cond_64c

    .line 235
    :try_start_611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_642
    .catch Ljava/lang/Exception; {:try_start_611 .. :try_end_642} :catch_645

    move-object/from16 v16, v0

    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_64c

    .line 237
    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    :catch_645
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_646
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    goto :goto_64e

    .line 239
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_64c
    :goto_64c
    move-object/from16 v0, v16

    .line 241
    .end local v16    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "file2":Lcom/badlogic/gdx/files/FileHandle;
    :goto_64e
    if-eqz v0, :cond_661

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v13

    if-eqz v13, :cond_661

    .line 242
    const-class v13, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {v12, v13, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_661
    .catch Ljava/lang/Exception; {:try_start_646 .. :try_end_661} :catch_662

    .line 248
    .end local v0    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_661
    goto :goto_671

    .line 244
    :catch_662
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/lang/Exception;
    add-int/lit8 v12, v10, -0x1

    .end local v10    # "i":I
    .local v12, "i":I
    :try_start_665
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 247
    .end local v11    # "iSize":I
    .local v10, "iSize":I
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_66f
    .catch Ljava/lang/Exception; {:try_start_665 .. :try_end_66f} :catch_676

    move v11, v10

    move v10, v12

    .line 203
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v12    # "i":I
    .local v10, "i":I
    .restart local v11    # "iSize":I
    :goto_671
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3f9

    .end local v4    # "listBegin":I
    .end local v5    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "i":I
    .end local v11    # "iSize":I
    :cond_675
    goto :goto_67a

    .line 250
    :catch_676
    move-exception v0

    .line 251
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 252
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67a
    goto/16 :goto_6f3

    .line 256
    :cond_67c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 257
    .local v5, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "tempT":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "tagsSPLITED":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v11, v4

    move v12, v0

    .end local v0    # "i":I
    .restart local v11    # "iSize":I
    .restart local v12    # "i":I
    :goto_6a6
    if-ge v12, v11, :cond_6f3

    .line 263
    :try_start_6a8
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 264
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v4, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    .line 266
    .local v13, "file":Lcom/badlogic/gdx/files/FileHandle;
    aget-object v14, v4, v12

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-class v14, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {v0, v14, v13}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6ea
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_6ea} :catch_6ec

    .line 270
    nop

    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v13    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_6f0

    .line 268
    :catch_6ec
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6f0
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a6

    .line 275
    .end local v4    # "tagsSPLITED":[Ljava/lang/String;
    .end local v5    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "tempT":Ljava/lang/String;
    .end local v11    # "iSize":I
    .end local v12    # "i":I
    :cond_6f3
    :goto_6f3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_734

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "nAdd":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_6fb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_717

    .line 279
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    if-ge v5, v6, :cond_714

    .line 280
    move v0, v4

    .line 278
    :cond_714
    add-int/lit8 v4, v4, 0x1

    goto :goto_6fb

    .line 284
    .end local v4    # "i":I
    :cond_717
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 287
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    .end local v0    # "nAdd":I
    goto :goto_6f3

    .line 291
    :cond_734
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    .line 293
    if-eqz p1, :cond_741

    .line 294
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDaultScenarioID()V

    .line 297
    :cond_741
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadPreviews()V

    .line 299
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 300
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 301
    return-void
.end method

.method public final loadWasteland()V
    .registers 8

    .line 587
    const-string v0, "Wasteland.txt"

    const-string v1, "/"

    const-string v2, "scenarios/"

    const-string v3, "map/"

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 589
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "tempT":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9e

    .line 592
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "tagsSPLITED":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .end local v2    # "tagsSPLITED":[Ljava/lang/String;
    .local v4, "iSize":I
    :goto_8a
    if-ge v3, v4, :cond_9d

    .line 595
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9a} :catch_9f

    .line 594
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 598
    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_9d
    nop

    .line 603
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "tempT":Ljava/lang/String;
    :cond_9e
    goto :goto_a3

    .line 601
    :catch_9f
    move-exception v0

    .line 602
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 604
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a3
    return-void
.end method

.method public final saveScenario_1()V
    .registers 6

    .line 338
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    .line 340
    .local v0, "nDetails":Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;
    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sName:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Name:Ljava/lang/String;

    .line 341
    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sAuthor:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Author:Ljava/lang/String;

    .line 342
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    .line 343
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    .line 344
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    .line 345
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Civs:I

    .line 346
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Age:I

    .line 347
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    .line 349
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    .line 350
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    .line 351
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    .line 352
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    .line 353
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    .line 354
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    .line 355
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    .line 357
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    .line 358
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    .line 359
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    .line 360
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    .line 362
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    .line 364
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Details.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 365
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public final saveScenario_10()V
    .registers 1

    .line 401
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioBuildings()V

    .line 402
    return-void
.end method

.method public final saveScenario_11()V
    .registers 1

    .line 405
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenariosList()V

    .line 406
    return-void
.end method

.method public final saveScenario_12()V
    .registers 1

    .line 409
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioAlliances()V

    .line 410
    return-void
.end method

.method public final saveScenario_13()V
    .registers 1

    .line 413
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioRelations()V

    .line 414
    return-void
.end method

.method public final saveScenario_14()V
    .registers 1

    .line 418
    return-void
.end method

.method public final saveScenario_15()V
    .registers 1

    .line 421
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioGuarantee()V

    .line 422
    return-void
.end method

.method public final saveScenario_16()V
    .registers 1

    .line 425
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioDefensive()V

    .line 426
    return-void
.end method

.method public final saveScenario_17()V
    .registers 1

    .line 430
    return-void
.end method

.method public final saveScenario_18()V
    .registers 1

    .line 433
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioMilitaryAccess()V

    .line 434
    return-void
.end method

.method public final saveScenario_19()V
    .registers 1

    .line 437
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioNonAggression()V

    .line 438
    return-void
.end method

.method public final saveScenario_2()V
    .registers 1

    .line 370
    return-void
.end method

.method public final saveScenario_20()V
    .registers 1

    .line 441
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioTruces()V

    .line 442
    return-void
.end method

.method public final saveScenario_21()V
    .registers 1

    .line 446
    return-void
.end method

.method public final saveScenario_22()V
    .registers 1

    .line 449
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioAlliancesSpecial()V

    .line 450
    return-void
.end method

.method public final saveScenario_23()V
    .registers 1

    .line 453
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioCores()V

    .line 454
    return-void
.end method

.method public final saveScenario_24()V
    .registers 1

    .line 458
    return-void
.end method

.method public final saveScenario_25()V
    .registers 2

    .line 461
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioReligion()V

    .line 462
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    return-void
.end method

.method public final saveScenario_3()V
    .registers 1

    .line 373
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioDetails()V

    .line 374
    return-void
.end method

.method public final saveScenario_4()V
    .registers 1

    .line 378
    return-void
.end method

.method public final saveScenario_5()V
    .registers 1

    .line 381
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioDetailsProvinces()V

    .line 382
    return-void
.end method

.method public final saveScenario_6()V
    .registers 1

    .line 385
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveWasteland()V

    .line 386
    return-void
.end method

.method public final saveScenario_7()V
    .registers 1

    .line 390
    return-void
.end method

.method public final saveScenario_8()V
    .registers 1

    .line 393
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioArmies()V

    .line 394
    return-void
.end method

.method public final saveScenario_9()V
    .registers 1

    .line 398
    return-void
.end method

.method public final saveWasteland()V
    .registers 5

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Wasteland.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 576
    .local v0, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 578
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 579
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_63

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 578
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 583
    .end local v1    # "i":I
    :cond_66
    return-void
.end method
