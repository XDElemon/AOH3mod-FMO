.class public Laoc/kingdoms/lukasz/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public important:Z

.field public mission_desc:Ljava/lang/String;

.field public mission_image:I

.field public musicName:Ljava/lang/String;

.field public no_background:Z

.field public no_text:Z

.field public only_once:Z

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/EventOption;",
            ">;"
        }
    .end annotation
.end field

.field public popUp:Z

.field public possible_to_run:Z

.field public runCivsID:I

.field public run_in_background:Z

.field public show_in_missions:Z

.field public super_event:Z

.field public title:Ljava/lang/String;

.field public triggersAnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public triggersAndNot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public triggersOr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public triggersOrNot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->no_text:Z

    .line 15
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->important:Z

    .line 16
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->no_background:Z

    .line 17
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->super_event:Z

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->musicName:Ljava/lang/String;

    .line 20
    const-string v2, ""

    iput-object v2, p0, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->image:Ljava/lang/String;

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    .line 26
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->show_in_missions:Z

    .line 27
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->popUp:Z

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->run_in_background:Z

    .line 29
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    .line 30
    iput v0, p0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addEvent()Z
    .registers 3

    .line 110
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger;I)V
    .registers 4
    .param p1, "trigger"    # Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .param p2, "typeID"    # I

    .line 41
    packed-switch p2, :pswitch_data_1e

    goto :goto_1c

    .line 52
    :pswitch_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 49
    :pswitch_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_1c

    .line 46
    :pswitch_10
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_1c

    .line 43
    :pswitch_16
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    nop

    .line 55
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public final runTriggers(I)Z
    .registers 8
    .param p1, "iCivID"    # I

    .line 58
    const/4 v0, 0x0

    .line 62
    .local v0, "iProvinceID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 64
    :try_start_b
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v3, p1, v0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1b

    if-eqz v3, :cond_1a

    .line 65
    return v2

    .line 70
    :cond_1a
    goto :goto_20

    .line 67
    :catch_1b
    move-exception v3

    .line 68
    .local v3, "var8":Ljava/lang/Exception;
    move-object v4, v3

    .line 69
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 62
    .end local v3    # "var8":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 73
    :cond_23
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .end local v1    # "i":I
    .local v3, "i":I
    :goto_2a
    if-ltz v3, :cond_44

    .line 75
    :try_start_2c
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v1, p1, v0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_3c

    if-nez v1, :cond_3b

    .line 76
    return v2

    .line 81
    :cond_3b
    goto :goto_41

    .line 78
    :catch_3c
    move-exception v1

    .line 79
    .local v1, "var7":Ljava/lang/Exception;
    move-object v4, v1

    .line 80
    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 73
    .end local v1    # "var7":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 84
    :cond_44
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .end local v3    # "i":I
    .local v1, "i":I
    :goto_4b
    const/4 v3, 0x0

    if-ltz v1, :cond_66

    .line 86
    :try_start_4e
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v4, p1, v0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v4
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5e

    if-nez v4, :cond_5d

    .line 87
    return v3

    .line 92
    :cond_5d
    goto :goto_63

    .line 89
    :catch_5e
    move-exception v3

    .line 90
    .local v3, "var6":Ljava/lang/Exception;
    move-object v4, v3

    .line 91
    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 84
    .end local v3    # "var6":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_63
    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    .line 95
    :cond_66
    iget-object v4, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .end local v1    # "i":I
    .local v4, "i":I
    :goto_6d
    if-ltz v4, :cond_87

    .line 97
    :try_start_6f
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v1, p1, v0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_7f

    if-eqz v1, :cond_7e

    .line 98
    return v3

    .line 103
    :cond_7e
    goto :goto_84

    .line 100
    :catch_7f
    move-exception v1

    .line 101
    .local v1, "var5":Ljava/lang/Exception;
    move-object v5, v1

    .line 102
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "var5":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_84
    add-int/lit8 v4, v4, -0x1

    goto :goto_6d

    .line 106
    :cond_87
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_98

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :cond_99
    :goto_99
    return v2
.end method
