.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
.super Ljava/lang/Object;
.source "CivilizationEventsData3.java"


# instance fields
.field public a:I

.field public p:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    return-void
.end method


# virtual methods
.method public addConqueredProvinces(I)V
    .registers 3
    .param p1, "conquered_provinces"    # I

    .line 29
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    .line 30
    return-void
.end method

.method public addNumOfWars(I)V
    .registers 3
    .param p1, "wars"    # I

    .line 37
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    .line 38
    return-void
.end method

.method public addRecruitedAdvisors(I)V
    .registers 3
    .param p1, "recruitedAdvisors"    # I

    .line 21
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    .line 22
    return-void
.end method

.method public getConqueredProvinces()I
    .registers 2

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    return v0
.end method

.method public getNumOfWars()I
    .registers 2

    .line 33
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    return v0
.end method

.method public getRecruitedAdvisors()I
    .registers 2

    .line 17
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    return v0
.end method
