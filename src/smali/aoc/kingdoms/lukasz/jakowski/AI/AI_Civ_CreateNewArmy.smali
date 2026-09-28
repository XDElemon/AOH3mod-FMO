.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;
.super Ljava/lang/Object;
.source "AI_Civ_CreateNewArmy.java"


# instance fields
.field public cNA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createNewArmy_RegimentsLeft()I
    .registers 4

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_19

    .line 49
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    add-int/2addr v0, v2

    .line 48
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 52
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public getCreateNewArmy_RegimentsInQueue(Ljava/lang/String;)I
    .registers 5
    .param p1, "armyKey"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_29

    .line 61
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 62
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    add-int/2addr v0, v2

    .line 60
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 66
    .end local v1    # "i":I
    :cond_29
    return v0
.end method

.method public final runCreateNewArmy_Expired(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 30
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v1, v2, :cond_1f

    .line 31
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 29
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public final runCreateNewArmy_Task(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 18
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->runCreateNewArmy_Task(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 19
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 22
    :cond_12
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v1, v2, :cond_28

    .line 23
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 17
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method public final runCreateNewArmy_Task(II)Z
    .registers 4
    .param p1, "civID"    # I
    .param p2, "id"    # I

    .line 37
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->recruitArmy(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_15
    const/4 v0, 0x0

    return v0
.end method
