.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_SetCiv_Reset2.java"


# instance fields
.field public fromCivTAG:Ljava/lang/String;

.field public toCivTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "fromCivTAG"    # Ljava/lang/String;
    .param p2, "toCivTag"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 18
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->fromCivTAG:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->toCivTag:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 51
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->government:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->fromCivTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 3

    .line 47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->toCivTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 24
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->fromCivTAG:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "fromCivID":I
    if-lez v0, :cond_1b

    .line 26
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->toCivTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivTag(Ljava/lang/String;)V

    .line 27
    new-instance v1, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2$1;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;->toCivTag:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2$1;-><init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 38
    .end local v0    # "fromCivID":I
    :cond_1b
    goto :goto_21

    .line 35
    :catch_1c
    move-exception v0

    .line 36
    .local v0, "var4":Ljava/lang/Exception;
    move-object v1, v0

    .line 37
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "var4":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method
