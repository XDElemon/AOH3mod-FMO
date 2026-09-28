.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;
.super Ljava/lang/Object;
.source "ProvinceData6.java"


# instance fields
.field public e:F

.field public n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->e:F

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->n:I

    return-void
.end method


# virtual methods
.method public getEconomy()F
    .registers 2

    .line 14
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->e:F

    return v0
.end method

.method public getInfrastructure()I
    .registers 2

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->n:I

    return v0
.end method

.method public setEconomy(F)V
    .registers 2
    .param p1, "ec"    # F

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->e:F

    .line 19
    return-void
.end method

.method public setInfrastructure(I)V
    .registers 2
    .param p1, "in"    # I

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->n:I

    .line 27
    return-void
.end method
