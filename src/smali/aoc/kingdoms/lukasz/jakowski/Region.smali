.class public Laoc/kingdoms/lukasz/jakowski/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private belowZero:Z

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iProvincesSize:I

.field private lProvinces:Ljava/util/List;
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    .line 14
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->belowZero:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public final addProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 23
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public final buildRegionBounds()V
    .registers 5

    .line 32
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_131

    .line 33
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    .line 34
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    .line 36
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    .line 40
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6a
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    if-ge v0, v2, :cond_12a

    .line 41
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    if-ge v2, v3, :cond_9c

    .line 42
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    .line 45
    :cond_9c
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    if-le v2, v3, :cond_ca

    .line 46
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    .line 49
    :cond_ca
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    if-ge v2, v3, :cond_f8

    .line 50
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    .line 53
    :cond_f8
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    if-le v2, v3, :cond_126

    .line 54
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    .line 40
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6a

    .line 59
    .end local v0    # "i":I
    :cond_12a
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    if-gez v0, :cond_12f

    const/4 v1, 0x1

    :cond_12f
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Region;->belowZero:Z

    .line 61
    :cond_131
    return-void
.end method

.method public final getBelowZero()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->belowZero:Z

    return v0
.end method

.method public final getMaxX()I
    .registers 2

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    return v0
.end method

.method public final getMaxY()I
    .registers 2

    .line 90
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    return v0
.end method

.method public final getMinX()I
    .registers 2

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    return v0
.end method

.method public final getMinY()I
    .registers 2

    .line 86
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    return v0
.end method

.method public final getProvince(I)I
    .registers 3
    .param p1, "i"    # I

    .line 66
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 70
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    return v0
.end method

.method public final getProvincesSize2()I
    .registers 2

    .line 74
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeProvince(I)V
    .registers 3
    .param p1, "i"    # I

    .line 27
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    .line 29
    return-void
.end method
