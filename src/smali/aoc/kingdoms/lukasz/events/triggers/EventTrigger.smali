.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
.super Ljava/lang/Object;
.source "EventTrigger.java"


# instance fields
.field public triggersAnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;",
            ">;"
        }
    .end annotation
.end field

.field public triggersAndNot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;",
            ">;"
        }
    .end annotation
.end field

.field public triggersOr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;",
            ">;"
        }
    .end annotation
.end field

.field public triggersOrNot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V
    .registers 4
    .param p1, "trigger"    # Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
    .param p2, "typeID"    # I

    .line 17
    packed-switch p2, :pswitch_data_1e

    goto :goto_1c

    .line 31
    :pswitch_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 27
    :pswitch_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    goto :goto_1c

    .line 23
    :pswitch_10
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    goto :goto_1c

    .line 19
    :pswitch_16
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    nop

    .line 35
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

.method public final runTriggers(II)Z
    .registers 7
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 39
    iget-object v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v2, p1, p2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->outCondition(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 40
    return v1

    .line 38
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 44
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_23
    if-ltz v0, :cond_37

    .line 45
    iget-object v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v2, p1, p2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->outCondition(II)Z

    move-result v2

    if-nez v2, :cond_34

    .line 46
    return v1

    .line 44
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 50
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_3e
    const/4 v2, 0x0

    if-ltz v0, :cond_53

    .line 51
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v3, p1, p2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->outCondition(II)Z

    move-result v3

    if-nez v3, :cond_50

    .line 52
    return v2

    .line 50
    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 56
    .end local v0    # "i":I
    :cond_53
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_5a
    if-ltz v0, :cond_6e

    .line 57
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v3, p1, p2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->outCondition(II)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 58
    return v2

    .line 56
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    .line 62
    .end local v0    # "i":I
    :cond_6e
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_80

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :cond_80
    :goto_80
    return v1
.end method
