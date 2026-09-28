.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Resource_PriceChange.java"


# instance fields
.field public changePrice:I

.field public changePrice_Min:I

.field public changePrice_Random:I

.field public iResourceID:I

.field public timeInMonths:I

.field public timeInMonths_Min:I

.field public timeInMonths_Random:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 11
    .param p1, "iResourceID"    # I
    .param p2, "changePrice_Min"    # I
    .param p3, "changePrice_Random"    # I
    .param p4, "timeInMonths_Min"    # I
    .param p5, "timeInMonths_Random"    # I

    .line 24
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 25
    sget v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    .line 26
    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice_Min:I

    .line 27
    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice_Random:I

    .line 28
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths_Min:I

    .line 29
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths_Random:I

    .line 31
    if-lez p3, :cond_2d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    add-int/2addr v0, p2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_INCREASE_CHANCE:I

    if-ge v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, -0x1

    :goto_3f
    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    .line 32
    if-lez p5, :cond_4d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    :cond_4d
    add-int/2addr v2, p4

    iput v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths:I

    .line 33
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 64
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "PriceChange"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    if-lez v1, :cond_32

    const-string v1, "+"

    goto :goto_34

    :cond_32
    const-string v1, ""

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    int-to-float v1, v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 5

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APriceModifierIsAppliedUntilX"

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue1()I
    .registers 2

    .line 69
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    return v0
.end method

.method public getValue2()F
    .registers 2

    .line 74
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    int-to-float v0, v0

    return v0
.end method

.method public update()V
    .registers 12

    .line 38
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice_Min:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice_Random:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_12

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice_Random:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_INCREASE_CHANCE:I

    if-ge v1, v5, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, -0x1

    :goto_25
    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    .line 39
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths_Min:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths_Random:I

    if-lez v1, :cond_38

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths_Random:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    :cond_38
    add-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths:I

    .line 41
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->timeInMonths:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->setPriceChangePerc(IFI)V

    .line 43
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v0, :cond_75

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 44
    :cond_75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    if-lez v3, :cond_9d

    const-string v3, "+"

    goto :goto_9f

    :cond_9d
    const-string v3, ""

    :goto_9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    int-to-float v3, v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->iResourceID:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 45
    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;->changePrice:I

    if-lez v2, :cond_c3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_c5

    :cond_c3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_c5
    move-object v10, v2

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 44
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cd} :catch_ce

    .line 49
    :cond_cd
    goto :goto_d2

    .line 47
    :catch_ce
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d2
    return-void
.end method
