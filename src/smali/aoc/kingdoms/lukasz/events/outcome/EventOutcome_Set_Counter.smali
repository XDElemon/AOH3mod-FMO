.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Set_Counter.java"


# instance fields
.field public civTAG:Ljava/lang/String;

.field public counterName:Ljava/lang/String;

.field public expStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "civTAG"    # Ljava/lang/String;
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "expStr"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 22
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->civTAG:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->expStr:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 61
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 2

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method synthetic lambda$updateCiv$0$aoc-kingdoms-lukasz-events-outcome-EventOutcome_Set_Counter(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$IsolationForest_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateCiv(II)V
    .registers 9
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 29
    const-string v0, ":"

    :try_start_2
    new-instance v1, Lteam/rainfall/rfEvent/Counter;

    invoke-direct {v1}, Lteam/rainfall/rfEvent/Counter;-><init>()V

    .line 30
    .local v1, "counter":Lteam/rainfall/rfEvent/Counter;
    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    .line 31
    .local v2, "name":Ljava/lang/String;
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "civTag":Ljava/lang/String;
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 33
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 34
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    move-object v3, v0

    .line 36
    :cond_2d
    iput-object v2, v1, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    .line 37
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lteam/rainfall/rfEvent/Counter;->iCivID:I

    .line 38
    iget v0, v1, Lteam/rainfall/rfEvent/Counter;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 39
    .local v0, "civilization":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->expStr:Ljava/lang/String;

    invoke-static {p1, v4}, Lteam/rainfall/rfEvent/ExpressionProcessor;->compute(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lteam/rainfall/rfEvent/Counter;->value:I

    .line 40
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->counterName:Ljava/lang/String;

    invoke-static {v0, v4}, Lteam/rainfall/rfEvent/Counter;->existsInCiv(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 41
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter$$ExternalSyntheticLambda0;-><init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 43
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAT4 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lteam/rainfall/rfEvent/Counter;->value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lteam/rainfall/rfEvent/Counter;->getRaw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 44
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-virtual {v1}, Lteam/rainfall/rfEvent/Counter;->getRaw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_86} :catch_87

    .line 48
    .end local v0    # "civilization":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "counter":Lteam/rainfall/rfEvent/Counter;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "civTag":Ljava/lang/String;
    goto :goto_8b

    .line 46
    :catch_87
    move-exception v0

    .line 47
    .local v0, "var5":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "var5":Ljava/lang/Exception;
    :goto_8b
    return-void
.end method
