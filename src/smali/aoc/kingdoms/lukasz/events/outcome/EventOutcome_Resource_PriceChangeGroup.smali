.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Resource_PriceChangeGroup.java"


# instance fields
.field public changePrice:I

.field public changePrice_Min:I

.field public changePrice_Random:I

.field public iGroupID:I

.field public timeInMonths:I

.field public timeInMonths_Min:I

.field public timeInMonths_Random:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 11
    .param p1, "iGroupID"    # I
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

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->iGroupID:I

    .line 26
    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice_Min:I

    .line 27
    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice_Random:I

    .line 28
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths_Min:I

    .line 29
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths_Random:I

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

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    .line 32
    if-lez p5, :cond_4d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    :cond_4d
    add-int/2addr v2, p4

    iput v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths:I

    .line 33
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 74
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->iGroupID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceGroupName(I)Ljava/lang/String;

    move-result-object v1

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

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    if-lez v1, :cond_2c

    const-string v1, "+"

    goto :goto_2e

    :cond_2c
    const-string v1, ""

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

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

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths:I

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

    .line 79
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->iGroupID:I

    return v0
.end method

.method public getValue2()F
    .registers 2

    .line 84
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    int-to-float v0, v0

    return v0
.end method

.method public update()V
    .registers 13

    .line 38
    const-string v0, ": "

    :try_start_2
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice_Min:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice_Random:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_14

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice_Random:I

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_INCREASE_CHANCE:I

    if-ge v2, v6, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    :goto_27
    mul-int v1, v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    .line 39
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths_Min:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths_Random:I

    if-lez v2, :cond_3a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths_Random:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    :cond_3a
    add-int/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths:I

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "addNotification":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v3, :cond_8a

    .line 44
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GroupID:I

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->iGroupID:I

    if-ne v3, v4, :cond_87

    .line 45
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v3, :cond_75

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 46
    :cond_75
    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->timeInMonths:I

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v4, v6

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->setPriceChangePerc(IFI)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 43
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 53
    .end local v2    # "i":I
    :cond_8a
    if-lez v1, :cond_f0

    .line 54
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE_GROUP:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->iGroupID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceGroupName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    if-lez v6, :cond_ac

    const-string v6, "+"

    goto :goto_ae

    :cond_ac
    const-string v6, ""

    :goto_ae
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    int-to-float v6, v6

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Resources"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 55
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;->changePrice:I

    if-lez v0, :cond_e6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_e8

    :cond_e6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_e8
    move-object v11, v0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 54
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f0} :catch_f1

    .line 59
    .end local v1    # "addNotification":I
    :cond_f0
    goto :goto_f5

    .line 57
    :catch_f1
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_f5
    return-void
.end method
