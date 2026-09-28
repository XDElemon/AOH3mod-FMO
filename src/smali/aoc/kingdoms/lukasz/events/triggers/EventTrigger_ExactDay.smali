.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_ExactDay.java"


# instance fields
.field public day:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "day"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->day:I

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    .line 17
    iput p3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    .line 18
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 42
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->time:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Date"

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

.method public getText2()Ljava/lang/String;
    .registers 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 22
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    if-gt v0, v1, :cond_27

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    if-lt v0, v1, :cond_12

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    if-gt v0, v1, :cond_27

    :cond_12
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    if-lt v0, v1, :cond_25

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    if-lt v0, v1, :cond_25

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->day:I

    if-lt v0, v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method
