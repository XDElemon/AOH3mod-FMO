.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Div_Counter.java"


# instance fields
.field public civTAG:Ljava/lang/String;

.field public counterName:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "civTAG"    # Ljava/lang/String;
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 16
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 17
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->civTAG:Ljava/lang/String;

    .line 18
    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->value:I

    .line 19
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->counterName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 59
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 2

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, ""

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 9
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 24
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 25
    .local v0, "civilization":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->counterName:Ljava/lang/String;

    invoke-static {v0, v1}, Lteam/rainfall/rfEvent/Counter;->existsInCiv(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, "counter":Lteam/rainfall/rfEvent/Counter;
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 28
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$IsolationForest_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 31
    new-instance v4, Lteam/rainfall/rfEvent/Counter;

    invoke-direct {v4, v3}, Lteam/rainfall/rfEvent/Counter;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 33
    goto :goto_47

    .line 35
    .end local v3    # "s":Ljava/lang/String;
    :cond_46
    goto :goto_15

    .line 36
    :cond_47
    :goto_47
    if-eqz v1, :cond_5e

    .line 37
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->counterName:Ljava/lang/String;

    iput-object v3, v1, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    .line 38
    iget v3, v1, Lteam/rainfall/rfEvent/Counter;->value:I

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->value:I

    div-int/2addr v3, v4

    iput v3, v1, Lteam/rainfall/rfEvent/Counter;->value:I

    .line 39
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-virtual {v1}, Lteam/rainfall/rfEvent/Counter;->getRaw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    goto :goto_78

    .line 41
    :cond_5e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find counter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    .line 46
    .end local v0    # "civilization":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "counter":Lteam/rainfall/rfEvent/Counter;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_78
    :goto_78
    goto :goto_7d

    .line 44
    :catch_79
    move-exception v0

    .line 45
    .local v0, "var5":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "var5":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method
