.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x12c


# instance fields
.field private iCivID:I

.field private inView:Z

.field private lTime:J

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->inView:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    .line 35
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    .line 36
    return-void
.end method


# virtual methods
.method protected final buildContinentData()V
    .registers 7

    .line 39
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1c

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 48
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    :try_start_1d
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 49
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 50
    .local v2, "tID":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_54} :catch_58

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 54
    .end local v1    # "i":I
    .end local v2    # "tID":I
    :cond_57
    goto :goto_5c

    .line 52
    :catch_58
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 56
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_62
    :try_start_62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_89

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_86

    .line 61
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_86} :catch_8a

    .line 59
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 66
    .end local v2    # "i":I
    :cond_89
    goto :goto_8e

    .line 64
    :catch_8a
    move-exception v2

    .line 65
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 68
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_8e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c5

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b6

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_b3

    .line 73
    move v2, v3

    .line 71
    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 77
    .end local v3    # "i":I
    :cond_b6
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    .end local v2    # "tempMaxID":I
    goto :goto_8e

    .line 80
    :cond_c5
    return-void
.end method

.method protected final buildContinentData_CivsPopulation()V
    .registers 7

    .line 433
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    :try_start_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 443
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_46

    .line 444
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_4a

    .line 442
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 449
    .end local v2    # "i":I
    :cond_49
    goto :goto_4e

    .line 447
    :catch_4a
    move-exception v2

    .line 448
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 451
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_85

    .line 452
    const/4 v2, 0x0

    .line 454
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 455
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 456
    move v2, v3

    .line 454
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 460
    .end local v3    # "i":I
    :cond_76
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 462
    .end local v2    # "tempMaxID":I
    goto :goto_4e

    .line 463
    :cond_85
    return-void
.end method

.method protected final buildContinentData_CivsProvinces()V
    .registers 7

    .line 400
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    :try_start_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 410
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_45

    .line 411
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49

    .line 409
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 416
    .end local v2    # "i":I
    :cond_48
    goto :goto_4d

    .line 414
    :catch_49
    move-exception v2

    .line 415
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 418
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_84

    .line 419
    const/4 v2, 0x0

    .line 421
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 422
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 423
    move v2, v3

    .line 421
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 427
    .end local v3    # "i":I
    :cond_75
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 429
    .end local v2    # "tempMaxID":I
    goto :goto_4d

    .line 430
    :cond_84
    return-void
.end method

.method protected final buildContinentData_ConstructedBuildings()V
    .registers 7

    .line 246
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1c

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 255
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    :try_start_1d
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 256
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 257
    .local v2, "tID":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_63} :catch_67

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 261
    .end local v1    # "i":I
    .end local v2    # "tID":I
    :cond_66
    goto :goto_6b

    .line 259
    :catch_67
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 263
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_71
    :try_start_71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_98

    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_95

    .line 268
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_95} :catch_99

    .line 266
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 273
    .end local v2    # "i":I
    :cond_98
    goto :goto_9d

    .line 271
    :catch_99
    move-exception v2

    .line 272
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 275
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_9d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d4

    .line 276
    const/4 v2, 0x0

    .line 278
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_a5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c5

    .line 279
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_c2

    .line 280
    move v2, v3

    .line 278
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    .line 284
    .end local v3    # "i":I
    :cond_c5
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    .end local v2    # "tempMaxID":I
    goto :goto_9d

    .line 287
    :cond_d4
    return-void
.end method

.method protected final buildContinentData_Economy()V
    .registers 8

    .line 532
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v1, "FloatNumOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_10
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_21

    .line 538
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 542
    .end local v2    # "i":I
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_22
    :try_start_22
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_6e

    .line 543
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 544
    .local v3, "tID":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6b} :catch_6f

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 548
    .end local v2    # "i":I
    .end local v3    # "tID":I
    :cond_6e
    goto :goto_73

    .line 546
    :catch_6f
    move-exception v2

    .line 547
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 550
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_73
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_74
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_91

    .line 551
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 554
    .end local v2    # "i":I
    :cond_91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v2, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_97
    :try_start_97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_be

    .line 558
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_bb

    .line 559
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_bb} :catch_bf

    .line 557
    :cond_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 564
    .end local v3    # "i":I
    :cond_be
    goto :goto_c3

    .line 562
    :catch_bf
    move-exception v3

    .line 563
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 566
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_c3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_fa

    .line 567
    const/4 v3, 0x0

    .line 569
    .local v3, "tempMaxID":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_cb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_eb

    .line 570
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_e8

    .line 571
    move v3, v4

    .line 569
    :cond_e8
    add-int/lit8 v4, v4, 0x1

    goto :goto_cb

    .line 575
    .end local v4    # "i":I
    :cond_eb
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 577
    .end local v3    # "tempMaxID":I
    goto :goto_c3

    .line 578
    :cond_fa
    return-void
