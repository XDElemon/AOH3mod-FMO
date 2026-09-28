.class public Laoc/kingdoms/lukasz/map/PeaceTreaty;
.super Ljava/lang/Object;
.source "PeaceTreaty.java"


# instance fields
.field public demandGold:I

.field public demandGovernmentChange:Z

.field public demandHumiliate:Z

.field public demandMilitaryAccess:Z

.field public demandReligionConversion:Z

.field public demandReturnProvinces:Z

.field public demandVassalization:Z

.field public demandWarReparations:Z

.field public fAggressiveExpansion:F

.field public fScore:F

.field public fScoreTotal:F

.field public fTotalProvinceWarScore_CivLost:F

.field public iCivID:I

.field public iCivID2:I

.field public lLiberateCiv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinces_Liberate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lSubjectTransfer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public warKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "iCivID"    # I
    .param p2, "nWarKey"    # Ljava/lang/String;
    .param p3, "player"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    .line 46
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    .line 47
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    .line 48
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    .line 49
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    .line 51
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReturnProvinces:Z

    .line 56
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    .line 57
    iput p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    .line 60
    :try_start_37
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 61
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    goto :goto_74

    .line 64
    :cond_5e
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_74} :catch_75

    .line 68
    :goto_74
    goto :goto_79

    .line 66
    :catch_75
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_79
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getTotalProvinceValue(I)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    .line 72
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildScore()V

    .line 74
    if-nez p3, :cond_9e

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_87
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_9e

    .line 76
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 79
    .end local v0    # "i":I
    :cond_9e
    return-void
.end method

.method public static getCivsPossibleToLiberate(I)Ljava/util/List;
    .registers 5
    .param p0, "iCivID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v0, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 1035
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v2, v3, :cond_6f

    .line 1036
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_6c

    .line 1037
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1038
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6c} :catch_73

    .line 1035
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1034
    .end local v2    # "j":I
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1045
    .end local v1    # "i":I
    :cond_72
    goto :goto_77

    .line 1043
    :catch_73
    move-exception v1

    .line 1044
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1047
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_77
    return-object v0
.end method

.method public static getLiberateCivEconomy(II)I
    .registers 6
    .param p0, "iCivID"    # I
    .param p1, "liberateCivID"    # I

    .line 1075
    const/4 v0, 0x0

    .line 1077
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 1078
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1079
    int-to-float v2, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 1077
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1083
    .end local v1    # "i":I
    :cond_34
    return v0
.end method

.method public static getLiberateCivPopulation(II)J
    .registers 7
    .param p0, "iCivID"    # I
    .param p1, "liberateCivID"    # I

    .line 1063
    const-wide/16 v0, 0x0

    .line 1065
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 1066
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1067
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 1065
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1071
    .end local v2    # "i":I
    :cond_34
    return-wide v0
.end method

.method public static getLiberateCivProvinces(II)I
    .registers 5
    .param p0, "iCivID"    # I
    .param p1, "liberateCivID"    # I

    .line 1051
    const/4 v0, 0x0

    .line 1053
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1054
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1055
    add-int/lit8 v0, v0, 0x1

    .line 1053
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1059
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method public static getTotalProvinceValue(I)F
    .registers 4
    .param p0, "nCivID"    # I

    .line 1007
    const/4 v0, 0x0

    .line 1009
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1010
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, v2

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1013
    .end local v1    # "i":I
    :cond_1e
    return v0
.end method

.method public static getTotalProvinceValue_Liberate(II)F
    .registers 5
    .param p0, "nCivID"    # I
    .param p1, "liberateCivID"    # I

    .line 1017
    const/4 v0, 0x0

    .line 1019
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1020
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1021
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, v2

    .line 1019
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1025
    .end local v1    # "i":I
    :cond_30
    return v0
.end method

