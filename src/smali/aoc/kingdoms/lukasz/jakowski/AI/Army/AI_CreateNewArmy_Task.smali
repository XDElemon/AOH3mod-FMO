.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;
.super Ljava/lang/Object;
.source "AI_CreateNewArmy_Task.java"


# instance fields
.field public cre:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public rL:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "expiresTurnID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;",
            ">;I)V"
        }
    .end annotation

    .line 24
    .local p2, "nCreateNewArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    .line 25
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->key:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    .line 27
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    .line 29
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_31

    .line 30
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 32
    .end local v0    # "i":I
    :cond_31
    return-void
.end method


# virtual methods
.method public recruitArmy(I)Z
    .registers 13
    .param p1, "civID"    # I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "possibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 42
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_31

    .line 43
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 46
    .end local v1    # "i":I
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 48
    .local v1, "possibleProvincesSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_a7

    .line 49
    :cond_3f
    :goto_3f
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    .local v4, "iSize":I
    if-lez v2, :cond_a7

    .line 50
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 52
    .local v2, "randomID":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    new-instance v6, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->u:I

    iget-object v9, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->a:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->key:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->recruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 53
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    sub-int/2addr v6, v3

    iput v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    .line 54
    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    sub-int/2addr v5, v3

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    .line 56
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    if-gtz v5, :cond_3f

    .line 57
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3f

    .line 66
    .end local v2    # "randomID":I
    .end local v4    # "iSize":I
    :cond_a7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_b3

    goto :goto_b4

    :cond_b3
    const/4 v3, 0x0

    :goto_b4
    return v3
.end method