.end method

.method protected final buildContinentData_GovernmentCivs()V
    .registers 7

    .line 127
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "populationData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    :try_start_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_46

    .line 138
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_4a

    .line 136
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 143
    .end local v2    # "i":I
    :cond_49
    goto :goto_4e

    .line 141
    :catch_4a
    move-exception v2

    .line 142
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 145
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_85

    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 149
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 150
    move v2, v3

    .line 148
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 154
    .end local v3    # "i":I
    :cond_76
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    .end local v2    # "tempMaxID":I
    goto :goto_4e

    .line 157
    :cond_85
    return-void
.end method

.method protected final buildContinentData_Infrastructure()V
    .registers 7

    .line 290
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1c

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 299
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    :try_start_1d
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 300
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 301
    .local v2, "tID":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_65} :catch_69

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 305
    .end local v1    # "i":I
    .end local v2    # "tID":I
    :cond_68
    goto :goto_6d

    .line 303
    :catch_69
    move-exception v1

    .line 304
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 307
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_73
    :try_start_73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9a

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_97

    .line 312
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_97} :catch_9b

    .line 310
    :cond_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 317
    .end local v2    # "i":I
    :cond_9a
    goto :goto_9f

    .line 315
    :catch_9b
    move-exception v2

    .line 316
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 319
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_9f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d6

    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_a7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c7

    .line 323
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_c4

    .line 324
    move v2, v3

    .line 322
    :cond_c4
    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 328
    .end local v3    # "i":I
    :cond_c7
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 330
    .end local v2    # "tempMaxID":I
    goto :goto_9f

    .line 331
    :cond_d6
    return-void
.end method

.method protected final buildContinentData_Population()V
    .registers 7

    .line 83
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1c

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 92
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    :try_start_1d
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 93
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 94
    .local v2, "tID":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_65} :catch_69

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 98
    .end local v1    # "i":I
    .end local v2    # "tID":I
    :cond_68
    goto :goto_6d

    .line 96
    :catch_69
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 100
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_73
    :try_start_73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9a

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_97

    .line 105
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_97} :catch_9b

    .line 103
    :cond_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 110
    .end local v2    # "i":I
    :cond_9a
    goto :goto_9f

    .line 108
    :catch_9b
    move-exception v2

    .line 109
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 112
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_9f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d6

    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_a7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c7

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_c4

    .line 117
    move v2, v3

    .line 115
    :cond_c4
    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 121
    .end local v3    # "i":I
    :cond_c7
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    .end local v2    # "tempMaxID":I
    goto :goto_9f

    .line 124
    :cond_d6
    return-void
.end method

.method protected final buildContinentData_Prestige()V
    .registers 7

    .line 367
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 377
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_44

    .line 378
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_44} :catch_48

    .line 376
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 383
    .end local v2    # "i":I
    :cond_47
    goto :goto_4c

    .line 381
    :catch_48
    move-exception v2

    .line 382
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 385
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_83

    .line 386
    const/4 v2, 0x0

    .line 388
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_74

    .line 389
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 390
    move v2, v3

    .line 388
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 394
    .end local v3    # "i":I
    :cond_74
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    .end local v2    # "tempMaxID":I
    goto :goto_4c

    .line 397
    :cond_83
    return-void
.end method

.method protected final buildContinentData_RegimentsLimit()V
    .registers 7

    .line 499
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    :try_start_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 509
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_43

    .line 510
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_43} :catch_47

    .line 508
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 515
    .end local v2    # "i":I
    :cond_46
    goto :goto_4b

    .line 513
    :catch_47
    move-exception v2

    .line 514
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 517
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_82

    .line 518
    const/4 v2, 0x0

    .line 520
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_53
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 521
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_70

    .line 522
    move v2, v3

    .line 520
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 526
    .end local v3    # "i":I
    :cond_73
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 528
    .end local v2    # "tempMaxID":I
    goto :goto_4b

    .line 529
    :cond_82
    return-void
