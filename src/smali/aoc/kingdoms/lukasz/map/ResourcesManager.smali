.class public Laoc/kingdoms/lukasz/map/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;,
        Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;,
        Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;
    }
.end annotation


# static fields
.field public static iResourcesSize:I

.field public static lResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;",
            ">;"
        }
    .end annotation
.end field

.field public static lastUpdateYear:I

.field public static maxPrice:F

.field public static priceChangePerc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static priceChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;",
            ">;"
        }
    .end annotation
.end field

.field public static resourceImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static uniqueGoods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static worldResourcesProduced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static worldResources_LargestProducer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static worldResources_LargestProducer_Amount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    .line 33
    const v1, 0x3c23d70a    # 0.01f

    sput v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->maxPrice:F

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    .line 283
    sput v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lastUpdateYear:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLargestGoodsProducedByCiv(I)I
    .registers 7
    .param p0, "civID"    # I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "goodsProduced":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_15

    .line 128
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 131
    .end local v1    # "i":I
    :cond_15
    const/4 v1, -0x1

    .line 133
    .local v1, "bestResourceID":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_84

    .line 134
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    if-ltz v3, :cond_81

    .line 135
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    .line 133
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 140
    .end local v2    # "i":I
    :cond_84
    if-ltz v1, :cond_a7

    .line 141
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_87
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v3, :cond_a7

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a4

    .line 143
    move v1, v2

    .line 141
    :cond_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 148
    .end local v2    # "i":I
    :cond_a7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    return v1
.end method

.method public static getMonthlyIncome(I)F
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(II)F

    move-result v0

    return v0
.end method

.method public static getMonthlyIncome(II)F
    .registers 3
    .param p0, "iProvinceID"    # I
    .param p1, "iResourceID"    # I

    .line 50
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(IIF)F

    move-result v0

    return v0
.end method

.method public static getMonthlyIncome(IIF)F
    .registers 8
    .param p0, "iProvinceID"    # I
    .param p1, "iResourceID"    # I
    .param p2, "productionEfficiency"    # F

    .line 54
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 55
    return v0

    .line 58
    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v1, :cond_2d

    .line 59
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 60
    return v0

    .line 64
    :cond_2d
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v1

    mul-float v1, v1, p2

    .line 65
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-ne v2, v4, :cond_5a

    const/4 v2, 0x0

    goto :goto_5e

    :cond_5a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_5e
    add-float/2addr v3, v2

    .line 67
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v2, :cond_68

    goto :goto_6c

    :cond_68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_6c
    add-float/2addr v3, v0

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v0

    sub-float/2addr v3, v0

    .line 69
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncomeProduction:F

    add-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 65
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v1, v1, v0

    .line 64
    return v1
.end method

.method public static getPrice(I)F
    .registers 3
    .param p0, "iResourceID"    # I

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Price:F

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getPrice_Default(I)F
    .registers 2
    .param p0, "iResourceID"    # I

    .line 42
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Price:F

    return v0
.end method

.method public static getProducedGoods(I)F
    .registers 5
    .param p0, "iProvinceID"    # I

    .line 90
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 91
    return v1

    .line 94
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v0, :cond_45

    .line 95
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_45

    .line 96
    return v1

    .line 100
    :cond_45
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->BASE_PRODUCTION:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->GOODS_PRODUCED_PER_ECONOMY:F

    .line 102
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 104
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_GOODS_PRODUCTION_PER_POINT:F

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 100
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getProducedGoods_ResourceCiv(II)F
    .registers 6
    .param p0, "civID"    # I
    .param p1, "resourceID"    # I

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "out":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 112
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 113
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 114
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v3

    add-float/2addr v0, v3

    .line 112
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 119
    .end local v2    # "i":I
    :cond_26
    float-to-int v2, v0

    int-to-float v2, v2

    return v2
.end method

