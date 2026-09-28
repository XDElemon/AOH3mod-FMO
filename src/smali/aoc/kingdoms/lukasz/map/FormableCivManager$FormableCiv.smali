.class public Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;
.super Ljava/lang/Object;
.source "FormableCivManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/FormableCivManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormableCiv"
.end annotation


# instance fields
.field public CapitalProvinceID:I

.field public ClaimantsTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public FormableCivTag:Ljava/lang/String;

.field public Provinces:Ljava/util/List;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->CapitalProvinceID:I

    return-void
.end method


# virtual methods
.method public final addClaimant(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    return-void

    .line 82
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 83
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 84
    return-void

    .line 82
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 88
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public final addProvince(I)V
    .registers 4
    .param p1, "id"    # I

    .line 51
    if-gez p1, :cond_3

    .line 52
    return-void

    .line 55
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 56
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 57
    return-void

    .line 55
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 61
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public controlsAllProvinces(I)Z
    .registers 5
    .param p1, "civID"    # I

    .line 113
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->getProvincesSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_6d

    .line 115
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_6a

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v2, p1, :cond_6a

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-eq v2, p1, :cond_6a

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_6a

    .line 116
    const/4 v1, 0x0

    return v1

    .line 113
    :cond_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 120
    .end local v0    # "i":I
    :cond_6d
    return v1
.end method

.method public getClaimantsSize()I
    .registers 2

    .line 126
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getControlledProvinces(I)I
    .registers 5
    .param p1, "civID"    # I

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "out":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->getProvincesSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_24

    .line 104
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_21

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 109
    .end local v1    # "i":I
    :cond_24
    return v0
.end method

.method public getProvincesSize()I
    .registers 2

    .line 130
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProvincesSize_WithoutNeutral()I
    .registers 4

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_26

    .line 137
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_23

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 136
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 142
    .end local v1    # "i":I
    :cond_26
    return v0
.end method

.method public final removeClaimant(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 93
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 94
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    return-void

    .line 92
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method public final removeProvince(I)V
    .registers 4
    .param p1, "id"    # I

    .line 65
    if-gez p1, :cond_3

    .line 66
    return-void

    .line 69
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 70
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 71
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    return-void

    .line 69
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 75
    .end local v0    # "i":I
    :cond_23
    return-void
.end method