.method public static getWarReparationsPerMonth(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 1003
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS:F

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static moveAllArmiesToOwnTerritory(I)V
    .registers 9
    .param p0, "civID"    # I

    .line 1089
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_109

    .line 1090
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_109

    .line 1091
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result v1

    if-nez v1, :cond_105

    .line 1092
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v1

    .line 1094
    .local v1, "id":I
    if-ltz v1, :cond_105

    .line 1095
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_5f

    .line 1096
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(Ljava/lang/String;)Z

    .line 1099
    :cond_5f
    const/4 v2, 0x0

    .line 1100
    .local v2, "bestID":I
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v3

    .line 1102
    .local v3, "bestDistance":F
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_76
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v4, v6, :cond_c1

    .line 1103
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_be

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v6

    if-nez v6, :cond_be

    .line 1104
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v6

    .line 1106
    .local v6, "tDistance":F
    cmpl-float v7, v3, v6

    if-lez v7, :cond_be

    .line 1107
    move v3, v6

    .line 1108
    move v2, v4

    .line 1102
    .end local v6    # "tDistance":F
    :cond_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 1113
    .end local v4    # "j":I
    :cond_c1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 1115
    .local v4, "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v4, :cond_105

    .line 1116
    iput-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 1117
    iput-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 1119
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 1120
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 1090
    .end local v1    # "id":I
    .end local v2    # "bestID":I
    .end local v3    # "bestDistance":F
    .end local v4    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_105
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_12

    .line 1126
    .end local v0    # "i":I
    :cond_109
    return-void
.end method

.method public static updateRivals(I)V
    .registers 3
    .param p0, "civID"    # I

    .line 995
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_1d

    .line 996
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 997
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeRival(I)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1000
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method


# virtual methods
.method public addProvince(I)Z
    .registers 6
    .param p1, "iProvinceID"    # I

    .line 211
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4b

    .line 212
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_29

    .line 213
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 214
    return v1

    .line 212
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 218
    .end local v0    # "i":I
    :cond_29
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4a

    .line 219
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 221
    return v1

    .line 228
    :cond_4a
    return v2

    .line 225
    :cond_4b
    return v2
.end method

.method public final addProvinces_LiberateCiv(II)V
    .registers 6
    .param p1, "civID"    # I
    .param p2, "liberateCivID"    # I

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 429
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 430
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 431
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    .end local v0    # "i":I
    :cond_45
    return-void
.end method

.method public buildAggressiveExpansion()V
    .registers 9

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    .line 137
    :try_start_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_47

    .line 138
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PROVINCE_MAX:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PER_PROVINCE_VALUE:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    .line 139
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getAggressiveExpansion_Extra(I)F

    move-result v6

    mul-float v5, v5, v6

    mul-float v4, v4, v5

    .line 138
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_48

    .line 137
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 143
    .end local v1    # "i":I
    :cond_47
    goto :goto_4c

    .line 141
    :catch_48
    move-exception v1

    .line 142
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 145
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4c
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v1, :cond_aa

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_51
    :try_start_51
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_a5

    .line 149
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-nez v2, :cond_a2

    .line 150
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PROVINCE_MAX:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PER_PROVINCE_VALUE_VASSALIZATION:F

    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    .line 151
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getAggressiveExpansion_Extra(I)F

    move-result v6

    mul-float v5, v5, v6

    mul-float v4, v4, v5

    .line 150
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_a2} :catch_a6

    .line 147
    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 156
    .end local v1    # "i":I
    :cond_a5
    goto :goto_aa

    .line 154
    :catch_a6
    move-exception v1

    .line 155
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 159
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_aa
    :goto_aa
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_ab
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11c

    .line 161
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b4
    :try_start_b4
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_114

    .line 162
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PROVINCE_MAX:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PER_PROVINCE_VALUE_SUBJECT_TRANSFER:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    .line 163
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getAggressiveExpansion_Extra(I)F

    move-result v7

    mul-float v6, v6, v7

    mul-float v5, v5, v6

    .line 162
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_111} :catch_115

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 167
    .end local v2    # "i":I
    :cond_114
    goto :goto_119

    .line 165
    :catch_115
    move-exception v2

    .line 166
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 159
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_119
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 170
    .end local v1    # "a":I
    :cond_11c
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-eqz v1, :cond_129

    .line 171
    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    .line 174
    :cond_129
    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v1, v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    .line 175
    return-void
.end method