.method public static getProductionEfficiency(I)F
    .registers 5
    .param p0, "iProvinceID"    # I

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->BASE_PRODUCTION_EFFICIENCY:F

    .line 74
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency_FromEconomy(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 77
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProductionEfficiency:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL:F

    .line 78
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 76
    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    .line 73
    return v0
.end method

.method public static getProductionEfficiency_FromEconomy(F)F
    .registers 2
    .param p0, "fEconomy"    # F

    .line 86
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->PRODUCTION_EFFICIENCY_PER_ECONOMY:F

    mul-float v0, v0, p0

    return v0
.end method

.method public static getProductionEfficiency_FromEconomy(I)F
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 82
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->PRODUCTION_EFFICIENCY_PER_ECONOMY:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static getResourceGroupName(I)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I

    .line 770
    const-string v0, "Commodities"

    packed-switch p0, :pswitch_data_38

    .line 783
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :pswitch_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ProductionResources"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 778
    :pswitch_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Luxury"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 776
    :pswitch_1e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "LuxuryCommodities"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :pswitch_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 772
    :pswitch_2e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Food"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public static getResourceName(I)Ljava/lang/String;
    .registers 3
    .param p0, "iID"    # I

    .line 761
    if-ltz p0, :cond_d

    .line 762
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    return-object v0

    .line 765
    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasResource(II)Z
    .registers 4
    .param p0, "civID"    # I
    .param p1, "resourceID"    # I

    .line 787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 788
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    if-ne v1, p1, :cond_1f

    .line 789
    const/4 v1, 0x1

    return v1

    .line 787
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public static final initUniqueCivsGoods()V
    .registers 3

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 239
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_11
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateUniqueCivsGoods()V

    .line 243
    return-void
.end method

.method public static final loadResources()V
    .registers 12

    .line 695
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "game/resources/Resources.json"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 697
    .local v1, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 700
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;

    const-string v5, "Resources"

    const-class v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 701
    const-class v4, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;

    .line 703
    .local v4, "data":Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;
    const/4 v5, 0x0

    .line 705
    .local v5, "id":I
    iget-object v6, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;->Resources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ce

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 706
    .local v7, "e":Ljava/lang/Object;
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    move-object v9, v7

    check-cast v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v10, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    .line 710
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    sget-object v9, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    aget v9, v9, v0

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    aput v9, v8, v0

    .line 711
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    sget-object v9, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v11, 0x1

    aget v9, v9, v11

    div-float/2addr v9, v10

    aput v9, v8, v11

    .line 712
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    sget-object v9, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v11, 0x2

    aget v9, v9, v11

    div-float/2addr v9, v10

    aput v9, v8, v11

    .line 714
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    sget v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->maxPrice:F

    sget-object v9, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v9, v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Price:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sput v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->maxPrice:F
    :try_end_c9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_c9} :catch_d0

    .line 720
    nop

    .end local v7    # "e":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    .line 721
    goto/16 :goto_28

    .line 723
    :cond_ce
    nop

    .line 726
    .end local v1    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "fileContent":Ljava/lang/String;
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4    # "data":Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;
    .end local v5    # "id":I
    goto :goto_d4

    .line 724
    :catch_d0
    move-exception v1

    .line 725
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 728
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_d4
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    .line 730
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_dd
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_ed

    .line 731
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 734
    .end local v1    # "i":I
    :cond_ed
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->loadResourcesImages()V

    .line 736
    const/4 v0, 0x0

    .local v0, "r":I
    :goto_f1
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v0, v1, :cond_118

    .line 737
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    .restart local v1    # "i":I
    :goto_f7
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v1, v2, :cond_115

    .line 738
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v2, v0, :cond_112

    .line 739
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iput v1, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    .line 740
    goto :goto_115

    .line 737
    :cond_112
    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    .line 736
    .end local v1    # "i":I
    :cond_115
    :goto_115
    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    .line 744
    .end local v0    # "r":I
    :cond_118
    return-void
.end method

.method public static final loadResourcesImages()V
    .registers 8

    .line 747
    const-string v0, "game/resources/resourcesImages/numOfImages.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 748
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 750
    .local v1, "numOfImages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_9f

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/resources/resourcesImages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 752
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v4, v5, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 755
    :cond_6c
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v4, v5, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 758
    .end local v2    # "i":I
    :cond_9f
    return-void
