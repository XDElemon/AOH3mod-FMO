.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;
.super Ljava/lang/Object;
.source "CivilizationEventsData2.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public e:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    .line 18
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    return-void
.end method


# virtual methods
.method public addAdministrativeBuildingsConstructed(I)V
    .registers 3
    .param p1, "administrative_buildings_constructed"    # I

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    .line 36
    return-void
.end method

.method public addBuildingsConstructed(I)V
    .registers 3
    .param p1, "buildings_constructed"    # I

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    .line 28
    return-void
.end method

.method public addCapitalBuildingsConstructed(I)V
    .registers 3
    .param p1, "capital_buildings_constructed"    # I

    .line 59
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    .line 60
    return-void
.end method

.method public addEconomyBuildingsConstructed(I)V
    .registers 3
    .param p1, "economy_buildings_constructed"    # I

    .line 43
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    .line 44
    return-void
.end method

.method public addMilitaryBuildingsConstructed(I)V
    .registers 3
    .param p1, "military_buildings_constructed"    # I

    .line 51
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    .line 52
    return-void
.end method

.method public getAdministrativeBuildingsConstructed()I
    .registers 2

    .line 31
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    return v0
.end method

.method public getBuildingsConstructed()I
    .registers 2

    .line 23
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    return v0
.end method

.method public getCapitalBuildingsConstructed()I
    .registers 2

    .line 55
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    return v0
.end method

.method public getEconomyBuildingsConstructed()I
    .registers 2

    .line 39
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    return v0
.end method

.method public getMilitaryBuildingsConstructed()I
    .registers 2

    .line 47
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    return v0
.end method