.method public buildScore()V
    .registers 7

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "scoreCivID":F
    const/4 v1, 0x0

    .line 87
    .local v1, "scoreCivID2":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 88
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, v3

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 92
    .end local v2    # "i":I
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_24
    :try_start_24
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_80

    if-ge v2, v3, :cond_7f

    .line 94
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_31
    :try_start_31
    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_77

    .line 95
    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_WINNING_SIDE_VASSALS:F
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_71} :catch_78

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 99
    .end local v3    # "j":I
    :cond_77
    goto :goto_7c

    .line 97
    :catch_78
    move-exception v3

    .line 98
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_79
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_80

    .line 92
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 103
    .end local v2    # "i":I
    :cond_7f
    goto :goto_84

    .line 101
    :catch_80
    move-exception v2

    .line 102
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 105
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_84
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_85
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_a5

    .line 106
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v1, v3

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 109
    .end local v2    # "i":I
    :cond_a5
    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    .line 111
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_WINNING_SIDE:F

    mul-float v2, v2, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_LOSING_SIDE:F

    mul-float v3, v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 114
    :try_start_b9
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    if-ltz v2, :cond_f6

    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v2, v3, :cond_f6

    .line 115
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_f6} :catch_f7

    .line 119
    :cond_f6
    goto :goto_fb

    .line 117
    :catch_f7
    move-exception v2

    .line 118
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 121
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_fb
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    if-eqz v2, :cond_113

    .line 122
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_COALITION_WAR:F

    mul-float v2, v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 124
    :cond_113
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    if-eqz v2, :cond_12b

    .line 125
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_CONQUER_VASSAL_WAR:F

    mul-float v2, v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 128
    :cond_12b
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_WARSCORE_COST_PER_POINT:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_WAR_SCORE_COST:[F

    iget v5, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v2, v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 129
    return-void
.end method

.method public final demandGold()Z
    .registers 4

    .line 257
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_MAX:I

    if-ge v0, v1, :cond_22

    .line 258
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGold()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_22

    .line 259
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    .line 260
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGold()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 262
    return v1

    .line 266
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public final demandGold_Cancel()V
    .registers 3

    .line 270
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-lez v0, :cond_13

    .line 271
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    .line 272
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGold()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 274
    :cond_13
    return-void
.end method

.method public final demandGovernmentChange()V
    .registers 3

    .line 480
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    if-eqz v0, :cond_11

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    .line 482
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_27

    .line 485
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    .line 487
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 490
    :cond_27
    :goto_27
    return-void
.end method

.method public final demandHumiliate()V
    .registers 3

    .line 330
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-eqz v0, :cond_11

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    .line 332
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_27

    .line 335
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    .line 337
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 341
    :cond_27
    :goto_27
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    .line 342
    return-void
.end method

.method public final demandLiberateCiv(II)V
    .registers 5
    .param p1, "civID"    # I
    .param p2, "liberateCivID"    # I

    .line 399
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 401
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_2c

    .line 402
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->removeProvinces_LiberateCiv(II)V

    .line 404
    goto :goto_2f

    .line 400
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 408
    .end local v0    # "i":I
    :cond_2f
    :goto_2f
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_58

    .line 411
    :cond_39
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_58

    .line 412
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->addProvinces_LiberateCiv(II)V

    .line 414
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 418
    :cond_58
    :goto_58
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    .line 419
    return-void
.end method

.method public final demandMilitaryAccess()V
    .registers 3

    .line 311
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    if-eqz v0, :cond_11

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    .line 313
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_27

    .line 316
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    .line 318
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 321
    :cond_27
    :goto_27
    return-void
.end method

.method public final demandReligionConversion()V
    .registers 3

    .line 461
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    if-eqz v0, :cond_11

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    .line 463
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_27

    .line 466
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    .line 468
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 471
    :cond_27
    :goto_27
    return-void
.end method

.method public final demandSubjectTransfer(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 372
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 374
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_29

    .line 375
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    goto :goto_2c

    .line 373
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 380
    .end local v0    # "i":I
    :cond_2c
    :goto_2c
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_52

    .line 383
    :cond_36
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_52

    .line 384
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 389
    :cond_52
    :goto_52
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    .line 390
    return-void
.end method

.method public final demandVassalization()V
    .registers 3

    .line 351
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v0, :cond_11

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    .line 353
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_27

    .line 356
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    .line 358
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 362
    :cond_27
    :goto_27
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    .line 363
    return-void
.end method

.method public final demandWarReparations()V
    .registers 3

    .line 292
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    if-eqz v0, :cond_11

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    .line 294
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_27

    .line 297
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    .line 299
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 302
    :cond_27
    :goto_27
    return-void
.end method

.method public enforceDemands(Z)Z
    .registers 16
    .param p1, "byPlayer"    # Z

    .line 511
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 513
    .local v0, "updateFOG":Z
    :goto_1e
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    .line 514
    .local v3, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    .line 516
    .local v4, "civ2":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v5, 0x0

    .line 519
    .local v5, "updatePlayersWars":Z
    if-nez p1, :cond_45

    :try_start_2d
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->isInThisWar(I)Z

    move-result v6
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3f} :catch_43

    if-eqz v6, :cond_45

    const/4 v6, 0x1

    goto :goto_46

    .line 520
    :catch_43
    move-exception v6

    goto :goto_48

    .line 519
    :cond_45
    const/4 v6, 0x0

    :goto_46
    move v5, v6

    .line 522
    nop

    .line 526
    :goto_48
    if-nez p1, :cond_17e

    :try_start_4a
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17e

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED:Z

    if-eqz v6, :cond_17e

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v6, :cond_17e

    .line 527
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED_CHANCE:I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_72} :catch_4c7

    if-ge v6, v8, :cond_17e

    .line 529
    const/4 v6, 0x0

    .line 530
    .local v6, "connectionFound":Z
    const/4 v8, 0x0

    .line 532
    .local v8, "canAccessMainSea":Z
    :try_start_76
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "i":I
    :goto_7d
    if-ltz v9, :cond_b4

    .line 533
    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    .line 535
    .local v10, "province":Laoc/kingdoms/lukasz/map/province/Province;
    iget-boolean v11, v10, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz v11, :cond_94

    .line 536
    const/4 v8, 0x1

    .line 539
    :cond_94
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_95
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_b1

    .line 540
    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    iget v13, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    if-ne v12, v13, :cond_ae

    .line 541
    const/4 v6, 0x1

    .line 542
    const/4 v9, -0x1

    .line 543
    goto :goto_b1

    .line 539
    :cond_ae
    add-int/lit8 v11, v11, 0x1

    goto :goto_95

    .line 532
    .end local v10    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v11    # "j":I
    :cond_b1
    :goto_b1
    add-int/lit8 v9, v9, -0x1

    goto :goto_7d

    .line 548
    .end local v9    # "i":I
    :cond_b4
    if-nez v6, :cond_179

    .line 549
    const/4 v9, 0x1

    .line 551
    .local v9, "removeProvinces":Z
    if-eqz v8, :cond_e1

    .line 552
    const/4 v10, 0x0

    .line 554
    .local v10, "canCivAccessMainSea":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_bb
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    if-ge v11, v12, :cond_d2

    .line 555
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget-boolean v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz v12, :cond_cf

    .line 556
    const/4 v10, 0x1

    .line 557
    goto :goto_d2

    .line 554
    :cond_cf
    add-int/lit8 v11, v11, 0x1

    goto :goto_bb

    .line 561
    .end local v11    # "i":I
    :cond_d2
    :goto_d2
    if-eqz v10, :cond_e1

    .line 562
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v11, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_ABANDON_DEMAND_PROVINCES_HAVE_ONLY_ACCESS_TO_MAIN_SEA_CHANCE:I

    if-lt v7, v11, :cond_e1

    .line 563
    const/4 v9, 0x0

    .line 568
    .end local v10    # "canCivAccessMainSea":Z
    :cond_e1
    if-eqz v9, :cond_179

    .line 570
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "i":I
    :goto_ea
    if-ltz v7, :cond_143

    .line 571
    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iput-boolean v1, v10, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    .line 572
    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    iput v11, v10, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    .line 573
    iget v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v10, v11

    iput v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 575
    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 570
    add-int/lit8 v7, v7, -0x1

    goto :goto_ea

    .line 578
    .end local v7    # "i":I
    :cond_143
    iget-boolean v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    if-nez v7, :cond_14a

    .line 579
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion()V

    .line 582
    :cond_14a
    iget-boolean v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    if-nez v7, :cond_151

    .line 583
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange()V

    .line 586
    :cond_151
    iget-boolean v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-nez v7, :cond_158

    .line 587
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization()V

    .line 590
    :cond_158
    iget-boolean v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    if-nez v7, :cond_15f

    .line 591
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations()V

    .line 594
    :cond_15f
    iget-boolean v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-nez v7, :cond_166

    .line 595
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate()V

    .line 598
    :cond_166
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    .line 599
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    .line 600
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    .line 601
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    .line 603
    iget-boolean v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    if-nez v7, :cond_179

    .line 604
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_179} :catch_17a

    .line 610
    .end local v6    # "connectionFound":Z
    .end local v8    # "canAccessMainSea":Z
    .end local v9    # "removeProvinces":Z
    :cond_179
    goto :goto_17e

    .line 608
    :catch_17a
    move-exception v6

    .line 609
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_17b
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 614
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_17e
    :goto_17e
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_185
    if-ltz v6, :cond_22f

    .line 615
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 617
    .local v7, "provID":I
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 619
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v8

    if-nez v8, :cond_1fc

    .line 620
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE:F

    mul-float v9, v9, v10

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    .line 621
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiency()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_TAX_CHANGE:F

    mul-float v9, v9, v10

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    .line 622
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE:F

    mul-float v9, v9, v10

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setGrowthRate(F)V

    .line 623
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE:F

    mul-float v9, v9, v10

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    .line 626
    :cond_1fc
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_MAX_UNREST:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    .line 628
    iget-object v8, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addConqueredProvinces(I)V

    .line 630
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v8, v9, :cond_22b

    .line 631
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    add-int/2addr v9, v2

    iput v9, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    .line 614
    .end local v7    # "provID":I
    :cond_22b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_185

    .line 635
    .end local v6    # "i":I
    :cond_22f
    if-nez p1, :cond_2e3

    .line 636
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2e3

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2e3

    .line 637
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_EXTRA_DEMAND_SURROUNDED_PROVINCES:Z

    if-eqz v6, :cond_2e3

    .line 638
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v6, "extraDemand":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_24c
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v7, v8, :cond_2a3

    .line 641
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    if-eq v8, v9, :cond_2a0

    .line 642
    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 644
    .local v8, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v9, 0x0

    .line 646
    .local v9, "numOfConnectionWithCivID":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_266
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_293

    .line 647
    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    iget v12, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v11, v12, :cond_27e

    .line 648
    const/4 v9, 0x0

    .line 649
    goto :goto_293

    .line 651
    :cond_27e
    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    iget v12, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    if-ne v11, v12, :cond_290

    .line 652
    add-int/lit8 v9, v9, 0x1

    .line 646
    :cond_290
    add-int/lit8 v10, v10, 0x1

    goto :goto_266

    .line 656
    .end local v10    # "j":I
    :cond_293
    :goto_293
    if-lez v9, :cond_2a0

    .line 657
    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v8    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v9    # "numOfConnectionWithCivID":I
    :cond_2a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_24c

    .line 662
    .end local v7    # "i":I
    :cond_2a3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    .restart local v7    # "i":I
    :goto_2a8
    if-ltz v7, :cond_2e3

    .line 663
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 664
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v8, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addConqueredProvinces(I)V

    .line 667
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v8, v9, :cond_2e0

    .line 668
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    add-int/2addr v9, v2

    iput v9, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    .line 662
    :cond_2e0
    add-int/lit8 v7, v7, -0x1

    goto :goto_2a8

    .line 675
    .end local v6    # "extraDemand":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    :cond_2e3
    sget-boolean v6, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v6, :cond_308

    if-eqz v0, :cond_308

    .line 676
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_2f0
    if-ltz v6, :cond_308

    .line 677
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 676
    add-int/lit8 v6, v6, -0x1

    goto :goto_2f0

    .line 681
    .end local v6    # "i":I
    :cond_308
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v6, :cond_322

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_322

    .line 682
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v6

    .line 684
    .local v6, "puppetBefore":I
    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 686
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    .line 689
    .end local v6    # "puppetBefore":I
    :cond_322
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    if-eqz v6, :cond_362

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_362

    .line 690
    new-instance v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 691
    .local v6, "tBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getWarReparationsPerMonth(I)F

    move-result v7

    iput v7, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 692
    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS_TURNS:I

    add-int/2addr v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 694
    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 696
    new-instance v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 697
    .local v7, "tBonus2":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getWarReparationsPerMonth(I)F

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    mul-float v8, v8, v9

    iput v8, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 698
    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS_TURNS:I

    add-int/2addr v8, v9

    iput v8, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 700
    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 704
    .end local v6    # "tBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    .end local v7    # "tBonus2":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    :cond_362
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    if-eqz v6, :cond_3a1

    .line 705
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v7

    if-eq v6, v7, :cond_3a1

    .line 706
    new-instance v6, Laoc/kingdoms/lukasz/map/PeaceTreaty$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeGovernmentType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    invoke-direct {v6, p0, v7, v8, v9}, Laoc/kingdoms/lukasz/map/PeaceTreaty$1;-><init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;II)V

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_3a1
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_3a1} :catch_4c7

    .line 719
    :cond_3a1
    :try_start_3a1
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/war/War;->updateCapitalProvinceID()V
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3ae} :catch_3af

    .line 722
    goto :goto_3b3

    .line 720
    :catch_3af
    move-exception v6

    .line 721
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_3b0
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 724
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_3b3
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-lez v6, :cond_3c5

    .line 725
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getGold_PerDemand()F

    move-result v6

    .line 727
    .local v6, "demandedGold":F
    iget v7, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v7, v6

    iput v7, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 728
    iget v7, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sub-float/2addr v7, v6

    iput v7, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 731
    .end local v6    # "demandedGold":F
    :cond_3c5
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-eqz v6, :cond_3db

    .line 732
    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_LEGACY_GAIN:F

    add-float/2addr v6, v7

    iput v6, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 733
    iget v6, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_LEGACY_LOSER:F

    sub-float/2addr v6, v7

    iput v6, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 736
    :cond_3db
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    if-eqz v6, :cond_4c6

    .line 737
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v7

    if-eq v6, v7, :cond_4c6

    .line 738
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V
    :try_end_3f0
    .catch Ljava/lang/Exception; {:try_start_3b0 .. :try_end_3f0} :catch_4c7

    .line 741
    :try_start_3f0
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    if-ltz v6, :cond_427

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v6, v7, :cond_427

    .line 742
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v6

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v7

    if-eq v6, v7, :cond_427

    .line 743
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_3f0 .. :try_end_427} :catch_428

    .line 748
    :cond_427
    goto :goto_42c

    .line 746
    :catch_428
    move-exception v6

    .line 747
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_429
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_42c
    .catch Ljava/lang/Exception; {:try_start_429 .. :try_end_42c} :catch_4c7

    .line 751
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_42c
    :try_start_42c
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT:F

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int/2addr v6, v2

    .line 753
    .local v6, "toConvert":I
    if-lez v6, :cond_4c1

    .line 754
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_446
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v8, v9, :cond_45a

    .line 757
    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v8, v8, 0x1

    goto :goto_446

    .line 760
    .end local v8    # "i":I
    :cond_45a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v8

    .line 762
    add-int/lit8 v8, v6, -0x1

    .restart local v8    # "i":I
    :goto_465
    if-ltz v8, :cond_4c1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4c1

    .line 763
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 765
    .local v9, "tR":I
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    iget v11, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v10, v11, :cond_4ba

    .line 766
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v11

    if-eq v10, v11, :cond_4ba

    .line 767
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    .line 771
    :cond_4ba
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4bd
    .catch Ljava/lang/Exception; {:try_start_42c .. :try_end_4bd} :catch_4c2

    .line 762
    nop

    .end local v9    # "tR":I
    add-int/lit8 v8, v8, -0x1

    goto :goto_465

    .line 776
    .end local v6    # "toConvert":I
    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :cond_4c1
    goto :goto_4c6

    .line 774
    :catch_4c2
    move-exception v6

    .line 775
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_4c3
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4c6
    .catch Ljava/lang/Exception; {:try_start_4c3 .. :try_end_4c6} :catch_4c7

    .line 781
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_4c6
    :goto_4c6
    goto :goto_4cb

    .line 779
    :catch_4c7
    move-exception v6

    .line 780
    .restart local v6    # "ex":Ljava/lang/Exception;
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 784
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_4cb
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->PEACE_TREATY_AE_FROM_WAR_LIMIT:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    .line 786
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4de
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_531

    .line 787
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v7, v8, :cond_52e

    .line 788
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 790
    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v7, v8, :cond_52e

    .line 791
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    .line 786
    :cond_52e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4de

    .line 796
    .end local v6    # "i":I
    :cond_531
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_532
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_71a

    .line 797
    const/4 v7, 0x0

    .line 799
    .local v7, "liberated":Z
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    sub-int/2addr v8, v2

    .local v8, "j":I
    :goto_540
    if-ltz v8, :cond_577

    .line 800
    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v9

    if-eqz v9, :cond_574

    .line 801
    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 802
    const/4 v7, 0x1

    .line 799
    :cond_574
    add-int/lit8 v8, v8, -0x1

    goto :goto_540

    .line 806
    .end local v8    # "j":I
    :cond_577
    if-eqz v7, :cond_716

    .line 807
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-lez v8, :cond_716

    .line 808
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_5d0

    .line 809
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 812
    :cond_5d0
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_622

    .line 813
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalProvinceID(I)V

    goto :goto_675

    .line 815
    :cond_622
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    if-ltz v8, :cond_662

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_675

    .line 816
    :cond_662
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    .line 819
    :cond_675
    :goto_675
    iget-object v8, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v9

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_RELATIONS:F

    invoke-virtual {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    .line 820
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_RELATIONS:F

    invoke-virtual {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    .line 822
    iget v8, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_LEGACY:F

    add-float/2addr v8, v9

    iput v8, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 824
    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v9

    if-le v8, v9, :cond_705

    .line 825
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_6df
    sget v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v8, v9, :cond_705

    .line 826
    iget v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v9

    if-eqz v9, :cond_702

    .line 827
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    .line 825
    :cond_702
    add-int/lit8 v8, v8, 0x1

    goto :goto_6df

    .line 832
    .end local v8    # "a":I
    :cond_705
    iget v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addGuarantee(II)V

    .line 796
    .end local v7    # "liberated":Z
    :cond_716
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_532

    .line 838
    .end local v6    # "i":I
    :cond_71a
    :try_start_71a
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/war/War;->peaceTreaty()V
    :try_end_727
    .catch Ljava/lang/Exception; {:try_start_71a .. :try_end_727} :catch_728

    .line 842
    goto :goto_731

    .line 839
    :catch_728
    move-exception v6

    .line 840
    .local v6, "ex":Ljava/lang/Exception;
    const-string v7, "enforceDemands"

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 841
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 844
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_731
    sget-boolean v6, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v6, :cond_797

    if-eqz v0, :cond_797

    .line 845
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v6, :cond_756

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_756

    .line 846
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_742
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v6, v7, :cond_756

    .line 847
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 846
    add-int/lit8 v6, v6, 0x1

    goto :goto_742

    .line 851
    .end local v6    # "i":I
    :cond_756
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_757
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_797

    .line 852
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_760
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v7, v8, :cond_794

    .line 853
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 852
    add-int/lit8 v7, v7, 0x1

    goto :goto_760

    .line 851
    .end local v7    # "j":I
    :cond_794
    add-int/lit8 v6, v6, 0x1

    goto :goto_757

    .line 858
    .end local v6    # "i":I
    :cond_797
    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReturnProvinces:Z

    if-eqz v6, :cond_818

    .line 859
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v6, "returnProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7a1
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v7, v8, :cond_7eb

    .line 862
    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    if-eq v8, v9, :cond_7e8

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v8, v9, :cond_7e8

    .line 863
    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-lez v8, :cond_7e8

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-eq v8, v9, :cond_7e8

    .line 864
    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_7e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a1

    .line 869
    .end local v7    # "i":I
    :cond_7eb
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    .restart local v7    # "i":I
    :goto_7f0
    if-ltz v7, :cond_818

    .line 870
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 869
    add-int/lit8 v7, v7, -0x1

    goto :goto_7f0

    .line 874
    .end local v6    # "returnProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    :cond_818
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    sput v6, Laoc/kingdoms/lukasz/map/war/WarManager;->iWarsSize:I

    .line 877
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 878
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 880
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateRivals(I)V

    .line 881
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateRivals(I)V

    .line 883
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateSpecialAlliances(I)V

    .line 884
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateSpecialAlliances(I)V

    .line 886
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateVassals(I)V

    .line 887
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateVassals(I)V

    .line 889
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveArmiesToOwnTerritory(I)V

    .line 890
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveArmiesToOwnTerritory(I)V

    .line 892
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance_ConqueredProvinces(I)V

    .line 893
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance_ConqueredProvinces(I)V

    .line 895
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-gtz v6, :cond_88a

    .line 896
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-eq v6, v7, :cond_88a

    .line 897
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 901
    :cond_88a
    if-eqz v5, :cond_8df

    .line 903
    :try_start_88c
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    sput v6, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 904
    iget v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    sput v6, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 906
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "PeaceTreaty"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v6, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 909
    new-instance v6, Laoc/kingdoms/lukasz/map/PeaceTreaty$2;

    const-string v7, "rebuildInGame_Wars"

    invoke-direct {v6, p0, v7}, Laoc/kingdoms/lukasz/map/PeaceTreaty$2;-><init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;)V

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 916
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v6, :cond_8c3

    .line 917
    new-instance v6, Laoc/kingdoms/lukasz/map/PeaceTreaty$3;

    const-string v7, "updateProvinceBorder"

    invoke-direct {v6, p0, v7}, Laoc/kingdoms/lukasz/map/PeaceTreaty$3;-><init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;)V

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 925
    :cond_8c3
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v6

    if-eqz v6, :cond_8da

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8da

    .line 926
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V
    :try_end_8da
    .catch Ljava/lang/Exception; {:try_start_88c .. :try_end_8da} :catch_8db

    .line 930
    :cond_8da
    goto :goto_8df

    .line 928
    :catch_8db
    move-exception v1

    .line 929
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 933
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_8df
    :goto_8df
    return v2
