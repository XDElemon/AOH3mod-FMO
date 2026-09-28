.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;
.super Ljava/lang/Object;
.source "AI_MergeTask.java"


# instance fields
.field public iProvinceID:I

.field public keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "iProvinceID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    .line 20
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    .line 22
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 27
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_d
    return-void
.end method

.method public checkArmiesExists(I)V
    .registers 6
    .param p1, "civID"    # I

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_52

    .line 44
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 45
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4f

    .line 49
    :cond_22
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_4f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isArmyMovingToProvince(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 50
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 54
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-lez v0, :cond_21

    .line 33
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 34
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    return-void

    .line 32
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 38
    .end local v0    # "i":I
    :cond_21
    return-void
.end method
