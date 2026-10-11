.class public Laoc/kingdoms/lukasz/events/AirTechEvents$Task;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "AirTechEvents.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V
    return-void
.end method


# virtual methods
.method public update()V
    .registers 5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;
    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT_INFO:I
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/events/Event;
    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->popUp:Z
    if-eqz v0, :b4tend
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Event()Z
    move-result v0
    if-nez v0, :b4tend
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Laoc/kingdoms/lukasz/events/Event;
    const/4 v2, 0x0
    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I
    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Event(Laoc/kingdoms/lukasz/events/Event;II)V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;
    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT:I
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V
    :b4tend
    return-void
.end method