.end method

.method public static final resetPriceChangePerc()V
    .registers 3

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 170
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "i":I
    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    return-void
.end method

.method public static final setPriceChangePerc(IFI)V
    .registers 7
    .param p0, "resourceID"    # I
    .param p1, "newPriceChangePerc"    # F
    .param p2, "expiresTurnID"    # I

    .line 210
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 211
    .local v0, "newPricePerc":F
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v0, v2

    .line 213
    .local v2, "changeInPrice":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_40

    .line 214
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    invoke-direct {v3, p0, v2, p2}, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;-><init>(IFI)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateIncomeOfCivsWithResource(I)V

    .line 220
    :cond_40
    return-void
.end method

.method private static final updateCivBonuses(III)V
    .registers 8
    .param p0, "i"    # I
    .param p1, "iCivID"    # I
    .param p2, "mod"    # I

    .line 305
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyIncome:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27

    .line 306
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyIncome:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 309
    :cond_27
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TaxEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d

    .line 310
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TaxEfficiency:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 313
    :cond_4d
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_73

    .line 314
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeProduction:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 318
    :cond_73
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_99

    .line 319
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProductionEfficiency:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 323
    :cond_99
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bf

    .line 324
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProvinceMaintenance:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 328
    :cond_bf
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f1

    .line 329
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GrowthRate:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    .line 331
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 332
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 335
    :cond_f1
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_104

    .line 336
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 338
    :cond_104
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyLegacy:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    .line 340
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12f

    .line 341
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 344
    :cond_12f
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15a

    .line 345
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 347
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 350
    :cond_15a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_185

    .line 351
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    .line 353
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 356
    :cond_185
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b0

    .line 357
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMaintenance:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    .line 358
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 361
    :cond_1b0
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d6

    .line 362
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitmentTime:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 365
    :cond_1d6
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1fc

    .line 366
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    .line 369
    :cond_1fc
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyFirstLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_222

    .line 370
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyFirstLineCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    .line 373
    :cond_222
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmySecondLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_248

    .line 374
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmySecondLineCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    .line 377
    :cond_248
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_260

    .line 378
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 379
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 382
    :cond_260
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_286

    .line 383
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 386
    :cond_286
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TechnologyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2ac

    .line 387
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TechnologyCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    .line 390
    :cond_2ac
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d2

    .line 391
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 394
    :cond_2d2
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2f8

    .line 395
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AdministrationBuildingsCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    .line 398
    :cond_2f8
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_31e

    .line 399
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MilitaryBuildingsCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    .line 402
    :cond_31e
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_344

    .line 403
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->EconomyBuildingsCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    .line 406
    :cond_344
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36a

    .line 407
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionTime:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    .line 410
    :cond_36a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_390

    .line 411
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->InvestInEconomyCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 414
    :cond_390
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b6

    .line 415
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncreaseManpowerCost:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    .line 418
    :cond_3b6
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralAttack:I

    if-eqz v0, :cond_3d9

    .line 419
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralAttack:I

    mul-int v3, v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 422
    :cond_3d9
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    if-eqz v0, :cond_3fc

    .line 423
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    mul-int v3, v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 426
    :cond_3fc
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsAttack:I

    if-eqz v0, :cond_41f

    .line 427
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsAttack:I

    mul-int v3, v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 430
    :cond_41f
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsDefense:I

    if-eqz v0, :cond_442

    .line 431
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsDefense:I

    mul-int v3, v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 434
    :cond_442
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    if-eqz v0, :cond_466

    .line 435
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    mul-int v3, v3, p2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 438
    :cond_466
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48c

    .line 439
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMovementSpeed:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    .line 442
    :cond_48c
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4b2

    .line 443
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->SiegeEffectiveness:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    .line 446
    :cond_4b2
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d8

    .line 447
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ImproveRelationsModifier:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 450
    :cond_4d8
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeFromVassals:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4fe

    .line 451
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeFromVassals:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    .line 454
    :cond_4fe
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_524

    .line 455
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->LoanInterest:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 458
    :cond_524
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AggressiveExpansion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_54a

    .line 459
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AggressiveExpansion:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    .line 462
    :cond_54a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RevolutionaryRisk:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_570

    .line 463
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RevolutionaryRisk:F

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    .line 466
    :cond_570
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_596

    .line 467
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->CoreCost:F

    int-to-float v3, p2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    .line 470
    :cond_596
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->BattleWidth:I

    if-eqz v0, :cond_5b9

    .line 471
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->BattleWidth:I

    mul-int v2, v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    .line 474
    :cond_5b9
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RegimentsLimit:I

    if-eqz v0, :cond_5dc

    .line 475
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RegimentsLimit:I

    mul-int v2, v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 478
    :cond_5dc
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    .line 479
    return-void