.end method

.method public getAggressiveExpansion_Extra(I)F
    .registers 5
    .param p1, "provinceID"    # I

    .line 178
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    if-ne v0, v1, :cond_19

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_SAME_RELIGION:F

    goto :goto_1d

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_DIFFERENT_RELIGION:F

    :goto_1d
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    .line 179
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_DISTANCE:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 178
    return v0
.end method

.method public getGold_PerDemand()F
    .registers 3

    .line 281
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getGold_PerDemand_One()F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public getGold_PerDemand_One()F
    .registers 3

    .line 286
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanValue(I)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_MODIFIER:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getPopulation()I
    .registers 4

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 502
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    add-int/2addr v0, v2

    .line 501
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 505
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method public final getScore_DemandGold()F
    .registers 3

    .line 277
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_DemandGovernmentChange()F
    .registers 3

    .line 493
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOVERNMENT_CHANGE_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_DemandHumiliate()F
    .registers 2

    .line 345
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_COST_SCORE:F

    return v0
.end method

.method public final getScore_DemandMilitaryAccess()F
    .registers 3

    .line 324
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_MILITARY_ACCESS_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_DemandReligionConversion()F
    .registers 3

    .line 474
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_RELIGION_CONVERSION_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_DemandVassalization()F
    .registers 3

    .line 366
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_VASSALIZATION_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_DemandWarReparations()F
    .registers 3

    .line 305
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_LiberateCiv(II)F
    .registers 5
    .param p1, "civID"    # I
    .param p2, "liberateCivID"    # I

    .line 422
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getTotalProvinceValue_Liberate(II)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getScore_SubjectTransfer(I)F
    .registers 4
    .param p1, "civID"    # I

    .line 393
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getTotalProvinceValue(I)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SUBJECT_TRANSFER_COST_SCORE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public isProvinceTaken(I)Z
    .registers 5
    .param p1, "iProvinceID"    # I

    .line 201
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 202
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 203
    return v1

    .line 201
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 207
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final moveArmiesToOwnTerritory(I)V
    .registers 12
    .param p1, "civID"    # I

    .line 938
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 940
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_a8

    .line 941
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    .line 943
    .local v2, "provinceID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_19
    if-ltz v3, :cond_a4

    .line 944
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 946
    .local v4, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 947
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-lez v5, :cond_a0

    .line 948
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    .line 949
    .local v5, "bestProvince":I
    iget v7, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v2, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v7

    .line 951
    .local v7, "bestDistance":F
    const/4 v8, 0x1

    .local v8, "b":I
    :goto_51
    iget v9, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v8, v9, :cond_8c

    .line 952
    iget v9, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_89

    .line 953
    iget v9, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    move v5, v9

    .line 954
    iget v9, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v9

    move v7, v9

    .line 951
    :cond_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 958
    .end local v8    # "b":I
    :cond_8c
    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 959
    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 961
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v8, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 962
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a9

    .line 943
    .end local v4    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v5    # "bestProvince":I
    .end local v7    # "bestDistance":F
    :cond_a0
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_19

    .line 940
    .end local v2    # "provinceID":I
    .end local v3    # "j":I
    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 969
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "i":I
    :cond_a8
    goto :goto_ad

    .line 967
    :catch_a9
    move-exception v0

    .line 968
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 970
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ad
    return-void