.end method

.method protected final buildContinentData_ReligionCivs()V
    .registers 7

    .line 160
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "populationReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    :try_start_13
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 168
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    if-ne v3, v4, :cond_59

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_59} :catch_5d

    .line 167
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 174
    .end local v2    # "i":I
    :cond_5c
    goto :goto_61

    .line 172
    :catch_5d
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 176
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_67
    :try_start_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8b

    .line 181
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8b} :catch_8f

    .line 179
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 186
    .end local v2    # "i":I
    :cond_8e
    goto :goto_93

    .line 184
    :catch_8f
    move-exception v2

    .line 185
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 188
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ca

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_9b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_bb

    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_b8

    .line 193
    move v2, v3

    .line 191
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 197
    .end local v3    # "i":I
    :cond_bb
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    .end local v2    # "tempMaxID":I
    goto :goto_93

    .line 200
    :cond_ca
    return-void
.end method

.method protected final buildContinentData_ReligionCivs_Right()V
    .registers 7

    .line 203
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "populationReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    :try_start_13
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 211
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    if-ne v3, v4, :cond_59

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_59} :catch_5d

    .line 210
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 217
    .end local v2    # "i":I
    :cond_5c
    goto :goto_61

    .line 215
    :catch_5d
    move-exception v1

    .line 216
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 219
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_67
    :try_start_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8b

    .line 224
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8b} :catch_8f

    .line 222
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 229
    .end local v2    # "i":I
    :cond_8e
    goto :goto_93

    .line 227
    :catch_8f
    move-exception v2

    .line 228
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 231
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ca

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_9b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_bb

    .line 235
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_b8

    .line 236
    move v2, v3

    .line 234
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 240
    .end local v3    # "i":I
    :cond_bb
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 242
    .end local v2    # "tempMaxID":I
    goto :goto_93

    .line 243
    :cond_ca
    return-void
.end method

.method protected final buildContinentData_ResourceProduction()V
    .registers 7

    .line 466
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods_ResourceCiv(II)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 476
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_44

    .line 477
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_44} :catch_48

    .line 475
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 482
    .end local v2    # "i":I
    :cond_47
    goto :goto_4c

    .line 480
    :catch_48
    move-exception v2

    .line 481
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 484
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_83

    .line 485
    const/4 v2, 0x0

    .line 487
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_74

    .line 488
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 489
    move v2, v3

    .line 487
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 493
    .end local v3    # "i":I
    :cond_74
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    .end local v2    # "tempMaxID":I
    goto :goto_4c

    .line 496
    :cond_83
    return-void
.end method

.method protected final buildContinentData_UnlockedTechnologies()V
    .registers 7

    .line 334
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "numOfProvincesByContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "tempValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    :try_start_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 344
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_45

    .line 345
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49

    .line 343
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 350
    .end local v2    # "i":I
    :cond_48
    goto :goto_4d

    .line 348
    :catch_49
    move-exception v2

    .line 349
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 352
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_84

    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, "tempMaxID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 356
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 357
    move v2, v3

    .line 355
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 361
    .end local v3    # "i":I
    :cond_75
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    .end local v2    # "tempMaxID":I
    goto :goto_4d

    .line 364
    :cond_84
    return-void
.end method

