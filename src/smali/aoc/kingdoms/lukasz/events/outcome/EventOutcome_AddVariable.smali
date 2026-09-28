.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddVariable.java"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 11
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;->value:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 17
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 20
    goto :goto_10

    .line 18
    :catch_c
    move-exception v0

    .line 19
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 21
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_10
    return-void
.end method
