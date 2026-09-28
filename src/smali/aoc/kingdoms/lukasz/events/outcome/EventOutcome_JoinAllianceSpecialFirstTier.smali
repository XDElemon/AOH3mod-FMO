.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_JoinAllianceSpecialFirstTier.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 11
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 12
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;->value:I

    .line 13
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 43
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "JoinAlliance"

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
    .registers 4

    .line 34
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;->value:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    if-ge v0, v1, :cond_19

    .line 35
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;->value:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_19
    const-string v0, "--"

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 18
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;->value:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    if-ge v0, v1, :cond_1c

    .line 19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;->value:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->addFirstTier(I)V

    .line 20
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;->value:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 24
    :cond_1c
    goto :goto_21

    .line 22
    :catch_1d
    move-exception v0

    .line 23
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 25
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method
