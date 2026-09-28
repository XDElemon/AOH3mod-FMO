.class public Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;
.super Ljava/lang/Object;
.source "MercenariesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/MercenariesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MercenaryArmy"
.end annotation


# instance fields
.field public iArmyID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public iCost:I

.field public iUnitID:Ljava/util/List;
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addArmy(II)V
    .registers 5
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I

    .line 22
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public buildCost(I)V
    .registers 8
    .param p1, "civID"    # I

    .line 27
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_34

    .line 28
    iget v1, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost_Regiments(I)I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, -0x1

    invoke-static {p1, v5, v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIIII)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    .line 27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 31
    .end local v0    # "i":I
    :cond_34
    iget v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_COST_EXTRA_PER_REGIMENT:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    .line 32
    return-void
.end method
