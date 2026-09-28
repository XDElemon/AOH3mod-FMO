.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
.super Ljava/lang/Object;
.source "CivData3.java"


# instance fields
.field public a:I

.field public c:F

.field public e:F

.field public t:F

.field public w:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    .line 18
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    return-void
.end method


# virtual methods
.method public getCorruption()F
    .registers 2

    .line 31
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    return v0
.end method

.method public getInflation()F
    .registers 2

    .line 23
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    return v0
.end method

.method public setCorruption(F)V
    .registers 2
    .param p1, "fCorruption"    # F

    .line 35
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    .line 36
    return-void
.end method

.method public setInflation(F)V
    .registers 2
    .param p1, "fInflation"    # F

    .line 27
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    .line 28
    return-void
.end method
