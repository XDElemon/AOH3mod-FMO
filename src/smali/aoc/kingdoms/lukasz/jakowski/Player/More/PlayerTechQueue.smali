.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;
.super Ljava/lang/Object;
.source "PlayerTechQueue.java"


# instance fields
.field public lTechQueue:Ljava/util/List;
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    .line 13
    return-void
.end method

.method private final addTechQueue(I)Z
    .registers 6
    .param p1, "iTechID"    # I

    .line 91
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 92
    return v0

    .line 95
    :cond_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_20

    .line 96
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 97
    return v0

    .line 95
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 101
    .end local v1    # "i":I
    :cond_20
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return v2
.end method

.method private final buildTechQueue1(I)V
    .registers 4
    .param p1, "iTechID"    # I

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_4b

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->addTechQueue(I)Z

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue1(I)V

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue2(I)V

    .line 77
    :cond_4b
    return-void
.end method

.method private final buildTechQueue2(I)V
    .registers 4
    .param p1, "iTechID"    # I

    .line 80
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_4b

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 82
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->addTechQueue(I)Z

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue1(I)V

    .line 85
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue2(I)V

    .line 88
    :cond_4b
    return-void
.end method


# virtual methods
.method public final buildTechQueue(I)V
    .registers 9
    .param p1, "iTechID"    # I

    .line 18
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue1(I)V

    .line 23
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue2(I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "nQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "nAvailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_26
    if-ltz v2, :cond_55

    .line 31
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAvailableToResearch(I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 32
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    :cond_52
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 37
    .end local v2    # "i":I
    :cond_55
    :goto_55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_cd

    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, "bestID":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_62
    if-lez v3, :cond_c0

    .line 41
    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v5

    if-lt v4, v5, :cond_bc

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 42
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    sget-object v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    if-ge v4, v5, :cond_bd

    .line 44
    :cond_bc
    move v2, v3

    .line 40
    :cond_bd
    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    .line 48
    .end local v3    # "i":I
    :cond_c0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    .end local v2    # "bestID":I
    goto :goto_55

    .line 52
    :cond_cd
    :goto_cd
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_123

    .line 53
    const/4 v2, 0x0

    .line 55
    .restart local v2    # "bestID":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_de
    if-lez v3, :cond_112

    .line 56
    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    sget-object v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    if-ge v4, v5, :cond_10f

    .line 57
    move v2, v3

    .line 55
    :cond_10f
    add-int/lit8 v3, v3, -0x1

    goto :goto_de

    .line 61
    .end local v3    # "i":I
    :cond_112
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    .end local v2    # "bestID":I
    goto :goto_cd

    .line 65
    :cond_123
    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    .line 66
    return-void
.end method

.method public clearTechQueue()V
    .registers 2

    .line 148
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    return-void
.end method

.method public getTechIsInQueue(I)I
    .registers 4
    .param p1, "iTechID"    # I

    .line 138
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 139
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 140
    return v0

    .line 138
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 144
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public final getTechQueue()I
    .registers 8

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "possibleToResearch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 110
    .local v1, "bestID":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_52

    .line 111
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAvailableToResearch(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 112
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 116
    .end local v2    # "i":I
    :cond_52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e4

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_5d
    if-lt v2, v3, :cond_bb

    .line 118
    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v5

    if-lt v4, v5, :cond_b7

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    sget-object v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    if-ge v4, v5, :cond_b8

    .line 120
    :cond_b7
    move v1, v2

    .line 117
    :cond_b8
    add-int/lit8 v2, v2, -0x1

    goto :goto_5d

    .line 124
    .end local v2    # "i":I
    :cond_bb
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_c2
    if-ltz v2, :cond_d9

    .line 125
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_d6

    .line 126
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    goto :goto_d9

    .line 124
    :cond_d6
    add-int/lit8 v2, v2, -0x1

    goto :goto_c2

    .line 131
    .end local v2    # "i":I
    :cond_d9
    :goto_d9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 134
    :cond_e4
    const/4 v2, -0x1

    return v2
.end method
