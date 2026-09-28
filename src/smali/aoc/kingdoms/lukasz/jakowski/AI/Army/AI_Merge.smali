.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;
.super Ljava/lang/Object;
.source "AI_Merge.java"


# instance fields
.field public aiMergeTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;",
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

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public addMerge(ILjava/lang/String;)V
    .registers 5
    .param p1, "provinceID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 18
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_25

    .line 19
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    if-ne v1, p1, :cond_22

    .line 20
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->addKey(Ljava/lang/String;)V

    .line 21
    return-void

    .line 18
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 25
    .end local v0    # "i":I
    :cond_25
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public checkMerge(ILjava/lang/String;)V
    .registers 8
    .param p1, "provinceID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_93

    .line 44
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    if-ne v1, p1, :cond_8f

    .line 45
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_17
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 46
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "b":I
    :goto_2b
    if-le v2, v1, :cond_8c

    .line 47
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, v4, :cond_89

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->mergeArmies(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 49
    :try_start_5d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v3, "toMerge":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->mergeUnits(Ljava/util/List;)Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_83} :catch_85

    .line 57
    nop

    .end local v3    # "toMerge":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_89

    .line 55
    :catch_85
    move-exception v3

    .line 56
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 46
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 45
    .end local v2    # "b":I
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 43
    .end local v1    # "a":I
    :cond_8f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 106
    .end local v0    # "i":I
    :cond_93
    return-void
.end method

.method public checkMergeIsPossibleForArmy(ILjava/lang/String;)V
    .registers 6
    .param p1, "civID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3e

    .line 153
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 154
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->checkArmiesExists(I)V

    .line 156
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3b

    .line 157
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 161
    .end local v0    # "i":I
    :cond_3e
    return-void
.end method

.method public checkMerge_ArmyExists(I)V
    .registers 6
    .param p1, "civID"    # I

    .line 111
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_53

    .line 112
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v1, p1, :cond_24

    .line 113
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_50

    .line 116
    :cond_24
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_34
    if-ltz v1, :cond_50

    .line 117
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyExists(Ljava/lang/String;)Z

    .line 116
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 111
    .end local v1    # "j":I
    :cond_50
    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 123
    .end local v0    # "i":I
    :cond_53
    return-void
.end method

.method public isArmyMerging(ILjava/lang/String;)Z
    .registers 6
    .param p1, "civID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMergeIsPossibleForArmy(ILjava/lang/String;)V

    .line 130
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_21

    .line 131
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 132
    return v1

    .line 130
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 136
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public isArmyMerging_Just(ILjava/lang/String;)Z
    .registers 6
    .param p1, "civID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 141
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 142
    return v1

    .line 140
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 146
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public mergeArmies(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "mergeID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;
    .param p3, "armyKey2"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 32
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_13
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_80

    .line 33
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    :cond_4f
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 34
    :cond_7b
    const/4 v2, 0x1

    return v2

    .line 32
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 31
    .end local v1    # "j":I
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 39
    .end local v0    # "i":I
    :cond_84
    const/4 v0, 0x0

    return v0
.end method
