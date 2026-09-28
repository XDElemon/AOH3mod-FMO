.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
.super Ljava/lang/Object;
.source "AI_Army_Composition.java"


# instance fields
.field public numFirstLine:I

.field public numFlank:I

.field public numOfRegiments:I

.field public numSiege:I

.field public numSupport:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 13
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .registers 12
    .param p1, "civID"    # I
    .param p2, "numOfRegiments"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 13
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "numNotUsed":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    .line 37
    .local v2, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v3

    .line 39
    .local v3, "maxBattleWidth":I
    div-int/lit8 v4, p2, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 40
    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr p2, v4

    .line 42
    int-to-float v4, p2

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_FirstLine_Perc:F

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 43
    int-to-float v4, p2

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_FlankLine_Perc:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 45
    iget v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-gtz v4, :cond_44

    .line 46
    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    add-int/2addr v1, v4

    .line 47
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 50
    :cond_44
    iget v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-gtz v4, :cond_4d

    .line 51
    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v1, v4

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 55
    :cond_4d
    iget v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-gtz v4, :cond_56

    .line 56
    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    add-int/2addr v1, v4

    .line 57
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 60
    :cond_56
    if-lez v1, :cond_bf

    .line 61
    iget v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-lez v0, :cond_ac

    .line 62
    iget v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v0, :cond_85

    .line 63
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    int-to-double v5, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 64
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    int-to-double v5, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    goto :goto_bf

    .line 66
    :cond_85
    iget v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-lez v0, :cond_bf

    .line 67
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    int-to-double v5, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 68
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    int-to-double v5, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    goto :goto_bf

    .line 71
    :cond_ac
    iget v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-lez v0, :cond_b6

    .line 72
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    goto :goto_bf

    .line 74
    :cond_b6
    iget v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-lez v0, :cond_bf

    .line 75
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 79
    :cond_bf
    :goto_bf
    iget v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-lez v0, :cond_e3

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_SiegeWeaponPerSupportUnits:I

    if-le v0, v4, :cond_e3

    .line 80
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_SiegeWeaponPerSupportUnits:I

    div-int/2addr v0, v4

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_SiegeWeapon_Max:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 81
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v0, v4

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 84
    :cond_e3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 85
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V
    .registers 3
    .param p1, "armyComposition"    # Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 13
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    .line 24
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 25
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 26
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 27
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 29
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 30
    return-void
.end method


# virtual methods
.method public LOG(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numFirstLine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numFlank: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numSiege: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public updateNumOfRegiments()V
    .registers 3

    .line 88
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    .line 89
    return-void
.end method
