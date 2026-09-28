.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
.super Ljava/lang/Object;
.source "ProvinceData_Population.java"


# instance fields
.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvincePopulation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
    .registers 3
    .param p1, "i"    # I

    .line 20
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    return-object v0
.end method

.method public getPopulation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvincePopulation;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->p:Ljava/util/List;

    return-object v0
.end method
