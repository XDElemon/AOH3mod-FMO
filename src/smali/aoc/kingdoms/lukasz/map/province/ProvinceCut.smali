.class public Laoc/kingdoms/lukasz/map/province/ProvinceCut;
.super Ljava/lang/Object;
.source "ProvinceCut.java"


# instance fields
.field public iMaxX:I

.field public iMaxY:I

.field public iMinX:I

.field public iMinY:I

.field private iPointsSize:I

.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p2, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    .line 13
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    .line 14
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    .line 23
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    .line 24
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    .line 26
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    .line 28
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    if-lez v1, :cond_d4

    .line 29
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    .line 30
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    .line 31
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    .line 32
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    .line 34
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_55
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    if-ge v0, v1, :cond_d4

    .line 35
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    if-le v1, v2, :cond_77

    .line 36
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    .line 39
    :cond_77
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    if-ge v1, v2, :cond_95

    .line 40
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    .line 43
    :cond_95
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    if-le v1, v2, :cond_b3

    .line 44
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    .line 47
    :cond_b3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    if-ge v1, v2, :cond_d1

    .line 48
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    .line 34
    :cond_d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 52
    .end local v0    # "i":I
    :cond_d4
    return-void
.end method


# virtual methods
.method public final getPointsSize()I
    .registers 2

    .line 65
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    return v0
.end method

.method public final getPointsX(I)I
    .registers 4
    .param p1, "i"    # I

    .line 57
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final getPointsY(I)I
    .registers 4
    .param p1, "i"    # I

    .line 61
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    return v0
.end method
