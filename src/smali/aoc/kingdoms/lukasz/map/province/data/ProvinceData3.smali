.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;
.super Ljava/lang/Object;
.source "ProvinceData3.java"


# instance fields
.field private m:F

.field private t:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->t:F

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->m:F

    return-void
.end method


# virtual methods
.method public getManpower()F
    .registers 2

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->m:F

    return v0
.end method

.method public getTaxEfficiency()F
    .registers 2

    .line 14
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->t:F

    return v0
.end method

.method public setManpower(F)V
    .registers 2
    .param p1, "ma"    # F

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->m:F

    .line 27
    return-void
.end method

.method public setTaxEfficiency(F)V
    .registers 2
    .param p1, "tax"    # F

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->t:F

    .line 19
    return-void
.end method
