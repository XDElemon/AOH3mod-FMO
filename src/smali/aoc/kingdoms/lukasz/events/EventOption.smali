.class public Laoc/kingdoms/lukasz/events/EventOption;
.super Ljava/lang/Object;
.source "EventOption.java"


# instance fields
.field public ai:F

.field public bonus_duration:I

.field public name:Ljava/lang/String;

.field public outcome:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/outcome/EventOutcome;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/EventOption;->name:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final executeOutcome()V
    .registers 3

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 23
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->update()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    .end local v0    # "i":I
    :cond_17
    goto :goto_1c

    .line 25
    :catch_18
    move-exception v0

    .line 26
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 28
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public final executeOutcome(I)V
    .registers 5
    .param p1, "iCivID"    # I

    .line 32
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    if-ltz v0, :cond_25

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 34
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->updateProvince(I)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 38
    .end local v0    # "i":I
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 39
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget v2, p0, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v1, p1, v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->updateCiv(II)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3f

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 43
    .end local v0    # "i":I
    :cond_3e
    goto :goto_43

    .line 41
    :catch_3f
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 44
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_43
    return-void
.end method
