.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;
.super Ljava/lang/Object;
.source "CivilizationGoldenAge.java"


# instance fields
.field private m:I

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->p:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->m:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->s:I

    return-void
.end method


# virtual methods
.method public getGoldenAgeMilitary()I
    .registers 2

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->m:I

    return v0
.end method

.method public getGoldenAgeProsperity()I
    .registers 2

    .line 17
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->p:I

    return v0
.end method

.method public getGoldenAgeScience()I
    .registers 2

    .line 33
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->s:I

    return v0
.end method

.method public setGoldenAgeMilitary(I)V
    .registers 2
    .param p1, "golden_age_military"    # I

    .line 29
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->m:I

    .line 30
    return-void
.end method

.method public setGoldenAgeProsperity(I)V
    .registers 2
    .param p1, "golden_age_prosperity"    # I

    .line 21
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->p:I

    .line 22
    return-void
.end method

.method public setGoldenAgeScience(I)V
    .registers 2
    .param p1, "golden_age_science"    # I

    .line 37
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->s:I

    .line 38
    return-void
.end method
