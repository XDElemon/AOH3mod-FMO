.class public Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
.super Ljava/lang/Object;
.source "ProvincePopulation.java"


# instance fields
.field private c:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "iCivID"    # I
    .param p2, "iPopulation"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->c:I

    .line 19
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->n:I

    .line 20
    return-void
.end method


# virtual methods
.method public final getCivID()I
    .registers 2

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->c:I

    return v0
.end method

.method public final getPopulation()I
    .registers 2

    .line 29
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->n:I

    return v0
.end method

.method public final setPopulation(I)V
    .registers 2
    .param p1, "iPopulation"    # I

    .line 33
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->n:I

    .line 34
    return-void
.end method
