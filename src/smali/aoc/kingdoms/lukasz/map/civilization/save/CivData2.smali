.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData2;
.super Ljava/lang/Object;
.source "CivData2.java"


# instance fields
.field public d:I

.field public g:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->g:I

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->l:I

    .line 14
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->m:I

    .line 17
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->d:I

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "civID"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->g:I

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->l:I

    .line 14
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->m:I

    .line 17
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->d:I

    .line 24
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->g:I

    .line 25
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->l:I

    .line 26
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->m:I

    .line 27
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->d:I

    .line 28
    return-void
.end method


# virtual methods
.method public update(I)V
    .registers 7
    .param p1, "civID"    # I

    .line 33
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 34
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->l:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 35
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->m:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v3, v1

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 36
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData2;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 37
    return-void
.end method
