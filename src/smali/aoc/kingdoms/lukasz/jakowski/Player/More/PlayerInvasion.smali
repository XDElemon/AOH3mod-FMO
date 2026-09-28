.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;
.super Ljava/lang/Object;
.source "PlayerInvasion.java"


# instance fields
.field public invasions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyInvasion;",
            ">;"
        }
    .end annotation
.end field

.field public invasionsSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    .line 15
    return-void
.end method


# virtual methods
.method public final addInvasion(I)Z
    .registers 6
    .param p1, "iCivID"    # I

    .line 20
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 21
    return v1

    .line 24
    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 25
    return v1

    .line 28
    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v0

    if-nez v0, :cond_14

    .line 29
    return v1

    .line 32
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v0, v2, :cond_3b

    .line 33
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 34
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    .line 35
    return v1

    .line 32
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 39
    .end local v0    # "i":I
    :cond_3b
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-direct {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public final clearInvasions()V
    .registers 2

    .line 93
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    .line 95
    return-void
.end method

.method public final getInvasionPlan_NumOfProvinces(Ljava/lang/String;)I
    .registers 4
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v0, v1, :cond_27

    .line 70
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 71
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 69
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public final haveInvasionPlan(Ljava/lang/String;)Z
    .registers 4
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v0, v1, :cond_1a

    .line 60
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 61
    const/4 v1, 0x1

    return v1

    .line 59
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final moveInvasion(Ljava/lang/String;)Z
    .registers 5
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v0, v1, :cond_39

    .line 80
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 81
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->invasionMoveArmy(I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 82
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    .line 85
    :cond_34
    const/4 v1, 0x1

    return v1

    .line 79
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public final removeInvasion(Ljava/lang/String;)Z
    .registers 4
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v0, v1, :cond_27

    .line 48
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 49
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    .line 51
    const/4 v1, 0x1

    return v1

    .line 47
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method
