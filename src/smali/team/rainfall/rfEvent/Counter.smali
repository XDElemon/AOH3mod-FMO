.class public Lteam/rainfall/rfEvent/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# instance fields
.field public iCivID:I

.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lteam/rainfall/rfEvent/Counter;->iCivID:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lteam/rainfall/rfEvent/Counter;->iCivID:I

    .line 11
    const-string v1, "$$IsolationForest_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_4a

    .line 12
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "array":[Ljava/lang/String;
    aget-object v2, v1, v0

    iput-object v2, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_41

    .line 15
    iget-object v2, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lteam/rainfall/rfEvent/Counter;->iCivID:I

    .line 16
    iget-object v2, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    .line 18
    :cond_41
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lteam/rainfall/rfEvent/Counter;->value:I

    .line 19
    .end local v1    # "array":[Ljava/lang/String;
    goto :goto_4e

    .line 20
    :cond_4a
    iput-object v3, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    .line 21
    iput v0, p0, Lteam/rainfall/rfEvent/Counter;->value:I

    .line 23
    :goto_4e
    return-void
.end method

.method public static existsInCiv(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)Z
    .registers 6
    .param p0, "civilization"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$IsolationForest_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 35
    const/4 v0, 0x1

    return v0

    .line 37
    .end local v1    # "s":Ljava/lang/String;
    :cond_2f
    goto :goto_8

    .line 38
    :cond_30
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getRaw()Ljava/lang/String;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$IsolationForest_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lteam/rainfall/rfEvent/Counter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lteam/rainfall/rfEvent/Counter;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
