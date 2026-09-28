.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_RunEvent.java"


# instance fields
.field public eventID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "eventID"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 18
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;->eventID:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 40
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->time:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 3

    .line 32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Event"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 23
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RUN EVENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;->eventID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 24
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;->eventID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 27
    goto :goto_24

    .line 25
    :catch_20
    move-exception v0

    .line 26
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 29
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_24
    return-void
.end method