.end method

.method public static updateIncomeOfCivsWithResource(I)V
    .registers 4
    .param p0, "iResourceID"    # I

    .line 223
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 224
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 225
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ne v2, p0, :cond_2a

    .line 226
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 227
    goto :goto_2d

    .line 224
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 223
    .end local v1    # "j":I
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public static final updatePriceChanges()V
    .registers 6

    .line 178
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CHANGE_PRICE_EXPIRED:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_8a

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_8a

    .line 180
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->expiresTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v2, v3, :cond_87

    .line 181
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updatePriceChanges_NumOfPriceChanges(I)I

    move-result v2

    if-ne v2, v1, :cond_47

    .line 182
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 185
    :cond_47
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->priceChange:F

    sub-float/2addr v4, v5

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_82
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_8b

    .line 179
    :cond_87
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 194
    .end local v0    # "i":I
    :cond_8a
    goto :goto_8f

    .line 192
    :catch_8b
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 195
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

.method public static updatePriceChanges_NumOfPriceChanges(I)I
    .registers 4
    .param p0, "resourceID"    # I

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "out":I
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1c

    .line 201
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    if-ne v2, p0, :cond_19

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 206
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method public static final updateUniqueCivGoods(I)V
    .registers 6
    .param p0, "iCivID"    # I

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 256
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "i":I
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_4c

    .line 260
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    if-ltz v1, :cond_49

    .line 261
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 265
    .end local v0    # "i":I
    :cond_4c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    .line 267
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_53
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v0, v1, :cond_71

    .line 268
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 269
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_72

    .line 267
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 274
    .end local v0    # "i":I
    :cond_71
    goto :goto_76

    .line 272
    :catch_72
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 275
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_76
    return-void
.end method

