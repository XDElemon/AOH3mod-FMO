.class public Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_BonusDiseaseDeathRate.java"


# instance fields
.field public value:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "value"    # F

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;->value:F

    .line 16
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 49
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DiseasesDeathRate"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    const-string v1, "+"

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;->value:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight2(I)Ljava/lang/String;
    .registers 4
    .param p1, "bonus_duration"    # I

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "YearsX"

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 21
    :try_start_0
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 23
    .local v0, "nCivBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;->value:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    .line 24
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit16 v2, p2, 0x16d

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 26
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 29
    .end local v0    # "nCivBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    goto :goto_1f

    .line 27
    :catch_1b
    move-exception v0

    .line 28
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 30
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method
