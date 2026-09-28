.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_ChangeIdeologyCiv.java"


# instance fields
.field public civA:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "value"    # I
    .param p2, "civA"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    .line 16
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->civA:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 66
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->council:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 5

    .line 45
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "idA":I
    if-lez v0, :cond_36

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ChangeIdeology"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 51
    :cond_36
    const-string v1, " -- "

    return-object v1
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 3

    .line 56
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    if-ltz v0, :cond_19

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    return-object v0

    .line 60
    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 8
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 22
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    if-ltz v0, :cond_65

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 23
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "idA":I
    if-lez v0, :cond_65

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->changeGovernmentType(IIZ)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 26
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->government:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;->CHANGE_GOVERNMENT_COST:F

    add-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 27
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->government:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;->CHANGE_GOVERNMENT_COST_LEGACY:F

    add-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 29
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_65

    .line 30
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 31
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 33
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Government"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;->value:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    .line 40
    .end local v0    # "idA":I
    :cond_65
    goto :goto_6a

    .line 38
    :catch_66
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 41
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method
