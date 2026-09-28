.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_ChangeReligionCiv.java"


# instance fields
.field public civA:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "value"    # I
    .param p2, "civA"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    .line 15
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->civA:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 67
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 5

    .line 46
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "idA":I
    if-lez v0, :cond_36

    .line 49
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

    const-string v3, "ConvertReligion"

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

    .line 52
    :cond_36
    const-string v1, " -- "

    return-object v1
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 3

    .line 57
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    if-ltz v0, :cond_19

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    return-object v0

    .line 61
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

    .line 21
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    if-ltz v0, :cond_55

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 22
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, "idA":I
    if-lez v0, :cond_55

    .line 25
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V

    .line 27
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    .line 28
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 30
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_55

    .line 31
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 32
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 34
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Religion"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;->value:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    .line 41
    .end local v0    # "idA":I
    :cond_55
    goto :goto_5a

    .line 39
    :catch_56
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 42
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method
