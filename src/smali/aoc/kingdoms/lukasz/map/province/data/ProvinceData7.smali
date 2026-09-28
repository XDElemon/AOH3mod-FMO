.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;
.super Ljava/lang/Object;
.source "ProvinceData7.java"


# instance fields
.field private g:F

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->g:F

    return-void
.end method


# virtual methods
.method public getIncreasedGrowthRate()F
    .registers 2

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->g:F

    return v0
.end method

.method public getReligionID()I
    .registers 2

    .line 14
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->n:I

    return v0
.end method

.method public setIncreasedGrowthRate(F)V
    .registers 2
    .param p1, "ig"    # F

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->g:F

    .line 27
    return-void
.end method

.method public setReligionID(I)V
    .registers 2
    .param p1, "rel"    # I

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->n:I

    .line 19
    return-void
.end method
