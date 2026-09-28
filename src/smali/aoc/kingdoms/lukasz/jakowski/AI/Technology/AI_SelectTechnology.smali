.class public Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_SelectTechnology;
.super Ljava/lang/Object;
.source "AI_SelectTechnology.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selectTechnology(I)V
    .registers 10
    .param p0, "civID"    # I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .local v0, "possibleResearch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v1, v2, :cond_1e

    .line 15
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAvailableToResearch(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 20
    .end local v1    # "i":I
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_25

    .line 21
    return-void

    .line 23
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v3, :cond_46

    .line 24
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    .line 25
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 26
    return-void

    .line 29
    :cond_46
    const/4 v1, 0x0

    .line 31
    .local v1, "totalScore":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_4c
    if-ltz v5, :cond_66

    .line 32
    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->AI:I

    add-int/2addr v1, v3

    .line 31
    add-int/lit8 v5, v5, -0x1

    goto :goto_4c

    .line 35
    .end local v5    # "i":I
    :cond_66
    if-gtz v1, :cond_80

    .line 36
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    .line 37
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 38
    return-void

    .line 41
    :cond_80
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 43
    .local v3, "select":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    const/4 v6, 0x0

    .local v6, "cScore":I
    :goto_88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_d5

    .line 44
    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->AI:I

    add-int/2addr v7, v6

    if-ge v3, v7, :cond_bd

    .line 45
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    .line 46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 47
    return-void

    .line 50
    :cond_bd
    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->AI:I

    add-int/2addr v6, v7

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 55
    .end local v3    # "select":I
    .end local v5    # "i":I
    .end local v6    # "cScore":I
    :cond_d5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    .line 56
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 58
    .end local v1    # "totalScore":I
    return-void
.end method
