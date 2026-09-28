.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddGeneral.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 35
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->general:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 3

    .line 25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "RecruitGeneral"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 2

    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 17
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
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
