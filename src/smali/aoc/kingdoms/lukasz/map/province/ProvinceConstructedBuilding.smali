.class public Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
.super Ljava/lang/Object;
.source "ProvinceConstructedBuilding.java"


# instance fields
.field private b0:I

.field private b1:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b0:I

    .line 10
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b1:I

    .line 11
    return-void
.end method


# virtual methods
.method public getBuilding()I
    .registers 2

    .line 16
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b0:I

    return v0
.end method

.method public getBuildingID()I
    .registers 2

    .line 24
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b1:I

    return v0
.end method

.method public setBuilding(I)V
    .registers 2
    .param p1, "b0"    # I

    .line 20
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b0:I

    .line 21
    return-void
.end method

.method public setBuildingID(I)V
    .registers 2
    .param p1, "b1"    # I

    .line 28
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b1:I

    .line 29
    return-void
.end method
