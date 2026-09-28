.class public Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;
.super Ljava/lang/Object;
.source "Civilization_Cores.java"


# instance fields
.field public provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    return-void
.end method


# virtual methods
.method public final addProvince(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 31
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    return-void

    .line 35
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    .line 37
    return-void
.end method

.method public final buildProvincesNonCore(I)V
    .registers 5
    .param p1, "civID"    # I

    .line 16
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 20
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v1, :cond_44

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v1, :cond_44

    .line 21
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 25
    .end local v0    # "i":I
    :cond_47
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    .line 26
    return-void
.end method

.method public final checkProvince(II)V
    .registers 5
    .param p1, "provinceID"    # I
    .param p2, "civID"    # I

    .line 52
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p2, :cond_e

    .line 53
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    .line 54
    return-void

    .line 57
    :cond_e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v0, :cond_35

    .line 58
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 59
    return-void

    .line 62
    :cond_23
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    goto :goto_38

    .line 66
    :cond_35
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    .line 68
    :goto_38
    return-void
.end method

.method public final checkProvince_Full(II)V
    .registers 5
    .param p1, "provinceID"    # I
    .param p2, "civID"    # I

    .line 71
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p2, :cond_e

    .line 72
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    .line 73
    return-void

    .line 76
    :cond_e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 77
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 78
    return-void

    .line 81
    :cond_25
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    goto :goto_3a

    .line 85
    :cond_37
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    .line 87
    :goto_3a
    return-void
.end method

.method public final removeProvince(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    if-ge v0, v1, :cond_24

    .line 41
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 42
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    .line 44
    return-void

    .line 40
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0    # "i":I
    :cond_24
    return-void
.end method
