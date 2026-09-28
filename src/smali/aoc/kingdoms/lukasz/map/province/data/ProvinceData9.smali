.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;
.super Ljava/lang/Object;
.source "ProvinceData9.java"


# instance fields
.field public e:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->s:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->e:I

    return-void
.end method


# virtual methods
.method public getColonizationGrowthRateExtra()I
    .registers 2

    .line 14
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->e:I

    return v0
.end method

.method public getColonizationStartedTurnID()I
    .registers 2

    .line 26
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->s:I

    return v0
.end method

.method public setColonizationGrowthRateExtra(I)V
    .registers 2
    .param p1, "colonizationGrowthRateExtra"    # I

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->e:I

    .line 19
    return-void
.end method

.method public setColonizationStartedTurnID(I)V
    .registers 2
    .param p1, "colonizationStartedTurnID"    # I

    .line 22
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->s:I

    .line 23
    return-void
.end method
