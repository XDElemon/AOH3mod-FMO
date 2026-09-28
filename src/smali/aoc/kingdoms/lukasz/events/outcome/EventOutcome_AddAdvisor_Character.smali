.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddAdvisor_Character.java"


# instance fields
.field public advisorTypeID:I

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "advisorTypeID"    # I

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 15
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;->sName:Ljava/lang/String;

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;->advisorTypeID:I

    .line 17
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 40
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->council:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "HireAdvisor"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;->sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;->advisorTypeID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 22
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;->sName:Ljava/lang/String;

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;->advisorTypeID:I

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 25
    goto :goto_c

    .line 23
    :catch_8
    move-exception v0

    .line 24
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 26
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c
    return-void
.end method
