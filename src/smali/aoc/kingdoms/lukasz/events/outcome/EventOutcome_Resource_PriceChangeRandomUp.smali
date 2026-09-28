.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Resource_PriceChangeRandomUp.java"


# instance fields
.field public changePrice:I

.field public changePrice_Min:I

.field public changePrice_Random:I

.field public iResourceID:I

.field public timeInMonths:I

.field public timeInMonths_Min:I

.field public timeInMonths_Random:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 8
    .param p1, "changePrice_Min"    # I
    .param p2, "changePrice_Random"    # I
    .param p3, "timeInMonths_Min"    # I
    .param p4, "timeInMonths_Random"    # I

    .line 26
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 27
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice_Min:I

    .line 28
    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice_Random:I

    .line 29
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths_Min:I

    .line 30
    const/4 v0, 0x0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths_Random:I

    .line 32
    if-lez p2, :cond_20

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    add-int/2addr v1, p1

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    .line 33
    if-lez p4, :cond_2e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :cond_2e
    add-int/2addr v0, p3

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths:I

    .line 34
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 77
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->iResourceID:I

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

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    if-lez v1, :cond_32

    const-string v1, "+"

    goto :goto_34

    :cond_32
    const-string v1, ""

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

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

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths:I

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

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->iResourceID:I

    return v0
.end method

.method public getValue2()F
    .registers 2

    .line 87
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    int-to-float v0, v0

    return v0
.end method

.method public update()V
    .registers 10

    .line 39
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "possibleResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_38

    .line 42
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v2, :cond_2e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 43
    :cond_2e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 47
    .end local v1    # "i":I
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_57

    .line 48
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->iResourceID:I

    .line 49
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    :cond_57
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice_Min:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice_Random:I

    const/4 v3, 0x0

    if-lez v2, :cond_69

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice_Random:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    .line 53
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths_Min:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths_Random:I

    if-lez v2, :cond_7d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths_Random:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    :cond_7d
    add-int/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths:I

    .line 55
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->iResourceID:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->timeInMonths:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->setPriceChangePerc(IFI)V

    .line 57
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->iResourceID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    if-lez v4, :cond_ba

    const-string v4, "+"

    goto :goto_bc

    :cond_ba
    const-string v4, ""

    :goto_bc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    int-to-float v4, v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->iResourceID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 58
    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;->changePrice:I

    if-lez v2, :cond_e2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_e4

    :cond_e2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_e4
    move-object v7, v2

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 57
    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ec} :catch_ed

    .line 62
    .end local v0    # "possibleResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_f1

    .line 60
    :catch_ed
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_f1
    return-void
.end method
