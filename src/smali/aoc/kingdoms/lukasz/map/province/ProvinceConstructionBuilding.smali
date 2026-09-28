.class public Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;
.super Ljava/lang/Object;
.source "ProvinceConstructionBuilding.java"


# instance fields
.field private building:I

.field private buildingID:I

.field private iConstructionTime:I

.field public iConstructionTimeLeft:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "building"    # I
    .param p2, "buildingID"    # I
    .param p3, "iConstructionTime"    # I
    .param p4, "iConstructionTimeLeft"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->building:I

    .line 19
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->buildingID:I

    .line 20
    iput p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTime:I

    .line 21
    iput p4, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    .line 22
    return-void
.end method


# virtual methods
.method public getBuilding()I
    .registers 2

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->building:I

    return v0
.end method

.method public getBuildingID()I
    .registers 2

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->buildingID:I

    return v0
.end method

.method public getConstructionTime()I
    .registers 2

    .line 43
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTime:I

    return v0
.end method

.method public getConstructionTimeLeft()I
    .registers 2

    .line 51
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    return v0
.end method

.method public setBuilding(I)V
    .registers 2
    .param p1, "building"    # I

    .line 31
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->building:I

    .line 32
    return-void
.end method

.method public setBuildingID(I)V
    .registers 2
    .param p1, "buildingID"    # I

    .line 39
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->buildingID:I

    .line 40
    return-void
.end method

.method public setConstructionTime(I)V
    .registers 2
    .param p1, "iConstructionTime"    # I

    .line 47
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTime:I

    .line 48
    return-void
.end method

.method public setConstructionTimeLeft(I)V
    .registers 2
    .param p1, "iConstructionTimeLeft"    # I

    .line 55
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    .line 56
    return-void
.end method
