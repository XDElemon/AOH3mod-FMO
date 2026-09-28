.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
.super Ljava/lang/Object;
.source "CivilizationEventsData.java"


# instance fields
.field public d:I

.field public e:I

.field public g:I

.field public m:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    .line 18
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    return-void
.end method


# virtual methods
.method public addDevelopedInfrastructure(I)V
    .registers 3
    .param p1, "developed_infrastructure"    # I

    .line 67
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    .line 68
    return-void
.end method

.method public addIncreasedGrowthRate(I)V
    .registers 3
    .param p1, "increased_growth_rate"    # I

    .line 43
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    .line 44
    return-void
.end method

.method public addIncreasedManpower(I)V
    .registers 3
    .param p1, "increased_manpower"    # I

    .line 79
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    .line 80
    return-void
.end method

.method public addIncreasedTaxEfficiency(I)V
    .registers 3
    .param p1, "increased_tax_efficiency"    # I

    .line 55
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    .line 56
    return-void
.end method

.method public addInvestedInEconomy(I)V
    .registers 3
    .param p1, "invested_in_economy"    # I

    .line 31
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    .line 32
    return-void
.end method

.method public getDevelopedInfrastructure()I
    .registers 2

    .line 59
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    return v0
.end method

.method public getIncreasedGrowthRate()I
    .registers 2

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    return v0
.end method

.method public getIncreasedManpower()I
    .registers 2

    .line 71
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    return v0
.end method

.method public getIncreasedTaxEfficiency()I
    .registers 2

    .line 47
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    return v0
.end method

.method public getInvestedInEconomy()I
    .registers 2

    .line 23
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    return v0
.end method

.method public setDevelopedInfrastructure(I)V
    .registers 2
    .param p1, "developed_infrastructure"    # I

    .line 63
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    .line 64
    return-void
.end method

.method public setIncreasedGrowthRate(I)V
    .registers 2
    .param p1, "increased_growth_rate"    # I

    .line 39
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    .line 40
    return-void
.end method

.method public setIncreasedManpower(I)V
    .registers 2
    .param p1, "increased_manpower"    # I

    .line 75
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    .line 76
    return-void
.end method

.method public setIncreasedTaxEfficiency(I)V
    .registers 2
    .param p1, "increased_tax_efficiency"    # I

    .line 51
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    .line 52
    return-void
.end method

.method public setInvestedInEconomy(I)V
    .registers 2
    .param p1, "invested_in_economy"    # I

    .line 27
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    .line 28
    return-void
.end method
