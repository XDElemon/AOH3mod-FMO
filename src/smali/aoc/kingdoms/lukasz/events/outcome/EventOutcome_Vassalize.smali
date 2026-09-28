.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Vassalize.java"


# instance fields
.field public lordCivTag:Ljava/lang/String;

.field public vassalCivTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "lordCivTag"    # Ljava/lang/String;
    .param p2, "vassalCivTag"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 13
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;->lordCivTag:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;->vassalCivTag:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 51
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 33
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;->lordCivTag:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "lordCivID":I
    if-lez v0, :cond_24

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 39
    :cond_24
    const-string v1, ""

    return-object v1
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 5

    .line 44
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;->vassalCivTag:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "vassalCivID":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez v0, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_39
    const-string v2, "?"

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateCiv(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 20
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;->lordCivTag:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "lordCivID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;->vassalCivTag:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v1

    .line 23
    .local v1, "vassalCivID":I
    if-lez v0, :cond_17

    if-lez v1, :cond_17

    .line 24
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 28
    .end local v0    # "lordCivID":I
    .end local v1    # "vassalCivID":I
    :cond_17
    goto :goto_1c

    .line 26
    :catch_18
    move-exception v0

    .line 27
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 29
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method