.method protected final buildHeights(II)V
    .registers 7
    .param p1, "nGraphHeight"    # I
    .param p2, "nMaxValue"    # I

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 659
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->setHeight(I)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 661
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method protected final drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 583
    .local p6, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    .local p7, "tSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    iget-wide v4, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    .line 584
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v4, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    .line 587
    :cond_12
    const/4 v0, 0x0

    .line 589
    .local v0, "tempValuesHeight":I
    iget-wide v4, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_108

    .line 590
    const/4 v4, 0x0

    .line 592
    .local v4, "tempHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    iget-object v6, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    .line 593
    iget-object v6, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 592
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 596
    .end local v5    # "i":I
    :cond_38
    int-to-float v5, v4

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v8, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    float-to-int v4, v5

    .line 597
    move v5, v4

    .line 599
    .end local v0    # "tempValuesHeight":I
    .local v5, "tempValuesHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v6, 0x0

    move v15, v6

    move v6, v4

    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    .local v6, "tempHeight":I
    .local v15, "tempAnimationHeight":I
    :goto_4b
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_106

    .line 600
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v0

    if-lez v0, :cond_102

    .line 602
    :try_start_61
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v10, p3, p5

    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    if-lt v6, v0, :cond_88

    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    move v13, v0

    goto :goto_89

    :cond_88
    move v13, v6

    :goto_89
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, p4

    move v12, v15

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_b0} :catch_b1

    .line 605
    goto :goto_e5

    .line 603
    :catch_b1
    move-exception v0

    .line 604
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v7, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v10, p3, p5

    iget-object v8, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v8

    if-lt v6, v8, :cond_d8

    iget-object v8, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v8

    move v13, v8

    goto :goto_d9

    :cond_d8
    move v13, v6

    :goto_d9
    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, p4

    move v12, v15

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    .line 606
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e5
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    add-int/2addr v15, v0

    .line 607
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    sub-int/2addr v6, v0

    .line 609
    if-gtz v6, :cond_102

    .line 610
    goto :goto_106

    .line 599
    :cond_102
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4b

    .line 614
    .end local v4    # "i":I
    .end local v6    # "tempHeight":I
    .end local v15    # "tempAnimationHeight":I
    :cond_106
    :goto_106
    goto/16 :goto_17c

    .line 616
    .end local v5    # "tempValuesHeight":I
    .local v0, "tempValuesHeight":I
    :cond_108
    const/4 v4, 0x0

    move v12, v4

    move v4, v0

    .end local v0    # "tempValuesHeight":I
    .local v4, "tempValuesHeight":I
    .local v12, "i":I
    :goto_10b
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_17b

    .line 617
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v0

    if-lez v0, :cond_178

    .line 619
    :try_start_121
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v8, p3, p5

    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_153} :catch_154

    .line 622
    goto :goto_16b

    .line 620
    :catch_154
    move-exception v0

    .line 621
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v5, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v8, p3, p5

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 623
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_16b
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v0

    add-int/2addr v4, v0

    .line 616
    :cond_178
    add-int/lit8 v12, v12, 0x1

    goto :goto_10b

    :cond_17b
    move v5, v4

    .line 629
    .end local v4    # "tempValuesHeight":I
    .end local v12    # "i":I
    .restart local v5    # "tempValuesHeight":I
    :goto_17c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 631
    :try_start_183
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    add-int v0, p3, p5

    sub-int/2addr v0, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v9, v0, v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_1a2} :catch_1a3

    .line 634
    goto :goto_1bf

    .line 632
    :catch_1a3
    move-exception v0

    .line 633
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    add-int v7, p3, p5

    sub-int/2addr v7, v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v9, v7, v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 636
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1bf
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    add-int v0, p3, p5

    sub-int/2addr v0, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v9, v0, v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 637
    return-void
.end method

.method protected final drawDataTextValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    add-int v0, p3, p5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v0, v1

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 641
    return-void
.end method

.method protected final drawDataTextValue_Short(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 649
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    add-int v0, p3, p5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v0, v1

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3ee66666    # 0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 652
    goto :goto_3c

    .line 650
    :catch_3b
    move-exception v0

    .line 653
    :goto_3c
    return-void
.end method

.method protected final drawDataTextValue_Splitted(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    add-int v0, p3, p5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v0, v1

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 645
    return-void
.end method

.method public final getCivID()I
    .registers 2

    .line 666
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    return v0
.end method

.method protected final getInView()Z
    .registers 2

    .line 680
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->inView:Z

    return v0
.end method

.method protected final getValue()I
    .registers 4

    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "tOut":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 673
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 676
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method

.method protected final getValue(I)I
    .registers 3
    .param p1, "i"    # I

    .line 696
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v0

    return v0
.end method

.method protected final getValueDataTypeID(I)I
    .registers 3
    .param p1, "i"    # I

    .line 700
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v0

    return v0
.end method

.method protected final getValuesSize()I
    .registers 2

    .line 692
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final resetAnimation()V
    .registers 3

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    .line 689
    return-void
.end method

.method protected final setInView(Z)V
    .registers 2
    .param p1, "inView"    # Z

    .line 684
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->inView:Z

    .line 685
    return-void
.end method
