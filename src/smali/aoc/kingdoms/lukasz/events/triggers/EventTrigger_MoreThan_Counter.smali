.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_MoreThan_Counter.java"


# instance fields
.field public counterName:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "counterName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;->value:I

    .line 16
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;->counterName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 47
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Random"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;->value:I

    int-to-float v1, v1

    const/16 v2, 0xa

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

.method public getText3()Ljava/lang/String;
    .registers 2

    .line 43
    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .registers 9
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 20
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 21
    .local v0, "civilization":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;->counterName:Ljava/lang/String;

    invoke-static {v0, v1}, Lteam/rainfall/rfEvent/Counter;->existsInCiv(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 23
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$IsolationForest_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;->counterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 25
    new-instance v1, Lteam/rainfall/rfEvent/Counter;

    invoke-direct {v1, v3}, Lteam/rainfall/rfEvent/Counter;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "counter":Lteam/rainfall/rfEvent/Counter;
    iget v4, v1, Lteam/rainfall/rfEvent/Counter;->value:I

    iget v5, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;->value:I

    if-ge v4, v5, :cond_48

    const/4 v2, 0x1

    :cond_48
    return v2

    .line 28
    .end local v1    # "counter":Lteam/rainfall/rfEvent/Counter;
    .end local v3    # "s":Ljava/lang/String;
    :cond_49
    goto :goto_15

    .line 31
    :cond_4a
    return v2
.end method
