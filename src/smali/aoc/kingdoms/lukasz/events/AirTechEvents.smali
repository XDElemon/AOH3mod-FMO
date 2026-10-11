.class public Laoc/kingdoms/lukasz/events/AirTechEvents;
.super Ljava/lang/Object;
.source "AirTechEvents.java"

# static fields
.field private static afIdx:I = -0x1

.field private static formatted:Z


# direct methods
.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static findEventIndex()I
    .registers 4
    const/4 v0, 0x0
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;
    :b4loop
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :b4nf
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/events/Event;
    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;
    const-string v3, "af_tech_breakthrough"
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :b4next
    return v0
    :b4next
    add-int/lit8 v0, v0, 0x1
    goto :b4loop
    :b4nf
    const/4 v0, -0x1
    return v0
.end method

.method public static onTechCompleted(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 6
    :try_start_0
    const/16 v0, 0x20
    if-lt p1, v0, :b4end
    const/16 v0, 0x4a
    if-gt p1, v0, :b4end
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I
    move-result v1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-ne v1, v0, :b4end
    sget v2, Laoc/kingdoms/lukasz/events/AirTechEvents;->afIdx:I
    const/4 v0, -0x2
    if-eq v2, v0, :b4end
    if-gez v2, :b4have
    invoke-static {}, Laoc/kingdoms/lukasz/events/AirTechEvents;->findEventIndex()I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/events/AirTechEvents;->afIdx:I
    if-gez v2, :b4have
    const/4 v0, -0x2
    sput v0, Laoc/kingdoms/lukasz/events/AirTechEvents;->afIdx:I
    goto :b4end
    :b4have
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/events/Event;
    sget-boolean v0, Laoc/kingdoms/lukasz/events/AirTechEvents;->formatted:Z
    if-nez v0, :b4skip
    invoke-static {v3, v1}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V
    const/4 v0, 0x1
    sput-boolean v0, Laoc/kingdoms/lukasz/events/AirTechEvents;->formatted:Z
    :b4skip
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    const/4 v1, 0x0
    invoke-virtual {v0, v1, v2, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V
    new-instance v0, Laoc/kingdoms/lukasz/events/AirTechEvents$Task;
    const-string v1, "afTechEvent"
    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/events/AirTechEvents$Task;-><init>(Ljava/lang/String;I)V
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :b4end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    return-void
.end method