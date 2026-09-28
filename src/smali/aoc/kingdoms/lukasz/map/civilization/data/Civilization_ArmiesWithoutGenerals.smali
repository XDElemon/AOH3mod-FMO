.class public Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;
.super Ljava/lang/Object;
.source "Civilization_ArmiesWithoutGenerals.java"


# instance fields
.field public keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public keysSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keysSize:I

    return-void
.end method


# virtual methods
.method public final addArmyKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 16
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    return-void

    .line 20
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keysSize:I

    .line 22
    return-void
.end method

.method public final buildArmiesWithoutGenerals(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_5f

    .line 42
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 43
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p1, :cond_59

    .line 44
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v2, :cond_59

    .line 45
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->addArmyKey(Ljava/lang/String;)V

    .line 42
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 41
    .end local v1    # "a":I
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "i":I
    :cond_5f
    return-void
.end method

.method public final removeArmyKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keysSize:I

    if-ge v0, v1, :cond_24

    .line 27
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 28
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keysSize:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    .line 30
    return-void

    .line 26
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v0    # "i":I
    :cond_24
    goto :goto_26

    .line 33
    :catch_25
    move-exception v0

    .line 36
    :goto_26
    return-void
.end method
