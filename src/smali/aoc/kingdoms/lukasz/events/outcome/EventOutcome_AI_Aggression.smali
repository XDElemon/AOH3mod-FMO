.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AI_Aggression.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 11
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 12
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;->value:I

    .line 13
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 36
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->ai:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 3

    .line 26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "AI"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 18
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getExtraAggressiveness()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;->value:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setExtraAggressiveness(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 21
    goto :goto_17

    .line 19
    :catch_13
    move-exception v0

    .line 20
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 22
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_17
    return-void
.end method