.method public static final updateUniqueCivsGoods()V
    .registers 2

    .line 246
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 247
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_14

    .line 248
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateUniqueCivGoods(I)V

    .line 246
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public static updateWorldResourcesProduced(Z)V
    .registers 12
    .param p0, "init"    # Z

    .line 483
    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "playerLargest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_34

    .line 486
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v4, :cond_33

    .line 487
    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .end local v2    # "j":I
    :cond_33
    goto :goto_43

    .line 491
    :cond_34
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_35
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v4, :cond_43

    .line 492
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_2ad

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 496
    .end local v2    # "j":I
    :cond_43
    :goto_43
    if-nez p0, :cond_b2

    .line 498
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_46
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "iSize":I
    :goto_52
    if-ge v2, v4, :cond_95

    .line 499
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_92

    .line 500
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v6, v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 501
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateCivBonuses(III)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_92} :catch_96

    .line 498
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 507
    .end local v2    # "i":I
    .end local v4    # "iSize":I
    :cond_95
    goto :goto_9a

    .line 505
    :catch_96
    move-exception v2

    .line 506
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_97
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 509
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_9a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v2, v4, :cond_b1

    .line 510
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->resetGoodsProduced()V

    .line 511
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput v3, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .end local v2    # "i":I
    :cond_b1
    goto :goto_c9

    .line 515
    :cond_b2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v2, v4, :cond_c9

    .line 516
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 517
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput v3, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 522
    .end local v2    # "i":I
    :cond_c9
    :goto_c9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ca
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v4, :cond_da

    .line 523
    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 525
    .end local v2    # "i":I
    :cond_da
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 526
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 528
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sput v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lastUpdateYear:I

    .line 530
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v2, v4, :cond_106

    .line 531
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v4, "tList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_f5
    sget v6, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v5, v6, :cond_103

    .line 534
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v5, v5, 0x1

    goto :goto_f5

    .line 530
    .end local v4    # "tList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "j":I
    :cond_103
    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    .line 538
    .end local v2    # "i":I
    :cond_106
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_107
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_174

    .line 539
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_171

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_171

    .line 540
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    if-ltz v4, :cond_171

    .line 541
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 542
    .local v4, "goodsProduced":I
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGoodsProduced(II)V

    .line 538
    .end local v4    # "goodsProduced":I
    :cond_171
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    .line 549
    .end local v2    # "i":I
    :cond_174
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_175
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v4, :cond_189

    .line 550
    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_175

    .line 553
    .end local v2    # "i":I
    :cond_189
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_18a
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v4, :cond_1f8

    .line 554
    const/4 v4, 0x0

    .line 556
    .local v4, "largestProducer":I
    const/4 v5, 0x1

    .restart local v5    # "j":I
    :goto_190
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_1ac

    .line 557
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v6

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v7

    if-ge v6, v7, :cond_1a9

    .line 558
    move v4, v5

    .line 556
    :cond_1a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_190

    .line 562
    .end local v5    # "j":I
    :cond_1ac
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v6, v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 563
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f5

    .line 567
    :cond_1db
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v4    # "largestProducer":I
    :goto_1f5
    add-int/lit8 v2, v2, 0x1

    goto :goto_18a

    .line 574
    .end local v2    # "i":I
    :cond_1f8
    if-nez p0, :cond_2ac

    .line 575
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1fb
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v3, :cond_2ac

    .line 576
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_209} :catch_2ad

    const-string v4, ": "

    if-eqz v3, :cond_25b

    .line 577
    :try_start_20d
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v5, :cond_2a8

    .line 578
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NO_LONGER_LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "WeAreNoLongerTheLargestProducerOf"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v3, v10

    move-object v4, v5

    move-object v5, v6

    move v6, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    goto :goto_2a8

    .line 583
    :cond_25b
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v5, :cond_2a8

    .line 584
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "WeAreTheLargestProducerOf"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v3, v10

    move-object v4, v5

    move-object v5, v6

    move v6, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_2a8} :catch_2ad

    .line 575
    :cond_2a8
    :goto_2a8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1fb

    .line 592
    .end local v1    # "playerLargest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v2    # "j":I
    :cond_2ac
    goto :goto_2b1

    .line 590
    :catch_2ad
    move-exception v1

    .line 591
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 595
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2b1
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_2b2
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "iSize":I
    :goto_2be
    if-ge v1, v2, :cond_315

    .line 596
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_312

    .line 597
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_312

    .line 598
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3, v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateCivBonuses(III)V

    .line 599
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    add-int/2addr v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I
    :try_end_312
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_312} :catch_316

    .line 595
    :cond_312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2be

    .line 605
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_315
    goto :goto_31a

    .line 603
    :catch_316
    move-exception v0

    .line 604
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 606
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_31a
    return-void
.end method

.method public static updateWorldResourcesProduced_NewYear()V
    .registers 2

    .line 286
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lastUpdateYear:I

    if-eq v0, v1, :cond_20

    .line 287
    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced(Z)V

    .line 289
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Goods()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoodsView:Z

    if-eqz v0, :cond_20

    .line 290
    new-instance v0, Laoc/kingdoms/lukasz/map/ResourcesManager$1;

    const-string v1, "rebuildGoods"

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/map/ResourcesManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 302
    :cond_20
    return-void
.end method
