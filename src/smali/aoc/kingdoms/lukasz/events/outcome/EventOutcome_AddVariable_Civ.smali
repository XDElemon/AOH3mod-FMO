.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddVariable_Civ.java"


# instance fields
.field public addToCiv:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "addToCiv"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 12
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;->addToCiv:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;->value:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public updateCiv(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 19
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;->addToCiv:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "toCivID":I
    if-lez v0, :cond_13

    .line 22
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 26
    .end local v0    # "toCivID":I
    :cond_13
    goto :goto_18

    .line 24
    :catch_14
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_18
    return-void
.end method
