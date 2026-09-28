.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;
.super Ljava/lang/Object;
.source "CivilizationsNeighbors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;
    }
.end annotation


# instance fields
.field public civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;",
            ">;"
        }
    .end annotation
.end field

.field public civsSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    return-void
.end method

.method private addLandNeighbors(Laoc/kingdoms/lukasz/map/province/Province;I)V
    .registers 7
    .param p1, "province"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p2, "civID"    # I

    .line 50
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v0

    .line 52
    .local v0, "numNeighbors":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v0, :cond_1e

    .line 53
    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    .line 55
    .local v2, "neighborCivID":I
    if-lez v2, :cond_1b

    if-eq v2, p2, :cond_1b

    .line 56
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->addCiv(IZ)V

    .line 52
    .end local v2    # "neighborCivID":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 59
    .end local v1    # "j":I
    :cond_1e
    return-void
.end method

.method private addSeaNeighbors(Laoc/kingdoms/lukasz/map/province/Province;I)V
    .registers 12
    .param p1, "province"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p2, "civID"    # I

    .line 62
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v0

    .line 64
    .local v0, "numSeaNeighbors":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v0, :cond_48

    .line 65
    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    .line 66
    .local v2, "seaNeighborID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 68
    .local v3, "seaProvince":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1d

    .line 69
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    .line 72
    :cond_1d
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    .line 73
    .local v4, "numLandNeighbors":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_22
    if-ge v5, v4, :cond_45

    .line 74
    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    .line 75
    .local v6, "landNeighborID":I
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    .line 77
    .local v7, "landNeighborCivID":I
    if-lez v7, :cond_42

    if-eq v7, p2, :cond_42

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v8

    if-nez v8, :cond_42

    .line 78
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->addCiv(IZ)V

    .line 73
    .end local v6    # "landNeighborID":I
    .end local v7    # "landNeighborCivID":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 64
    .end local v2    # "seaNeighborID":I
    .end local v3    # "seaProvince":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v4    # "numLandNeighbors":I
    .end local v5    # "k":I
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 82
    .end local v1    # "j":I
    :cond_48
    return-void
.end method


# virtual methods
.method public addCiv(IZ)V
    .registers 7
    .param p1, "civID"    # I
    .param p2, "byLand"    # Z

    .line 89
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_34

    .line 90
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-ne v2, p1, :cond_31

    .line 91
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->byLand:Z

    if-nez v3, :cond_2e

    if-eqz p2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :cond_2e
    :goto_2e
    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->byLand:Z

    .line 92
    return-void

    .line 89
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 96
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    invoke-direct {v1, p0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;-><init>(Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public final buildNeighbors(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 28
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    .line 31
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    :try_start_f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 35
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    .line 37
    .local v1, "provinceID":I
    if-ltz v1, :cond_31

    .line 38
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->addLandNeighbors(Laoc/kingdoms/lukasz/map/province/Province;I)V

    .line 39
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->addSeaNeighbors(Laoc/kingdoms/lukasz/map/province/Province;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_35

    .line 34
    .end local v1    # "provinceID":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 44
    .end local v0    # "i":I
    :cond_34
    goto :goto_39

    .line 42
    :catch_35
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 46
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_39
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    .line 47
    return-void
.end method

.method public isNeighbor(I)Z
    .registers 4
    .param p1, "civID"    # I

    .line 85
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public logCivNeighbors(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CivNeighbors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v0, v1, :cond_5a

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neighbor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 107
    .end local v0    # "i":I
    :cond_5a
    return-void
.end method
