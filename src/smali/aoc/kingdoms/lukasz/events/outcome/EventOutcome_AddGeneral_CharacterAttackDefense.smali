.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddGeneral_CharacterAttackDefense.java"


# instance fields
.field public Attack:I

.field public Defense:I

.field public sGeneral:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "sGeneral"    # Ljava/lang/String;
    .param p2, "Attack"    # I
    .param p3, "Defense"    # I

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 15
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->sGeneral:Ljava/lang/String;

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->Attack:I

    .line 17
    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->Defense:I

    .line 18
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 41
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->general:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "RecruitGeneral"

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

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->sGeneral:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 23
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->sGeneral:Ljava/lang/String;

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->Attack:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;->Defense:I

    invoke-static {p1, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadGeneral(ILjava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 26
    goto :goto_e

    .line 24
    :catch_a
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method
