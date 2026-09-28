.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_SetCiv_Reset.java"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 17
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;->value:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 46
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->government:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "FormCivilization"

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
    .registers 3

    .line 42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 22
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivTag(Ljava/lang/String;)V

    .line 23
    new-instance v0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset$1;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;->value:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset$1;-><init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 33
    goto :goto_19

    .line 30
    :catch_14
    move-exception v0

    .line 31
    .local v0, "var4":Ljava/lang/Exception;
    move-object v1, v0

    .line 32
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 35
    .end local v0    # "var4":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_19
    return-void
.end method
