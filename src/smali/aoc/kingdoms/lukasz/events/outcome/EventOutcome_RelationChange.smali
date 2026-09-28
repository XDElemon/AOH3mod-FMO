.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_RelationChange.java"


# instance fields
.field public fromCivTAG:Ljava/lang/String;

.field public toCivTag:Ljava/lang/String;

.field public value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 4
    .param p1, "fromCivTAG"    # Ljava/lang/String;
    .param p2, "toCivTag"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 15
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->fromCivTAG:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->toCivTag:Ljava/lang/String;

    .line 18
    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->value:F

    .line 19
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 48
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Relations"

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

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->fromCivTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->toCivTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_33

    const-string v1, "+"

    goto :goto_35

    :cond_33
    const-string v1, ""

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->value:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 7
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 24
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->fromCivTAG:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "fromCivID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->toCivTag:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v1

    .line 27
    .local v1, "toCivID":I
    if-lez v0, :cond_26

    if-lez v1, :cond_26

    .line 28
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->value:F

    invoke-virtual {v2, v0, v1, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    .line 29
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;->value:F

    invoke-virtual {v2, v1, v0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 33
    .end local v0    # "fromCivID":I
    .end local v1    # "toCivID":I
    :cond_26
    goto :goto_2b

    .line 31
    :catch_27
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 34
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