.end method

.method public removeProvince(I)V
    .registers 5
    .param p1, "iProvinceID"    # I

    .line 232
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_33

    .line 233
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_30

    .line 234
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    .line 235
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 236
    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 237
    return-void

    .line 232
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 240
    .end local v0    # "i":I
    :cond_33
    return-void
.end method

.method public final removeProvinces_LiberateCiv(II)V
    .registers 9
    .param p1, "civID"    # I
    .param p2, "liberateCivID"    # I

    .line 440
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 442
    .local v0, "liberateCivSize":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_45

    .line 443
    const/4 v2, 0x1

    .line 445
    .local v2, "remove":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    if-ge v3, v0, :cond_3b

    .line 446
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 447
    const/4 v2, 0x0

    .line 448
    goto :goto_3b

    .line 445
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 452
    .end local v3    # "j":I
    :cond_3b
    :goto_3b
    if-eqz v2, :cond_42

    .line 453
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 456
    .end local v1    # "i":I
    .end local v2    # "remove":Z
    :cond_45
    return-void
.end method

.method public resetProvinces()V
    .registers 4

    .line 245
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 246
    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    .line 247
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    .line 248
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 245
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 251
    .end local v0    # "i":I
    :cond_3c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    .line 252
    return-void
.end method

.method public takeProvince(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 185
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->isProvinceTaken(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 186
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->removeProvince(I)V

    .line 187
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    goto :goto_1e

    .line 190
    :cond_11
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->addProvince(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 191
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    .line 195
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    .line 196
    return-void
.end method

.method public final updateSpecialAlliances(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 985
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_4d

    .line 986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v0, v1, :cond_4d

    .line 987
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    if-ne v1, p1, :cond_4a

    .line 988
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->elections()V

    .line 986
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 992
    .end local v0    # "i":I
    :cond_4d
    return-void
.end method

.method public final updateVassals(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 974
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_40

    .line 975
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_40

    .line 976
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_41

    .line 975
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 981
    .end local v0    # "i":I
    :cond_40
    goto :goto_45

    .line 979
    :catch_41
    move-exception v0

    .line 980
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 982
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_45
    return-void
.end method
