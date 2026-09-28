.class public Laoc/kingdoms/lukasz/jakowski/AI/Advantages/AI_Advantages;
.super Ljava/lang/Object;
.source "AI_Advantages.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final takeAdvantage(I)Z
    .registers 11
    .param p0, "civID"    # I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "possibleToUnlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 26
    .local v1, "totalScore":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    sget v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v2, v3, :cond_3e

    .line 27
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 28
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v1, v3

    .line 26
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 36
    .end local v2    # "i":I
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_46

    .line 37
    return v3

    .line 40
    :cond_46
    const/4 v2, 0x1

    if-gtz v1, :cond_61

    .line 41
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    goto :goto_b9

    .line 44
    :cond_61
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 46
    .local v4, "select":I
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "cScore":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    :goto_6d
    if-ge v5, v7, :cond_ac

    .line 47
    sget-object v8, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v8, v6

    if-ge v4, v8, :cond_94

    .line 48
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    .line 49
    return v2

    .line 52
    :cond_94
    sget-object v8, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v8, v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v6, v8

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 56
    .end local v5    # "i":I
    .end local v6    # "cScore":I
    .end local v7    # "iSize":I
    :cond_ac
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    .line 59
    .end local v4    # "select":I
    :goto_b9
    return v2
.end method

.method public static final takeAdvantage_Player(I)I
    .registers 9
    .param p0, "civID"    # I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "possibleToUnlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 67
    .local v1, "totalScore":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    sget v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v2, v3, :cond_3e

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 69
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v1, v3

    .line 67
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 77
    .end local v2    # "i":I
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_46

    .line 78
    return v3

    .line 81
    :cond_46
    if-gtz v1, :cond_60

    .line 82
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    .line 101
    return v3

    .line 85
    :cond_60
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 87
    .local v2, "select":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "cScore":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_6c
    if-ge v3, v5, :cond_b5

    .line 88
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_9d

    .line 89
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    return v6

    .line 93
    :cond_9d
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v4, v6

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 97
    .end local v3    # "i":I
    .end local v4    # "cScore":I
    .end local v5    # "iSize":I
    :cond_b5
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method public static final takeAdvantages(I)V
    .registers 3
    .param p0, "civID"    # I

    .line 12
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    if-lez v0, :cond_20

    .line 13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_20

    .line 14
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Advantages/AI_Advantages;->takeAdvantage(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 15
    return-void

    .line 13
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 19
    .end local v0    # "i":I
    :cond_20
    return-void
.end method
