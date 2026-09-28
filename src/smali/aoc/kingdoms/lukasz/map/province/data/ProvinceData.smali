.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
.super Ljava/lang/Object;
.source "ProvinceData.java"


# instance fields
.field public c:I

.field public o:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    .line 10
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    return-void
.end method


# virtual methods
.method public getCivID()I
    .registers 2

    .line 20
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    return v0
.end method

.method public getOccupiedByCivID()I
    .registers 2

    .line 28
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    return v0
.end method

.method public getWastelandLevel()I
    .registers 2

    .line 43
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    return v0
.end method

.method public setCivID(I)V
    .registers 2
    .param p1, "iCivID"    # I

    .line 24
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    .line 25
    return-void
.end method

.method public setOccupiedByCivID(II)V
    .registers 4
    .param p1, "provinceID"    # I
    .param p2, "iOccupiedByCivID"    # I

    .line 32
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    .line 34
    if-eqz p2, :cond_14

    .line 35
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addOccupiedProvince(I)V

    goto :goto_23

    .line 38
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeOccupiedProvince(I)V

    .line 40
    :goto_23
    return-void
.end method

.method public setWastelandLevel(I)V
    .registers 2
    .param p1, "wa"    # I

    .line 47
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    .line 48
    return-void
.end method
