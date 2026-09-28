.class public Laoc/kingdoms/lukasz/jakowski/AI/Laws/AI_Laws;
.super Ljava/lang/Object;
.source "AI_Laws.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adoptNewLaw(II)Z
    .registers 6
    .param p0, "civID"    # I
    .param p1, "lawID"    # I

    .line 37
    sget-object v0, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_6e

    .line 38
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 39
    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v2, :cond_66

    .line 40
    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v2, v2, v0

    if-ltz v2, :cond_66

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v2, v2, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    if-eq v2, v3, :cond_66

    .line 41
    goto :goto_6b

    .line 45
    :cond_66
    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/LawsManager;->adoptReform(III)Z

    move-result v1

    return v1

    .line 37
    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 49
    .end local v0    # "j":I
    :cond_6e
    return v1
.end method

.method public static final adoptNewLaws(I)V
    .registers 4
    .param p0, "civID"    # I

    .line 11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Government/AI_Capital;->checkCapital(I)V

    .line 13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->laws:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;->LAW_ADAPT_REFORM_COST_LEGACY_POINTS:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 14
    return-void

    .line 17
    :cond_13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->laws:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;->LAW_ADAPT_REFORM_COST_GOLD:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 18
    return-void

    .line 21
    :cond_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    sget v1, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v0, v1, :cond_70

    .line 22
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6d

    .line 23
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Laws/AI_Laws;->adoptNewLaw(II)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 24
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->laws:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;->LAW_ADAPT_REFORM_COST_LEGACY_POINTS:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5d

    .line 25
    return-void

    .line 28
    :cond_5d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->laws:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Laws;->LAW_ADAPT_REFORM_COST_GOLD:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6d

    .line 29
    return-void

    .line 21
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 34
    .end local v0    # "i":I
    :cond_70
    return-void
.end method
