.class public Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;
.super Ljava/lang/Object;
.source "AdvisorManager.java"


# instance fields
.field public advisorsImagesSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    return-void
.end method

.method public static advisorIsRecruited(II)Z
    .registers 5
    .param p0, "iCivID"    # I
    .param p1, "iAdvisorTypeID"    # I

    .line 419
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_3a

    .line 427
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_37

    goto :goto_38

    .line 425
    :pswitch_10
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 423
    :pswitch_1d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    .line 421
    :pswitch_2a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0

    .line 427
    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method

.method public static getAdvisor(I)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .registers 2
    .param p0, "iAdvisorTypeID"    # I

    .line 400
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    return-object v0
.end method

.method public static getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .registers 3
    .param p0, "iCivID"    # I
    .param p1, "iAdvisorTypeID"    # I

    .line 404
    packed-switch p1, :pswitch_data_20

    .line 412
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object v0

    .line 410
    :pswitch_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object v0

    .line 408
    :pswitch_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object v0

    .line 406
    :pswitch_18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_18
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method public static getAdvisorGroupName(I)Ljava/lang/String;
    .registers 3
    .param p0, "iAdvisorTypeID"    # I

    .line 385
    packed-switch p0, :pswitch_data_3a

    .line 395
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_DIPLOMATIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :pswitch_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_MILITARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :pswitch_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_INNOVATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_ECONOMIC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 387
    :pswitch_2f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_ADMINISTRATIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method public static final getAdvisorMaxLevel(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 518
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getAdvisorPromoteCost(II)I
    .registers 4
    .param p0, "iCivID"    # I
    .param p1, "iLevel"    # I

    .line 522
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROMOTE_COST_PER_LEVEL:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getAdvisorPromoteCostLegacy(II)I
    .registers 4
    .param p0, "iCivID"    # I
    .param p1, "iLevel"    # I

    .line 526
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROMOTE_COST_LEGACY_PER_LEVEL:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAdvisorsImgPath()Ljava/lang/String;
    .registers 2

    .line 208
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->ENABLE_NON_KINGS_IMG:Z

    if-nez v0, :cond_23

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FORCE_NON_KINGS_IMG:Z

    if-nez v0, :cond_23

    .line 209
    const-string v0, "advisors/"

    return-object v0

    .line 212
    :cond_23
    const-string v0, "advisors2/"

    return-object v0
.end method

.method public static getAdvisorsImgPath(I)Ljava/lang/String;
    .registers 3
    .param p0, "iCivID"    # I

    .line 216
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->KingsImages:Z

    if-nez v0, :cond_22

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->ENABLE_NON_KINGS_IMG:Z

    if-nez v0, :cond_35

    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FORCE_NON_KINGS_IMG:Z

    if-nez v0, :cond_35

    .line 217
    const-string v0, "advisors/"

    return-object v0

    .line 220
    :cond_35
    const-string v0, "advisors2/"

    return-object v0
.end method

.method public static getRecruitCostLegacy(I)I
    .registers 5
    .param p0, "iCivID"    # I

    .line 28
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_LEGACY_COST:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_ADVISOR_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getRecruitGoldCost(I)I
    .registers 5
    .param p0, "iCivID"    # I

    .line 24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_GOLD_COST:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_ADVISOR_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final promoteAdvisor(IIZ)Z
    .registers 12
    .param p0, "iCivID"    # I
    .param p1, "iAdvisorTypeID"    # I
    .param p2, "free"    # Z

    .line 532
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f5

    .line 533
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v2

    if-lt v0, v2, :cond_15

    if-eqz p2, :cond_2f5

    :cond_15
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorIsRecruited(II)Z

    move-result v0

    if-eqz v0, :cond_2f5

    .line 534
    if-nez p2, :cond_71

    .line 535
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCost(II)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_33

    .line 536
    return v1

    .line 539
    :cond_33
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCostLegacy(II)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_49

    .line 540
    return v1

    .line 543
    :cond_49
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCost(II)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 544
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorPromoteCostLegacy(II)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 547
    :cond_71
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 549
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    .line 552
    :try_start_83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_BONUSES_UPGRADE_PER_LEVEL:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 554
    .local v0, "mod":F
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    .line 555
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    .line 556
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    .line 558
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    .line 559
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    .line 561
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    .line 563
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    .line 565
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    .line 566
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    .line 568
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    .line 570
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    .line 572
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    .line 573
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    .line 574
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    .line 575
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    .line 577
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    .line 579
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    .line 580
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    .line 581
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    .line 582
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    .line 583
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    mul-float v4, v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    .line 585
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1dc

    .line 586
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    add-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    mul-float v7, v7, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v5, v5

    iput v5, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    .line 588
    :cond_1dc
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_207

    .line 589
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    add-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    mul-float v7, v7, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v5, v5

    iput v5, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    .line 592
    :cond_207
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_232

    .line 593
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    add-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    mul-float v7, v7, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v5, v5

    iput v5, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    .line 596
    :cond_232
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_25d

    .line 597
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    add-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    mul-float v1, v1, v0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-float v1, v1

    iput v1, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    .line 600
    :cond_25d
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v1, :cond_286

    .line 601
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    add-int/2addr v3, v2

    int-to-double v3, v3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    .line 604
    :cond_286
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    .line 605
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    .line 607
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    .line 610
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    .line 611
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    .line 613
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    .line 614
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    mul-float v3, v3, v0

    iput v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_2e8} :catch_2e9

    .line 617
    .end local v0    # "mod":F
    goto :goto_2ed

    .line 615
    :catch_2e9
    move-exception v0

    .line 616
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 621
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2ed
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    invoke-static {v0, p0, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 623
    return v2

    .line 627
    :cond_2f5
    return v1
.end method

.method public static final updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    .registers 8
    .param p0, "nAdvisor"    # Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .param p1, "iCivID"    # I
    .param p2, "mod"    # I

    .line 436
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 437
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 439
    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_43

    .line 440
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    .line 442
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 443
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 446
    :cond_43
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 447
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 449
    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6e

    .line 450
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 452
    :cond_6e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    .line 454
    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_89

    .line 455
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 457
    :cond_89
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 459
    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b4

    .line 460
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    .line 462
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 465
    :cond_b4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 467
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    .line 469
    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e4

    .line 470
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 471
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 473
    :cond_e4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 475
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 476
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    .line 477
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    .line 478
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    .line 480
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    .line 482
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 483
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    .line 484
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    .line 485
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    .line 486
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    .line 488
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 489
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 491
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 492
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 494
    iget v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v0, :cond_1f6

    .line 495
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    mul-int v2, v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 496
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    .line 499
    :cond_1f6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 500
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    .line 502
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    .line 505
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 506
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 508
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    .line 509
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    .line 512
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    .line 513
    return-void
.end method


# virtual methods
.method public final advisorDied(II)V
    .registers 16
    .param p1, "iCivID"    # I
    .param p2, "iAdvisorTypeID"    # I

    .line 88
    const-string v0, "rebuildCourt"

    const-string v1, ": "

    const-string v2, "AdvisorDied"

    const/4 v3, -0x1

    packed-switch p2, :pswitch_data_1b0

    .line 186
    return-void

    .line 162
    :pswitch_b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v4, :cond_73

    .line 163
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v4, :cond_5d

    .line 164
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 167
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$4;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$4;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 179
    :cond_5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 181
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 183
    :cond_73
    return-void

    .line 138
    :pswitch_74
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v4, :cond_dc

    .line 139
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v4, :cond_c6

    .line 140
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 143
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$3;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$3;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 156
    :cond_c6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 158
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 160
    :cond_dc
    return-void

    .line 115
    :pswitch_dd
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v4, :cond_145

    .line 116
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v4, :cond_12f

    .line 117
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 120
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$2;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$2;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 132
    :cond_12f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 134
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 136
    :cond_145
    return-void

    .line 90
    :pswitch_146
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v4, :cond_1ae

    .line 91
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v4, :cond_198

    .line 92
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 95
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$1;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager$1;-><init>(Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 108
    :cond_198
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 110
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 113
    :cond_1ae
    return-void

    nop

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_146
        :pswitch_dd
        :pswitch_74
        :pswitch_b
    .end packed-switch
.end method

.method public getRandomGeneralImage(I)I
    .registers 7
    .param p1, "iCivID"    # I

    .line 224
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, p1, :cond_21

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0

    .line 228
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "isUsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 231
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 234
    .end local v1    # "i":I
    :cond_48
    const/4 v1, 0x0

    .restart local v1    # "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_53
    if-ge v1, v2, :cond_6e

    .line 235
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 238
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_6e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "iSize":I
    :goto_88
    if-ge v2, v3, :cond_a0

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9d

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 246
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_a0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c1

    .line 247
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    return v2

    .line 250
    :cond_c1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getRandomImage(II)I
    .registers 10
    .param p1, "iCivID"    # I
    .param p2, "iAdvisorType"    # I

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, "isUsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_25

    .line 258
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 261
    .end local v1    # "i":I
    :cond_25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_aa

    .line 262
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2d
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_56

    .line 264
    :try_start_39
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4e} :catch_4f

    .line 267
    goto :goto_53

    .line 265
    :catch_4f
    move-exception v4

    .line 266
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 262
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 270
    .end local v1    # "i":I
    :cond_56
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_57
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_80

    .line 272
    :try_start_63
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_78} :catch_79

    .line 275
    goto :goto_7d

    .line 273
    :catch_79
    move-exception v4

    .line 274
    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 270
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 278
    .end local v1    # "i":I
    :cond_80
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_81
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_aa

    .line 280
    :try_start_8d
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a2} :catch_a3

    .line 283
    goto :goto_a7

    .line 281
    :catch_a3
    move-exception v4

    .line 282
    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 278
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 295
    .end local v1    # "i":I
    :cond_aa
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v1, :cond_c8

    .line 297
    :try_start_b4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c3} :catch_c4

    .line 300
    goto :goto_c8

    .line 298
    :catch_c4
    move-exception v1

    .line 299
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 303
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_c8
    :goto_c8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v1, :cond_e6

    .line 305
    :try_start_d2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e1} :catch_e2

    .line 308
    goto :goto_e6

    .line 306
    :catch_e2
    move-exception v1

    .line 307
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 311
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_e6
    :goto_e6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v1, :cond_104

    .line 313
    :try_start_f0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_ff} :catch_100

    .line 316
    goto :goto_104

    .line 314
    :catch_100
    move-exception v1

    .line 315
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 328
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_104
    :goto_104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "iSize":I
    :goto_11c
    if-ge v4, v5, :cond_134

    .line 331
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_131

    .line 332
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_131
    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    .line 336
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_24f

    .line 337
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v4, :cond_236

    .line 338
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_141
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_15f

    .line 339
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .line 342
    .end local v4    # "i":I
    :cond_15f
    if-nez p2, :cond_187

    .line 343
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    :goto_16c
    if-ge v3, v4, :cond_186

    .line 344
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_16c

    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_186
    goto :goto_1d7

    .line 347
    :cond_187
    if-ne p2, v2, :cond_1af

    .line 348
    const/4 v3, 0x0

    .restart local v3    # "i":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "iSize":I
    :goto_194
    if-ge v3, v4, :cond_1ae

    .line 349
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_194

    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_1ae
    goto :goto_1d7

    .line 352
    :cond_1af
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1d7

    .line 353
    const/4 v3, 0x0

    .restart local v3    # "i":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "iSize":I
    :goto_1bd
    if-ge v3, v4, :cond_1d7

    .line 354
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_1bd

    .line 363
    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_1d7
    :goto_1d7
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "iSize":I
    :goto_1ea
    if-ge v2, v3, :cond_202

    .line 364
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1ff

    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1ff
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ea

    .line 369
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_221

    .line 370
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    return v2

    .line 373
    :cond_221
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 376
    :cond_236
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    return v2

    .line 380
    :cond_24f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public final loadAdvisors()V
    .registers 5

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/RulersManager;->iGroupsSize:I

    if-ge v0, v1, :cond_45

    .line 194
    const/4 v1, 0x0

    .line 197
    .local v1, "numOfImages":I
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game/advisors/advisors/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/numImages.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 198
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_33
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_33} :catch_35

    move v1, v3

    .line 201
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_39

    .line 199
    :catch_35
    move-exception v2

    .line 200
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 203
    .end local v2    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_39
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorsImagesSize:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v1    # "numOfImages":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "i":I
    :cond_45
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Administrative(I)V
    .registers 3
    .param p1, "iCivID"    # I

    .line 39
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 40
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 46
    :cond_1c
    goto :goto_21

    .line 44
    :catch_1d
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 47
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Economic(I)V
    .registers 3
    .param p1, "iCivID"    # I

    .line 51
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 52
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 58
    :cond_1c
    goto :goto_21

    .line 56
    :catch_1d
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Innovation(I)V
    .registers 3
    .param p1, "iCivID"    # I

    .line 63
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 64
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 70
    :cond_1c
    goto :goto_21

    .line 68
    :catch_1d
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public final update_ChanceOfDeathAdvisor_Military(I)V
    .registers 3
    .param p1, "iCivID"    # I

    .line 75
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 76
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->advisorDied(II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 82
    :cond_1c
    goto :goto_21

    .line 80
    :catch_1d
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method
