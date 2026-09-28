.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;
.super Ljava/lang/Object;
.source "ProvinceData4.java"


# instance fields
.field public s:F

.field public u:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->s:F

    return-void
.end method


# virtual methods
.method public getSiegeProgress()F
    .registers 2

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->s:F

    return v0
.end method

.method public isUnderSiege()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    return v0
.end method

.method public setIsUnderSiege(IZ)V
    .registers 4
    .param p1, "provinceID"    # I
    .param p2, "isUnderSiege"    # Z

    .line 20
    iput-boolean p2, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    .line 22
    if-eqz p2, :cond_14

    .line 23
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addUnderSiege(I)V

    goto :goto_23

    .line 26
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeUnderSiege(I)V

    .line 28
    :goto_23
    return-void
.end method

.method public setIsUnderSiege_Just(Z)V
    .registers 2
    .param p1, "isUnderSiege"    # Z

    .line 31
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    .line 32
    return-void
.end method

.method public setSiegeProgress(F)V
    .registers 2
    .param p1, "siegeProgress"    # F

    .line 39
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->s:F

    .line 40
    return-void
.end method
