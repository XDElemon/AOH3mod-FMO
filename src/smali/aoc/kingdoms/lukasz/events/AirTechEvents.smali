.class public Laoc/kingdoms/lukasz/events/AirTechEvents;
.super Ljava/lang/Object;
.source "AirTechEvents.java"

# static fields
.field public static spTech:[I

.field public static spEvent:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2
    const/4 v0, 0x0
    new-array v1, v0, [I
    sput-object v1, Laoc/kingdoms/lukasz/events/AirTechEvents;->spTech:[I
    new-array v1, v0, [Ljava/lang/String;
    sput-object v1, Laoc/kingdoms/lukasz/events/AirTechEvents;->spEvent:[Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static findEventIndex(Ljava/lang/String;)I
    .registers 5
    const/4 v0, 0x0
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;
    :b4floop
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :b4fnf
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/events/Event;
    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :b4fnext
    return v0
    :b4fnext
    add-int/lit8 v0, v0, 0x1
    goto :b4floop
    :b4fnf
    const/4 v0, -0x1
    return v0
.end method

.method public static onTechCompleted(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 6
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I
    move-result v1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-ne v1, v0, :b4end
    const/4 v0, 0x0
    :b4scan
    sget-object v2, Laoc/kingdoms/lukasz/events/AirTechEvents;->spTech:[I
    array-length v3, v2
    if-ge v0, v3, :b4end
    aget v3, v2, v0
    if-ne v3, p1, :b4next
    sget-object v3, Laoc/kingdoms/lukasz/events/AirTechEvents;->spEvent:[Ljava/lang/String;
    aget-object v3, v3, v0
    invoke-static {v3}, Laoc/kingdoms/lukasz/events/AirTechEvents;->findEventIndex(Ljava/lang/String;)I
    move-result v3
    if-ltz v3, :b4end
    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/events/Event;
    invoke-static {v2, v1}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    const/4 v1, 0x0
    invoke-virtual {v2, v1, v3, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V
    new-instance v2, Laoc/kingdoms/lukasz/events/AirTechEvents$Task;
    const-string v1, "afTechEvent"
    invoke-direct {v2, v1, v3}, Laoc/kingdoms/lukasz/events/AirTechEvents$Task;-><init>(Ljava/lang/String;I)V
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    goto :b4end
    :b4next
    add-int/lit8 v0, v0, 0x1
    goto :b4scan
    :b4end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    return-void
.end method