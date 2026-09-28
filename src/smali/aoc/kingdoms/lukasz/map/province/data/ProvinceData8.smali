.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;
.super Ljava/lang/Object;
.source "ProvinceData8.java"


# instance fields
.field public r:F

.field public w:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->w:Z

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->r:F

    return-void
.end method


# virtual methods
.method public getRevolutionaryRisk()F
    .registers 2

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->r:F

    return v0
.end method

.method public isWonderBuilt()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->w:Z

    return v0
.end method

.method public setRevolutionaryRisk(F)V
    .registers 2
    .param p1, "rr"    # F

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->r:F

    .line 27
    return-void
.end method

.method public setWonderBuilt(Z)V
    .registers 2
    .param p1, "wo"    # Z

    .line 18
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->w:Z

    .line 19
    return-void
.end method
