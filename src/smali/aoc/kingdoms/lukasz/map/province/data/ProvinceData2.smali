.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;
.super Ljava/lang/Object;
.source "ProvinceData2.java"


# instance fields
.field public d:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->d:F

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->l:F

    return-void
.end method


# virtual methods
.method public getDevastation()F
    .registers 2

    .line 14
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->d:F

    return v0
.end method

.method public getLoot()F
    .registers 2

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->l:F

    return v0
.end method

.method public setDevastation(F)V
    .registers 2
    .param p1, "fDevastation"    # F

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->d:F

    .line 19
    return-void
.end method

.method public setLoot(F)V
    .registers 2
    .param p1, "fLoot"    # F

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->l:F

    .line 27
    return-void
.end method
