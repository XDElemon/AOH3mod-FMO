.class public Laoc/kingdoms/lukasz/events/EventsManager;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;
    }
.end annotation


# static fields
.field public static eventIMG:Laoc/kingdoms/lukasz/textures/Image;

.field public static events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsGlobal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsGlobalScenario:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

.field public static eventsScenario:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsSiege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsSiegeScenario:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static exactDate_Events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;",
            ">;"
        }
    .end annotation
.end field

.field public static exactDate_EventsScenario:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;",
            ">;"
        }
    .end annotation
.end field

.field public static iEventsGlobalScenarioSize:I

.field public static iEventsGlobalSize:I

.field public static iEventsScenarioSize:I

.field public static iEventsSiegeScenarioSize:I

.field public static iEventsSiegeSize:I

.field public static iEventsSize:I

.field public static loadScenarioEventsTag:Ljava/lang/String;

.field public static loadedEventIMG:Ljava/lang/String;

.field public static missionImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static runEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static runEventGlobalID:I

.field public static runEventGlobalID_Scenario:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 133
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    .line 134
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->loadedEventIMG:Ljava/lang/String;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    .line 136
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    .line 138
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    .line 140
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    .line 142
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    .line 144
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    .line 146
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    .line 147
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    .line 152
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    .line 153
    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    .line 154
    sput-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method public static clearEventsScenario()V
    .registers 1

    .line 829
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 830
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 831
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 832
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    .line 833
    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    .line 834
    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    .line 835
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 836
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 837
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 838
    return-void
.end method

.method public static getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;
    .registers 3
    .param p0, "id"    # I
    .param p1, "eventType"    # I

    .line 160
    packed-switch p1, :pswitch_data_3a

    .line 173
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    return-object v0

    .line 170
    :pswitch_c
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    return-object v0

    .line 168
    :pswitch_15
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    return-object v0

    .line 166
    :pswitch_1e
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    return-object v0

    .line 164
    :pswitch_27
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    return-object v0

    .line 162
    :pswitch_30
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public static loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    .registers 39
    .param p0, "eventsType"    # I
    .param p1, "sSplit"    # [Ljava/lang/String;

    .line 1118
    move/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_4
    array-length v3, v2

    .line 1119
    .local v3, "iSize":I
    const/4 v4, 0x0

    .line 1120
    .local v4, "exactDate":Z
    const/4 v5, 0x1

    .line 1121
    .local v5, "exactDay":I
    const/4 v6, 0x1

    .line 1122
    .local v6, "exactMonth":I
    const/4 v7, 0x1

    .line 1123
    .local v7, "exactYear":I
    const/4 v8, 0x1

    if-le v3, v8, :cond_3abe

    .line 1124
    new-instance v9, Laoc/kingdoms/lukasz/events/Event;

    invoke-direct {v9}, Laoc/kingdoms/lukasz/events/Event;-><init>()V

    .line 1125
    .local v9, "nEvent":Laoc/kingdoms/lukasz/events/Event;
    const/4 v10, 0x0

    .line 1126
    .local v10, "inTrigger":Z
    const/4 v11, 0x0

    .line 1127
    .local v11, "inOption":Z
    new-instance v12, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v12}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V

    .line 1128
    .local v12, "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    new-instance v13, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-direct {v13}, Laoc/kingdoms/lukasz/events/EventOption;-><init>()V

    .line 1129
    .local v13, "option":Laoc/kingdoms/lukasz/events/EventOption;
    const/4 v14, 0x0

    .line 1130
    .local v14, "nextType":I
    const/4 v15, 0x0

    .line 1131
    .local v15, "triggerType":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 1134
    .local v8, "i":I
    :goto_23
    move/from16 v17, v14

    .end local v14    # "nextType":I
    .local v17, "nextType":I
    if-lt v8, v3, :cond_b1

    .line 1135
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/Event;->addEvent()Z

    move-result v21

    if-nez v21, :cond_2f

    .line 1136
    goto/16 :goto_3ac0

    .line 1139
    :cond_2f
    const/16 v14, 0x3e7

    if-eq v1, v14, :cond_ac

    const/16 v14, 0x3e8

    if-eq v1, v14, :cond_ac

    .line 1140
    if-nez v1, :cond_60

    .line 1141
    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    if-eqz v4, :cond_5a

    .line 1143
    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    move/from16 v22, v3

    .end local v3    # "iSize":I
    .local v22, "iSize":I
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    sget-object v18, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v23, v13

    const/16 v16, 0x1

    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .local v23, "option":Laoc/kingdoms/lukasz/events/EventOption;
    add-int/lit8 v13, v18, -0x1

    invoke-direct {v3, v13, v5, v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;-><init>(IIII)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac0

    .line 1142
    .end local v22    # "iSize":I
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v3    # "iSize":I
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :cond_5a
    move/from16 v22, v3

    move-object/from16 v23, v13

    .end local v3    # "iSize":I
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v22    # "iSize":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    goto/16 :goto_3ac0

    .line 1145
    .end local v22    # "iSize":I
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v3    # "iSize":I
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :cond_60
    move/from16 v22, v3

    move-object/from16 v23, v13

    .end local v3    # "iSize":I
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v22    # "iSize":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6e

    .line 1146
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac0

    .line 1147
    :cond_6e
    const/4 v3, 0x2

    if-ne v1, v3, :cond_78

    .line 1148
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac0

    .line 1149
    :cond_78
    const/4 v3, 0x3

    if-ne v1, v3, :cond_98

    .line 1150
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    if-eqz v4, :cond_3ac0

    .line 1152
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v13, v14, v5, v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;-><init>(IIII)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac0

    .line 1154
    :cond_98
    const/4 v3, 0x4

    if-ne v1, v3, :cond_a2

    .line 1155
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac0

    .line 1156
    :cond_a2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3ac0

    .line 1157
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ac0

    .line 1139
    .end local v22    # "iSize":I
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v3    # "iSize":I
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :cond_ac
    move/from16 v22, v3

    move-object/from16 v23, v13

    .line 1162
    .end local v3    # "iSize":I
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v22    # "iSize":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    return-object v9

    .line 1164
    .end local v22    # "iSize":I
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v3    # "iSize":I
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :cond_b1
    move/from16 v22, v3

    move-object/from16 v23, v13

    .end local v3    # "iSize":I
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v22    # "iSize":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    aget-object v3, v2, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v13, "#"

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c1} :catch_3ac1

    if-eqz v3, :cond_cb

    .line 1166
    move/from16 v14, v17

    move/from16 v3, v22

    move-object/from16 v13, v23

    goto/16 :goto_23

    .line 1169
    :cond_cb
    :try_start_cb
    aget-object v3, v2, v8

    const-string v13, "="

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, "sLine":[Ljava/lang/String;
    array-length v13, v3
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d4} :catch_3aa3

    const/16 v24, 0x6

    const-string v14, " *** Line: "

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/4 v1, 0x1

    if-ne v13, v1, :cond_2fa

    .line 1171
    :try_start_df
    aget-object v1, v3, v26

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e5} :catch_2ed

    if-nez v1, :cond_2e2

    .line 1172
    const-string v1, "next_or"

    const-string v13, "next_and"

    move/from16 v27, v4

    .end local v4    # "exactDate":Z
    .local v27, "exactDate":Z
    const-string v4, "next_or_not"

    move/from16 v28, v5

    .end local v5    # "exactDay":I
    .local v28, "exactDay":I
    const-string v5, "next_and_not"

    if-eqz v10, :cond_1a2

    .line 1173
    move/from16 v29, v6

    .end local v6    # "exactMonth":I
    .local v29, "exactMonth":I
    :try_start_f7
    aget-object v6, v3, v26

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v30

    sparse-switch v30, :sswitch_data_3aca

    :cond_100
    goto :goto_151

    :sswitch_101
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x6

    goto :goto_153

    :sswitch_10a
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x4

    goto :goto_153

    :sswitch_113
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x7

    goto :goto_153

    :sswitch_11c
    const-string v1, "trigger_or_not_end"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x3

    goto :goto_153

    :sswitch_127
    const-string v1, "trigger_and_not_end"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x1

    goto :goto_153

    :sswitch_132
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x5

    goto :goto_153

    :sswitch_13b
    const-string v1, "trigger_or_end"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x2

    goto :goto_153

    :sswitch_146
    const-string v1, "trigger_and_end"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v18, 0x0

    goto :goto_153

    :goto_151
    const/16 v18, -0x1

    :goto_153
    packed-switch v18, :pswitch_data_3aec

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_168

    .line 1191
    :pswitch_159
    const/4 v14, 0x3

    .line 1192
    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    goto :goto_18a

    .line 1188
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15b
    const/4 v14, 0x2

    .line 1189
    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    goto :goto_18a

    .line 1185
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15d
    const/4 v14, 0x1

    .line 1186
    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    goto :goto_18a

    .line 1182
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15f
    const/4 v14, 0x0

    .line 1183
    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    goto :goto_18a

    .line 1178
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_161
    const/4 v10, 0x0

    .line 1179
    invoke-virtual {v9, v12, v15}, Laoc/kingdoms/lukasz/events/Event;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger;I)V

    .line 1180
    move/from16 v14, v17

    goto :goto_18a

    .line 1194
    :goto_168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MISSING LEN=1 IN TRIGGER -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v3, v26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_188} :catch_195

    move/from16 v14, v17

    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    :goto_18a
    move-object/from16 v13, v23

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_3a98

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    :catch_195
    move-exception v0

    move-object v2, v0

    move-object/from16 v13, v23

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .line 1196
    .end local v29    # "exactMonth":I
    .restart local v3    # "sLine":[Ljava/lang/String;
    .restart local v6    # "exactMonth":I
    :cond_1a2
    move/from16 v29, v6

    .end local v6    # "exactMonth":I
    .restart local v29    # "exactMonth":I
    if-eqz v11, :cond_240

    .line 1197
    :try_start_1a6
    aget-object v6, v3, v26

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v18
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1ac} :catch_233

    sparse-switch v18, :sswitch_data_3b00

    :cond_1af
    goto :goto_1df

    :sswitch_1b0
    :try_start_1b0
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    const/16 v19, 0x3

    goto :goto_1e1

    :sswitch_1b9
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    const/16 v19, 0x1

    goto :goto_1e1

    :sswitch_1c2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    const/16 v19, 0x4

    goto :goto_1e1

    :sswitch_1cb
    const-string v1, "option_end"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    const/16 v19, 0x0

    goto :goto_1e1

    :sswitch_1d6
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1da} :catch_195

    if-eqz v1, :cond_1af

    const/16 v19, 0x2

    goto :goto_1e1

    :goto_1df
    const/16 v19, -0x1

    :goto_1e1
    packed-switch v19, :pswitch_data_3b16

    .line 1215
    move-object/from16 v13, v23

    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :try_start_1e6
    new-instance v1, Ljava/lang/StringBuilder;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1e8} :catch_38fd

    goto :goto_208

    .line 1212
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :pswitch_1e9
    const/4 v1, 0x3

    .line 1213
    .end local v17    # "nextType":I
    .local v1, "nextType":I
    move v14, v1

    move-object/from16 v13, v23

    goto :goto_22a

    .line 1209
    .end local v1    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ee
    const/4 v1, 0x2

    .line 1210
    .end local v17    # "nextType":I
    .restart local v1    # "nextType":I
    move v14, v1

    move-object/from16 v13, v23

    goto :goto_22a

    .line 1206
    .end local v1    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f3
    const/4 v1, 0x1

    .line 1207
    .end local v17    # "nextType":I
    .restart local v1    # "nextType":I
    move v14, v1

    move-object/from16 v13, v23

    goto :goto_22a

    .line 1203
    .end local v1    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f8
    const/4 v1, 0x0

    .line 1204
    .end local v17    # "nextType":I
    .restart local v1    # "nextType":I
    move v14, v1

    move-object/from16 v13, v23

    goto :goto_22a

    .line 1199
    .end local v1    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1fd
    const/4 v11, 0x0

    .line 1200
    :try_start_1fe
    iget-object v1, v9, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_200} :catch_233

    move-object/from16 v13, v23

    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :try_start_202
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    move/from16 v14, v17

    goto :goto_22a

    .line 1215
    :goto_208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MISSING LEN=1 IN TRIGGER -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v3, v26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    move/from16 v14, v17

    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    :goto_22a
    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_3a98

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :catch_233
    move-exception v0

    move-object/from16 v13, v23

    move-object v2, v0

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    goto/16 :goto_3aae

    .line 1218
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v3    # "sLine":[Ljava/lang/String;
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :cond_240
    move-object/from16 v13, v23

    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    aget-object v1, v3, v26

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3b24

    :cond_24b
    goto :goto_283

    :sswitch_24c
    const-string v4, "option_btn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b

    const/16 v19, 0x4

    goto :goto_285

    :sswitch_257
    const-string v4, "trigger_or"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b

    const/16 v19, 0x2

    goto :goto_285

    :sswitch_262
    const-string v4, "trigger_or_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b

    const/16 v19, 0x3

    goto :goto_285

    :sswitch_26d
    const-string v4, "trigger_and_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b

    const/16 v19, 0x1

    goto :goto_285

    :sswitch_278
    const-string v4, "trigger_and"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b

    const/16 v19, 0x0

    goto :goto_285

    :goto_283
    const/16 v19, -0x1

    :goto_285
    packed-switch v19, :pswitch_data_3b3a

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_2b7

    .line 1240
    :pswitch_28b
    const/4 v11, 0x1

    .line 1241
    new-instance v1, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/EventOption;-><init>()V

    .line 1242
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .local v1, "option":Laoc/kingdoms/lukasz/events/EventOption;
    move-object v13, v1

    goto :goto_2d7

    .line 1235
    .end local v1    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :pswitch_293
    const/4 v15, 0x3

    .line 1236
    const/4 v10, 0x1

    .line 1237
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V

    .line 1238
    .end local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .local v1, "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    move-object v12, v1

    goto :goto_2d7

    .line 1230
    .end local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    :pswitch_29c
    const/4 v15, 0x2

    .line 1231
    const/4 v10, 0x1

    .line 1232
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V

    .line 1233
    .end local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    move-object v12, v1

    goto :goto_2d7

    .line 1225
    .end local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    :pswitch_2a5
    const/4 v15, 0x1

    .line 1226
    const/4 v10, 0x1

    .line 1227
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V

    .line 1228
    .end local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    move-object v12, v1

    goto :goto_2d7

    .line 1220
    .end local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    :pswitch_2ae
    const/4 v15, 0x0

    .line 1221
    const/4 v10, 0x1

    .line 1222
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V

    .line 1223
    .end local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    move-object v12, v1

    goto :goto_2d7

    .line 1244
    .end local v1    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .restart local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    :goto_2b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MISSING LEN=1 -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v3, v26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_2d7} :catch_38fd

    :goto_2d7
    move/from16 v14, v17

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_3a98

    .line 1171
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .end local v27    # "exactDate":Z
    .end local v28    # "exactDay":I
    .end local v29    # "exactMonth":I
    .restart local v4    # "exactDate":Z
    .restart local v5    # "exactDay":I
    .restart local v6    # "exactMonth":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :cond_2e2
    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v13, v23

    .end local v4    # "exactDate":Z
    .end local v5    # "exactDay":I
    .end local v6    # "exactMonth":I
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v27    # "exactDate":Z
    .restart local v28    # "exactDay":I
    .restart local v29    # "exactMonth":I
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .end local v27    # "exactDate":Z
    .end local v28    # "exactDay":I
    .end local v29    # "exactMonth":I
    .restart local v4    # "exactDate":Z
    .restart local v5    # "exactDay":I
    .restart local v6    # "exactMonth":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :catch_2ed
    move-exception v0

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v13, v23

    move-object v2, v0

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .line 1248
    .restart local v3    # "sLine":[Ljava/lang/String;
    :cond_2fa
    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v13, v23

    .end local v4    # "exactDate":Z
    .end local v5    # "exactDay":I
    .end local v6    # "exactMonth":I
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .restart local v27    # "exactDate":Z
    .restart local v28    # "exactDay":I
    .restart local v29    # "exactMonth":I
    :try_start_302
    array-length v1, v3
    :try_end_303
    .catch Ljava/lang/Exception; {:try_start_302 .. :try_end_303} :catch_3a99

    const/4 v4, 0x1

    if-le v1, v4, :cond_3a8f

    .line 1249
    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/16 v23, 0xe

    const/16 v30, 0xc

    const/16 v31, 0xd

    if-eqz v10, :cond_206d

    .line 1250
    :try_start_314
    aget-object v1, v3, v26

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v33
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_31a} :catch_2060

    sparse-switch v33, :sswitch_data_3b48

    :cond_31d
    goto/16 :goto_dfa

    :sswitch_31f
    :try_start_31f
    const-string v4, "civ_manpower_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x99

    goto/16 :goto_dfb

    :sswitch_32b
    const-string v4, "civ_vassals_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x6d

    goto/16 :goto_dfb

    :sswitch_337
    const-string v4, "civ_defensive_pacts_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x69

    goto/16 :goto_dfb

    :sswitch_343
    const-string v4, "civ_allies_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x67

    goto/16 :goto_dfb

    :sswitch_34f
    const-string v4, "civ_inflation_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa6

    goto/16 :goto_dfb

    :sswitch_35b
    const-string v4, "province_income_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x1d

    goto/16 :goto_dfb

    :sswitch_367
    const-string v4, "province_economy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x12

    goto/16 :goto_dfb

    :sswitch_373
    const-string v4, "civs_have_defensive_pact"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd0

    goto/16 :goto_dfb

    :sswitch_37f
    const-string v4, "civ_is_at_war"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xbc

    goto/16 :goto_dfb

    :sswitch_38b
    const-string v4, "civ_have_guarantee"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd4

    goto/16 :goto_dfb

    :sswitch_397
    const-string v4, "civ_manpower_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9a

    goto/16 :goto_dfb

    :sswitch_3a3
    const-string v4, "civ_capital_city_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x82

    goto/16 :goto_dfb

    :sswitch_3af
    const-string v4, "civ_has_rivalry_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xca

    goto/16 :goto_dfb

    :sswitch_3bb
    const-string v4, "civ_military_advisor_skill_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x95

    goto/16 :goto_dfb

    :sswitch_3c7
    const-string v4, "civ_income_taxation_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb7

    goto/16 :goto_dfb

    :sswitch_3d3
    const-string v4, "recruited_advisors_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa4

    goto/16 :goto_dfb

    :sswitch_3df
    const-string v4, "province_income_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x1c

    goto/16 :goto_dfb

    :sswitch_3eb
    const-string v4, "civ_unlocked_legacies_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x72

    goto/16 :goto_dfb

    :sswitch_3f7
    const-string v4, "civ_largest_producer_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9f

    goto/16 :goto_dfb

    :sswitch_403
    const-string v4, "civ_total_income_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xae

    goto/16 :goto_dfb

    :sswitch_40f
    const-string v4, "civ_research_per_month_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb4

    goto/16 :goto_dfb

    :sswitch_41b
    const-string v4, "largest_producer_production_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa0

    goto/16 :goto_dfb

    :sswitch_427
    const-string v4, "civ_is_largest_producer"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa1

    goto/16 :goto_dfb

    :sswitch_433
    const-string v4, "civ_gold_over_max_amount_of_gold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8d

    goto/16 :goto_dfb

    :sswitch_43f
    const-string v4, "civ_gold_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x63

    goto/16 :goto_dfb

    :sswitch_44b
    const-string v4, "province_is_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x30

    goto/16 :goto_dfb

    :sswitch_457
    const-string v4, "developed_infrastructure_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x4

    goto/16 :goto_dfb

    :sswitch_462
    const-string v4, "civ_regiments_over_regiments_limit"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8c

    goto/16 :goto_dfb

    :sswitch_46e
    const-string v4, "civ_capital_economy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x51

    goto/16 :goto_dfb

    :sswitch_47a
    const-string v4, "civ_production_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x11

    goto/16 :goto_dfb

    :sswitch_486
    const-string v4, "random_chance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x0

    goto/16 :goto_dfb

    :sswitch_491
    const-string v4, "civ_has_larger_regiments_limit_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc4

    goto/16 :goto_dfb

    :sswitch_49d
    const-string v4, "administrative_buildings_constructed_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x36

    goto/16 :goto_dfb

    :sswitch_4a9
    const-string v4, "civs_have_non_aggression"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd1

    goto/16 :goto_dfb

    :sswitch_4b5
    const-string v4, "civ_diplomacy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb0

    goto/16 :goto_dfb

    :sswitch_4c1
    const-string v4, "province_unrest_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x20

    goto/16 :goto_dfb

    :sswitch_4cd
    const-string v4, "increased_tax_efficiency_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb

    goto/16 :goto_dfb

    :sswitch_4d9
    const-string v4, "civ_economy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x48

    goto/16 :goto_dfb

    :sswitch_4e5
    const-string v4, "et_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe6

    goto/16 :goto_dfb

    :sswitch_4f1
    const-string v4, "province_buildings_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x24

    goto/16 :goto_dfb

    :sswitch_4fd
    const-string v4, "province_buildings_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x25

    goto/16 :goto_dfb

    :sswitch_509
    const-string v4, "civ_has_more_technologies_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc7

    goto/16 :goto_dfb

    :sswitch_515
    const-string v4, "province_population_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x18

    goto/16 :goto_dfb

    :sswitch_521
    const-string v4, "civ_supreme_court_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x85

    goto/16 :goto_dfb

    :sswitch_52d
    const-string v4, "civs_opinion_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xcf

    goto/16 :goto_dfb

    :sswitch_539
    const-string v4, "province_infrastructure_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x23

    goto/16 :goto_dfb

    :sswitch_545
    const-string v4, "invested_in_economy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x1

    goto/16 :goto_dfb

    :sswitch_550
    const-string v4, "civ_capital_manpower_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x53

    goto/16 :goto_dfb

    :sswitch_55c
    const-string v4, "civ_capital_unrest_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x55

    goto/16 :goto_dfb

    :sswitch_568
    const-string v4, "civ_has_resource_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x10

    goto/16 :goto_dfb

    :sswitch_574
    const-string v4, "is_not_puppet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xda

    goto/16 :goto_dfb

    :sswitch_580
    const-string v4, "civ_regiments_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8b

    goto/16 :goto_dfb

    :sswitch_58c
    const-string v4, "province_growth_rate_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x15

    goto/16 :goto_dfb

    :sswitch_598
    const-string v4, "is_not_player"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xdc

    goto/16 :goto_dfb

    :sswitch_5a4
    const-string v4, "province_economy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x13

    goto/16 :goto_dfb

    :sswitch_5b0
    const-string v4, "civ_capital_is_occupied"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x60

    goto/16 :goto_dfb

    :sswitch_5bc
    const-string v4, "unique_capital_buildings_constructed_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x3c

    goto/16 :goto_dfb

    :sswitch_5c8
    const-string v4, "province_growth_rate_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x14

    goto/16 :goto_dfb

    :sswitch_5d4
    const-string v4, "civ_loans_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xac

    goto/16 :goto_dfb

    :sswitch_5e0
    const-string v4, "civ_prestige_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x7a

    goto/16 :goto_dfb

    :sswitch_5ec
    const-string v4, "civ_capital_has_building"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x2c

    goto/16 :goto_dfb

    :sswitch_5f8
    const-string v4, "civ_unlocked_advantages_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x76

    goto/16 :goto_dfb

    :sswitch_604
    const-string v4, "civ_regiments_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8a

    goto/16 :goto_dfb

    :sswitch_610
    const-string v4, "civ_wars_total_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x7

    goto/16 :goto_dfb

    :sswitch_61b
    const-string v4, "civ_loans_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xad

    goto/16 :goto_dfb

    :sswitch_627
    const-string v4, "civ_capital_growth_rate_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x57

    goto/16 :goto_dfb

    :sswitch_633
    const-string v4, "civ_provinces_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x43

    goto/16 :goto_dfb

    :sswitch_63f
    const-string v4, "alliance_special_is_member_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xaa

    goto/16 :goto_dfb

    :sswitch_64b
    const-string v4, "province_defense_lvl_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x26

    goto/16 :goto_dfb

    :sswitch_657
    const-string v4, "civ_government_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x66

    goto/16 :goto_dfb

    :sswitch_663
    const-string v4, "civ_provinces_equals"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x45

    goto/16 :goto_dfb

    :sswitch_66f
    const-string v4, "civ_advisor_age_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x96

    goto/16 :goto_dfb

    :sswitch_67b
    const-string v4, "civ_capital_manpower_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x52

    goto/16 :goto_dfb

    :sswitch_687
    const-string v4, "administrative_buildings_constructed_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x37

    goto/16 :goto_dfb

    :sswitch_693
    const-string v4, "civ_capital_growth_rate_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x56

    goto/16 :goto_dfb

    :sswitch_69f
    const-string v4, "civ_nuclear_reactor_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x86

    goto/16 :goto_dfb

    :sswitch_6ab
    const-string v4, "civ_is_not_at_war"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xbd

    goto/16 :goto_dfb

    :sswitch_6b7
    const-string v4, "alliance_special_is_leader_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa9

    goto/16 :goto_dfb

    :sswitch_6c3
    const-string v4, "civ_non_aggression_pacts_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x6b

    goto/16 :goto_dfb

    :sswitch_6cf
    const-string v4, "civ_unlocked_technologies_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x73

    goto/16 :goto_dfb

    :sswitch_6db
    const-string v4, "civ_military_academy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x7f

    goto/16 :goto_dfb

    :sswitch_6e7
    const-string v5, "increased_growth_rate_below"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa

    goto/16 :goto_dfb

    :sswitch_6f3
    const-string v4, "civ_conquered_provinces_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x5

    goto/16 :goto_dfb

    :sswitch_6fe
    const-string v4, "civ_capital_religion_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x2d

    goto/16 :goto_dfb

    :sswitch_70a
    const-string v4, "civ_income_taxation_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb6

    goto/16 :goto_dfb

    :sswitch_716
    const-string v4, "increased_growth_rate_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9

    goto/16 :goto_dfb

    :sswitch_722
    const-string v4, "civ_legacy_per_month_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb3

    goto/16 :goto_dfb

    :sswitch_72e
    const-string v4, "civ_is_vassal_of_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xcb

    goto/16 :goto_dfb

    :sswitch_73a
    const-string v4, "exists_any"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xdf

    goto/16 :goto_dfb

    :sswitch_746
    const-string v4, "if_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe5

    goto/16 :goto_dfb

    :sswitch_752
    const-string v4, "alliance_special_is_leader"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa8

    goto/16 :goto_dfb

    :sswitch_75e
    const-string v4, "civ_is_at_war_days_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xbe

    goto/16 :goto_dfb

    :sswitch_76a
    const-string v4, "civ_nuclear_reactor_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x87

    goto/16 :goto_dfb

    :sswitch_776
    const-string v4, "civ_religion_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x65

    goto/16 :goto_dfb

    :sswitch_782
    const-string v4, "province_manpower_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x1a

    goto/16 :goto_dfb

    :sswitch_78e
    const-string v4, "civ_capital_tax_efficiency_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x4d

    goto/16 :goto_dfb

    :sswitch_79a
    const-string v4, "civ_capital_is_under_siege"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x62

    goto/16 :goto_dfb

    :sswitch_7a6
    const-string v4, "civ_income_economy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb9

    goto/16 :goto_dfb

    :sswitch_7b2
    const-string v4, "civ_total_income_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xaf

    goto/16 :goto_dfb

    :sswitch_7be
    const-string v4, "civs_are_rivals"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc8

    goto/16 :goto_dfb

    :sswitch_7ca
    const-string v4, "civ_neighbors_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x6f

    goto/16 :goto_dfb

    :sswitch_7d6
    const-string v4, "civ_population_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x46

    goto/16 :goto_dfb

    :sswitch_7e2
    const-string v4, "civ_research_per_month_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb5

    goto/16 :goto_dfb

    :sswitch_7ee
    const-string v4, "province_population_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x19

    goto/16 :goto_dfb

    :sswitch_7fa
    const-string v4, "lt_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe7

    goto/16 :goto_dfb

    :sswitch_806
    const-string v4, "civ_tag_religion_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe1

    goto/16 :goto_dfb

    :sswitch_812
    const-string v4, "has_variable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd6

    goto/16 :goto_dfb

    :sswitch_81e
    const-string v4, "unique_capital_buildings_constructed_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x3d

    goto/16 :goto_dfb

    :sswitch_82a
    const-string v4, "civ_non_aggression_pacts_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x6c

    goto/16 :goto_dfb

    :sswitch_836
    const-string v4, "buildings_constructed_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x35

    goto/16 :goto_dfb

    :sswitch_842
    const-string v4, "civ_legacy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa3

    goto/16 :goto_dfb

    :sswitch_84e
    const-string v4, "civ_tag_government_is_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe4

    goto/16 :goto_dfb

    :sswitch_85a
    const-string v4, "invested_in_economy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x2

    goto/16 :goto_dfb

    :sswitch_865
    const-string v4, "province_manpower_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x1b

    goto/16 :goto_dfb

    :sswitch_871
    const-string v4, "civ_prestige_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x79

    goto/16 :goto_dfb

    :sswitch_87d
    const-string v4, "civ_military_academy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x7e

    goto/16 :goto_dfb

    :sswitch_889
    const-string v4, "civ_income_economy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb8

    goto/16 :goto_dfb

    :sswitch_895
    const-string v4, "mt_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe8

    goto/16 :goto_dfb

    :sswitch_8a1
    const-string v4, "civ_diplomacy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb1

    goto/16 :goto_dfb

    :sswitch_8ad
    const-string v4, "civ_economic_advisor_skill_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x90

    goto/16 :goto_dfb

    :sswitch_8b9
    const-string v4, "playing_time_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x3e

    goto/16 :goto_dfb

    :sswitch_8c5
    const-string v4, "civ_regiments_limit_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x88

    goto/16 :goto_dfb

    :sswitch_8d1
    const-string v4, "civ_has_larger_economy_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc3

    goto/16 :goto_dfb

    :sswitch_8dd
    const-string v4, "civ_administrative_advisor_skill_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8e

    goto/16 :goto_dfb

    :sswitch_8e9
    const-string v4, "civ_capital_population_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x5d

    goto/16 :goto_dfb

    :sswitch_8f5
    const-string v4, "province_is_not_occupied"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x32

    goto/16 :goto_dfb

    :sswitch_901
    const-string v4, "civ_capital_buildings_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x4b

    goto/16 :goto_dfb

    :sswitch_90d
    const-string v4, "civ_capital_population_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x5c

    goto/16 :goto_dfb

    :sswitch_919
    const-string v4, "civ_capital_continent_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x4e

    goto/16 :goto_dfb

    :sswitch_925
    const-string v4, "civ_has_resource"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xf

    goto/16 :goto_dfb

    :sswitch_931
    const-string v4, "civ_rank_position_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x77

    goto/16 :goto_dfb

    :sswitch_93d
    const-string v4, "civ_max_manpower_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9b

    goto/16 :goto_dfb

    :sswitch_949
    const-string v4, "exact_day"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x42

    goto/16 :goto_dfb

    :sswitch_955
    const-string v4, "civs_are_at_war"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xbf

    goto/16 :goto_dfb

    :sswitch_961
    const-string v4, "military_buildings_constructed_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x3b

    goto/16 :goto_dfb

    :sswitch_96d
    const-string v4, "civ_legacy_per_month_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xb2

    goto/16 :goto_dfb

    :sswitch_979
    const-string v4, "civ_advisor_construction_cost_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x98

    goto/16 :goto_dfb

    :sswitch_985
    const-string v4, "civ_economic_advisor_skill_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x91

    goto/16 :goto_dfb

    :sswitch_991
    const-string v4, "civ_has_more_regiments_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc5

    goto/16 :goto_dfb

    :sswitch_99d
    const-string v4, "civ_unlocked_technologies_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x74

    goto/16 :goto_dfb

    :sswitch_9a9
    const-string v4, "year_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x40

    goto/16 :goto_dfb

    :sswitch_9b5
    const-string v4, "province_unrest_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x21

    goto/16 :goto_dfb

    :sswitch_9c1
    const-string v4, "is_puppet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd9

    goto/16 :goto_dfb

    :sswitch_9cd
    const-string v4, "is_player"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xdb

    goto/16 :goto_dfb

    :sswitch_9d9
    const-string v4, "civs_have_truce"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd3

    goto/16 :goto_dfb

    :sswitch_9e5
    const-string v4, "civ_has_more_provinces_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc1

    goto/16 :goto_dfb

    :sswitch_9f1
    const-string v4, "civ_capital_income_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x58

    goto/16 :goto_dfb

    :sswitch_9fd
    const-string v4, "civ_have_military_access"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd5

    goto/16 :goto_dfb

    :sswitch_a09
    const-string v4, "civ_capital_income_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x59

    goto/16 :goto_dfb

    :sswitch_a15
    const-string v4, "civ_wars_total_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8

    goto/16 :goto_dfb

    :sswitch_a21
    const-string v4, "civ_advisor_production_efficiency_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x97

    goto/16 :goto_dfb

    :sswitch_a2d
    const-string v4, "province_controlled_by"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x29

    goto/16 :goto_dfb

    :sswitch_a39
    const-string v4, "civ_capital_economy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x50

    goto/16 :goto_dfb

    :sswitch_a45
    const-string v4, "civ_vassals_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x6e

    goto/16 :goto_dfb

    :sswitch_a51
    const-string v4, "civ_capital_continent_is_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x4f

    goto/16 :goto_dfb

    :sswitch_a5d
    const-string v4, "civ_defensive_pacts_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x6a

    goto/16 :goto_dfb

    :sswitch_a69
    const-string v4, "civ_has_larger_population_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc2

    goto/16 :goto_dfb

    :sswitch_a75
    const-string v4, "military_buildings_constructed_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x3a

    goto/16 :goto_dfb

    :sswitch_a81
    const-string v4, "civ_capital_infrastructure_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x5b

    goto/16 :goto_dfb

    :sswitch_a8d
    const-string v4, "province_tax_efficiency_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x16

    goto/16 :goto_dfb

    :sswitch_a99
    const-string v4, "civ_military_advisor_skill_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x94

    goto/16 :goto_dfb

    :sswitch_aa5
    const-string v4, "civ_capital_unrest_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x54

    goto/16 :goto_dfb

    :sswitch_ab1
    const-string v4, "buildings_constructed_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x34

    goto/16 :goto_dfb

    :sswitch_abd
    const-string v4, "civ_tag_government_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe3

    goto/16 :goto_dfb

    :sswitch_ac9
    const-string v4, "civ_battle_width_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x7d

    goto/16 :goto_dfb

    :sswitch_ad5
    const-string v4, "increased_manpower_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe

    goto/16 :goto_dfb

    :sswitch_ae1
    const-string v4, "civ_income_production_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xbb

    goto/16 :goto_dfb

    :sswitch_aed
    const-string v4, "province_has_building"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x2b

    goto/16 :goto_dfb

    :sswitch_af9
    const-string v4, "civ_unlocked_legacies_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x71

    goto/16 :goto_dfb

    :sswitch_b05
    const-string v4, "civs_opinion_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xce

    goto/16 :goto_dfb

    :sswitch_b11
    const-string v4, "province_is_occupied"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x31

    goto/16 :goto_dfb

    :sswitch_b1d
    const-string v4, "civ_innovation_advisor_skill_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x93

    goto/16 :goto_dfb

    :sswitch_b29
    const-string v4, "recruited_advisors_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa5

    goto/16 :goto_dfb

    :sswitch_b35
    const-string v4, "province_not_controlled_by"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x2a

    goto/16 :goto_dfb

    :sswitch_b41
    const-string v4, "civ_tag_religion_is_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe2

    goto/16 :goto_dfb

    :sswitch_b4d
    const-string v4, "increased_tax_efficiency_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc

    goto/16 :goto_dfb

    :sswitch_b59
    const-string v4, "civ_military_academy_for_generals_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x81

    goto/16 :goto_dfb

    :sswitch_b65
    const-string v4, "civ_economy_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x49

    goto/16 :goto_dfb

    :sswitch_b71
    const-string v4, "civs_are_not_at_war"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc0

    goto/16 :goto_dfb

    :sswitch_b7d
    const-string v4, "is_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x7b

    goto/16 :goto_dfb

    :sswitch_b89
    const-string v4, "civ_capital_fort_level_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x5f

    goto/16 :goto_dfb

    :sswitch_b95
    const-string v4, "province_is_under_siege"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x33

    goto/16 :goto_dfb

    :sswitch_ba1
    const-string v4, "civ_allies_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x68

    goto/16 :goto_dfb

    :sswitch_bad
    const-string v4, "civ_capital_tax_efficiency_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x4c

    goto/16 :goto_dfb

    :sswitch_bb9
    const-string v4, "playing_time_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x3f

    goto/16 :goto_dfb

    :sswitch_bc5
    const-string v4, "civ_capital_fort_level_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x5e

    goto/16 :goto_dfb

    :sswitch_bd1
    const-string v4, "exists"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xdd

    goto/16 :goto_dfb

    :sswitch_bdd
    const-string v4, "civ_gold_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x64

    goto/16 :goto_dfb

    :sswitch_be9
    const-string v4, "civ_supreme_court_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x84

    goto/16 :goto_dfb

    :sswitch_bf5
    const-string v4, "civ_provinces_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x44

    goto/16 :goto_dfb

    :sswitch_c01
    const-string v4, "civ_legacy_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa2

    goto/16 :goto_dfb

    :sswitch_c0d
    const-string v4, "civ_rank_position_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x78

    goto/16 :goto_dfb

    :sswitch_c19
    const-string v4, "alliance_special_is_not_member_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xab

    goto/16 :goto_dfb

    :sswitch_c25
    const-string v4, "civ_has_rivalry"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc9

    goto/16 :goto_dfb

    :sswitch_c31
    const-string v4, "civ_military_academy_for_generals_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x80

    goto/16 :goto_dfb

    :sswitch_c3d
    const-string v4, "civ_has_higher_ranking_than_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xc6

    goto/16 :goto_dfb

    :sswitch_c49
    const-string v4, "civ_manpower_perc_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9d

    goto/16 :goto_dfb

    :sswitch_c55
    const-string v4, "civ_neighbors_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x70

    goto/16 :goto_dfb

    :sswitch_c61
    const-string v4, "not_exists"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xde

    goto/16 :goto_dfb

    :sswitch_c6d
    const-string v4, "province_infrastructure_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x22

    goto/16 :goto_dfb

    :sswitch_c79
    const-string v4, "civ_max_manpower_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9c

    goto/16 :goto_dfb

    :sswitch_c85
    const-string v4, "civ_capital_buildings_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x4a

    goto/16 :goto_dfb

    :sswitch_c91
    const-string v4, "province_religion_is_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x1f

    goto/16 :goto_dfb

    :sswitch_c9d
    const-string v4, "civ_regiments_limit_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x89

    goto/16 :goto_dfb

    :sswitch_ca9
    const-string v4, "civ_conquered_provinces_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x6

    goto/16 :goto_dfb

    :sswitch_cb4
    const-string v4, "civ_capital_city_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x83

    goto/16 :goto_dfb

    :sswitch_cc0
    const-string v4, "province_religion_is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x1e

    goto/16 :goto_dfb

    :sswitch_ccc
    const-string v4, "civs_are_not_neighbors"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xcd

    goto/16 :goto_dfb

    :sswitch_cd8
    const-string v4, "exists_any_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xe0

    goto/16 :goto_dfb

    :sswitch_ce4
    const-string v4, "economy_buildings_constructed_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x38

    goto/16 :goto_dfb

    :sswitch_cf0
    const-string v4, "developed_infrastructure_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/4 v1, 0x3

    goto/16 :goto_dfb

    :sswitch_cfb
    const-string v4, "province_buildings_limit_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x2f

    goto/16 :goto_dfb

    :sswitch_d07
    const-string v4, "civ_inflation_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xa7

    goto/16 :goto_dfb

    :sswitch_d13
    const-string v4, "civ_battle_width_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x7c

    goto/16 :goto_dfb

    :sswitch_d1f
    const-string v4, "increased_manpower_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd

    goto/16 :goto_dfb

    :sswitch_d2b
    const-string v4, "has_variable_not"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd7

    goto/16 :goto_dfb

    :sswitch_d37
    const-string v4, "has_variable_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd8

    goto/16 :goto_dfb

    :sswitch_d43
    const-string v4, "province_buildings_limit_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x2e

    goto/16 :goto_dfb

    :sswitch_d4f
    const-string v4, "civ_administrative_advisor_skill_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x8f

    goto/16 :goto_dfb

    :sswitch_d5b
    const-string v4, "civ_capital_is_not_occupied"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x61

    goto/16 :goto_dfb

    :sswitch_d67
    const-string v4, "civ_unlocked_advantages_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x75

    goto/16 :goto_dfb

    :sswitch_d73
    const-string v4, "civs_are_neighbors"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xcc

    goto/16 :goto_dfb

    :sswitch_d7f
    const-string v4, "province_defense_lvl_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x27

    goto/16 :goto_dfb

    :sswitch_d8b
    const-string v4, "economy_buildings_constructed_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x39

    goto/16 :goto_dfb

    :sswitch_d97
    const-string v4, "civ_capital_infrastructure_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x5a

    goto :goto_dfb

    :sswitch_da2
    const-string v4, "civ_innovation_advisor_skill_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x92

    goto :goto_dfb

    :sswitch_dad
    const-string v4, "civ_population_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x47

    goto :goto_dfb

    :sswitch_db8
    const-string v4, "year_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x41

    goto :goto_dfb

    :sswitch_dc3
    const-string v4, "province_civ_has_core"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x28

    goto :goto_dfb

    :sswitch_dce
    const-string v4, "civs_have_alliance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xd2

    goto :goto_dfb

    :sswitch_dd9
    const-string v4, "civ_income_production_over"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0xba

    goto :goto_dfb

    :sswitch_de4
    const-string v4, "civ_manpower_perc_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    const/16 v1, 0x9e

    goto :goto_dfb

    :sswitch_def
    const-string v4, "province_tax_efficiency_below"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_df5
    .catch Ljava/lang/Exception; {:try_start_31f .. :try_end_df5} :catch_38fd

    if-eqz v1, :cond_31d

    const/16 v1, 0x17

    goto :goto_dfb

    :goto_dfa
    const/4 v1, -0x1

    :goto_dfb
    packed-switch v1, :pswitch_data_3eee

    .line 1961
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .local v4, "nextType":I
    :try_start_e00
    new-instance v1, Ljava/lang/StringBuilder;
    :try_end_e02
    .catch Ljava/lang/Exception; {:try_start_e00 .. :try_end_e02} :catch_2028

    goto/16 :goto_2035

    .line 1958
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e04
    :try_start_e04
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v5, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_MoreThan_Counter;-><init>(Ljava/lang/String;I)V
    :try_end_e13
    .catch Ljava/lang/Exception; {:try_start_e04 .. :try_end_e13} :catch_2060

    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    :try_start_e15
    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1959
    goto/16 :goto_2055

    .line 1955
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e1a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_LessThan_Counter;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_LessThan_Counter;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1956
    goto/16 :goto_2055

    .line 1952
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e30
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_EqualTo_Counter;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_EqualTo_Counter;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1953
    goto/16 :goto_2055

    .line 1949
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e46
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_If_Counter;

    aget-object v5, v2, v8

    const-string v6, "if_counter="

    const-string v14, ""

    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_If_Counter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1950
    goto/16 :goto_2055

    .line 1946
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e5c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIsNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIsNot;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1947
    goto/16 :goto_2055

    .line 1943
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e72
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIs;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1944
    goto/16 :goto_2055

    .line 1940
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e88
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIsNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIsNot;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1941
    goto/16 :goto_2055

    .line 1937
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_e9e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIs;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1938
    goto/16 :goto_2055

    .line 1934
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_eb4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAnyNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAnyNot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1935
    goto/16 :goto_2055

    .line 1931
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_ec3
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAny;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAny;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1932
    goto/16 :goto_2055

    .line 1928
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_ed2
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsNot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1929
    goto/16 :goto_2055

    .line 1925
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_ee1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Exists;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Exists;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1926
    goto/16 :goto_2055

    .line 1922
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_ef0
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotPlayer;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotPlayer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1923
    goto/16 :goto_2055

    .line 1919
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_eff
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsPlayer;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsPlayer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1920
    goto/16 :goto_2055

    .line 1916
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f0e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotVassal;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotVassal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1917
    goto/16 :goto_2055

    .line 1913
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f1d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassal;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1914
    goto/16 :goto_2055

    .line 1910
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f2c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1911
    goto/16 :goto_2055

    .line 1907
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f3e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1908
    goto/16 :goto_2055

    .line 1904
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f4d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1905
    goto/16 :goto_2055

    .line 1901
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f5c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1902
    goto/16 :goto_2055

    .line 1898
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f6e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveGuarantee;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveGuarantee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1899
    goto/16 :goto_2055

    .line 1895
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f80
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveTruce;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveTruce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1896
    goto/16 :goto_2055

    .line 1892
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_f92
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveAlliance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveAlliance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1893
    goto/16 :goto_2055

    .line 1889
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_fa4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveNonAggressionPact;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveNonAggressionPact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1890
    goto/16 :goto_2055

    .line 1886
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_fb6
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveDefensivePact;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveDefensivePact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1887
    goto/16 :goto_2055

    .line 1883
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_fc8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/4 v14, 0x3

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v1, v6, v5, v14}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionBelow;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1884
    goto/16 :goto_2055

    .line 1880
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_fe1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/4 v14, 0x3

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v1, v6, v5, v14}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionOver;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1881
    goto/16 :goto_2055

    .line 1877
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_ffa
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighborsNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighborsNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1878
    goto/16 :goto_2055

    .line 1874
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_100c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighbors;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighbors;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1875
    goto/16 :goto_2055

    .line 1871
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_101e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassalOfCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassalOfCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1872
    goto/16 :goto_2055

    .line 1868
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1030
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCivNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCivNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1869
    goto/16 :goto_2055

    .line 1865
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1042
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1866
    goto/16 :goto_2055

    .line 1862
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1054
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreRivals;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreRivals;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1863
    goto/16 :goto_2055

    .line 1859
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1066
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreTechsThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreTechsThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1860
    goto/16 :goto_2055

    .line 1856
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1078
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasHigherRankThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasHigherRankThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1857
    goto/16 :goto_2055

    .line 1853
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_108a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreRegimentsThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreRegimentsThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1854
    goto/16 :goto_2055

    .line 1850
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_109c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerRegimentsLimitThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerRegimentsLimitThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1851
    goto/16 :goto_2055

    .line 1847
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_10ae
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerEconomyThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerEconomyThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1848
    goto/16 :goto_2055

    .line 1844
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_10c0
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerPopulationThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerPopulationThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1845
    goto/16 :goto_2055

    .line 1841
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_10d2
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreProvinceThanCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreProvinceThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1842
    goto/16 :goto_2055

    .line 1838
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_10e4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreNotAtWar;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreNotAtWar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1839
    goto/16 :goto_2055

    .line 1835
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_10f6
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreAtWar;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreAtWar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1836
    goto/16 :goto_2055

    .line 1832
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1108
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar_DaysOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar_DaysOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1833
    goto/16 :goto_2055

    .line 1829
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_111b
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotAtWar;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotAtWar;-><init>()V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1830
    goto/16 :goto_2055

    .line 1826
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1127
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar;-><init>()V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1827
    goto/16 :goto_2055

    .line 1823
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1133
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1824
    goto/16 :goto_2055

    .line 1820
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1146
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1821
    goto/16 :goto_2055

    .line 1817
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1159
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1818
    goto/16 :goto_2055

    .line 1814
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_116c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1815
    goto/16 :goto_2055

    .line 1811
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_117f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1812
    goto/16 :goto_2055

    .line 1808
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1192
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1809
    goto/16 :goto_2055

    .line 1805
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_11a5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1806
    goto/16 :goto_2055

    .line 1802
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_11b8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1803
    goto/16 :goto_2055

    .line 1799
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_11cb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1800
    goto/16 :goto_2055

    .line 1796
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_11de
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1797
    goto/16 :goto_2055

    .line 1793
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_11f1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1794
    goto/16 :goto_2055

    .line 1790
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1204
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1791
    goto/16 :goto_2055

    .line 1787
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1217
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1788
    goto/16 :goto_2055

    .line 1784
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_122a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1785
    goto/16 :goto_2055

    .line 1781
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_123d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1782
    goto/16 :goto_2055

    .line 1778
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1250
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1779
    goto/16 :goto_2055

    .line 1775
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1263
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsNotInAlliance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsNotInAlliance;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1776
    goto/16 :goto_2055

    .line 1772
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1276
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsInAlliance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsInAlliance;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1773
    goto/16 :goto_2055

    .line 1769
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1289
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeaderID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeaderID;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1770
    goto/16 :goto_2055

    .line 1766
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_129c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeader;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeader;-><init>()V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1767
    goto/16 :goto_2055

    .line 1763
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_12a8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1764
    goto/16 :goto_2055

    .line 1760
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_12bb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1761
    goto/16 :goto_2055

    .line 1757
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_12ce
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1758
    goto/16 :goto_2055

    .line 1754
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_12e1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1755
    goto/16 :goto_2055

    .line 1751
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_12f4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1752
    goto/16 :goto_2055

    .line 1748
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1307
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1749
    goto/16 :goto_2055

    .line 1745
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_131a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsLargestProducer;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsLargestProducer;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1746
    goto/16 :goto_2055

    .line 1742
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_132d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_LargestProducer_ProductionOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_LargestProducer_ProductionOver;-><init>(II)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1743
    goto/16 :goto_2055

    .line 1739
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1347
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLargestProducerOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLargestProducerOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1740
    goto/16 :goto_2055

    .line 1736
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_135a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Below;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Below;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1737
    goto/16 :goto_2055

    .line 1733
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_136d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Over;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Over;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1734
    goto/16 :goto_2055

    .line 1730
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1380
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1731
    goto/16 :goto_2055

    .line 1727
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1393
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1728
    goto/16 :goto_2055

    .line 1724
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_13a6
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1725
    goto/16 :goto_2055

    .line 1721
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_13b9
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1722
    goto/16 :goto_2055

    .line 1716
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_13cc
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    array-length v1, v3

    const/4 v5, 0x2

    if-le v1, v5, :cond_2055

    .line 1717
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;

    const/4 v6, 0x1

    aget-object v14, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_2055

    .line 1711
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_13e9
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    array-length v1, v3

    const/4 v5, 0x2

    if-le v1, v5, :cond_2055

    .line 1712
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;

    const/4 v6, 0x1

    aget-object v14, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_2055

    .line 1706
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1406
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    array-length v1, v3

    const/4 v5, 0x2

    if-le v1, v5, :cond_2055

    .line 1707
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;

    const/4 v6, 0x1

    aget-object v14, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;-><init>(II)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_2055

    .line 1703
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1423
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1704
    goto/16 :goto_2055

    .line 1700
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1436
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1701
    goto/16 :goto_2055

    .line 1697
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1449
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1698
    goto/16 :goto_2055

    .line 1694
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_145c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1695
    goto/16 :goto_2055

    .line 1691
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_146f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1692
    goto/16 :goto_2055

    .line 1688
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1482
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1689
    goto/16 :goto_2055

    .line 1685
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1495
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1686
    goto/16 :goto_2055

    .line 1682
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_14a8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1683
    goto/16 :goto_2055

    .line 1679
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_14bb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver_MaxAmountOfGold;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver_MaxAmountOfGold;-><init>(Z)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1680
    goto/16 :goto_2055

    .line 1676
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_14ce
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOverRegimentsLimit;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOverRegimentsLimit;-><init>(Z)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1677
    goto/16 :goto_2055

    .line 1673
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_14e1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1674
    goto/16 :goto_2055

    .line 1670
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_14f4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1671
    goto/16 :goto_2055

    .line 1667
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1507
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1668
    goto/16 :goto_2055

    .line 1664
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_151a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1665
    goto/16 :goto_2055

    .line 1661
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_152d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1662
    goto/16 :goto_2055

    .line 1658
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1540
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1659
    goto/16 :goto_2055

    .line 1655
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1553
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1656
    goto/16 :goto_2055

    .line 1652
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1566
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1653
    goto/16 :goto_2055

    .line 1649
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1579
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1650
    goto/16 :goto_2055

    .line 1646
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_158c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1647
    goto/16 :goto_2055

    .line 1643
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_159f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1644
    goto/16 :goto_2055

    .line 1640
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15b2
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1641
    goto/16 :goto_2055

    .line 1637
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15c5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1638
    goto/16 :goto_2055

    .line 1634
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15d8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1635
    goto/16 :goto_2055

    .line 1631
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15eb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1632
    goto/16 :goto_2055

    .line 1628
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_15fe
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1629
    goto/16 :goto_2055

    .line 1625
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1611
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v1, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsCiv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1626
    goto/16 :goto_2055

    .line 1622
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1620
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1623
    goto/16 :goto_2055

    .line 1619
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1633
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1620
    goto/16 :goto_2055

    .line 1616
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1646
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1617
    goto/16 :goto_2055

    .line 1613
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1659
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1614
    goto/16 :goto_2055

    .line 1610
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_166c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1611
    goto/16 :goto_2055

    .line 1607
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_167f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1608
    goto/16 :goto_2055

    .line 1604
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1692
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1605
    goto/16 :goto_2055

    .line 1601
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_16a5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1602
    goto/16 :goto_2055

    .line 1598
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_16b8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1599
    goto/16 :goto_2055

    .line 1595
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_16cb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1596
    goto/16 :goto_2055

    .line 1592
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_16de
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1593
    goto/16 :goto_2055

    .line 1589
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_16f1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1590
    goto/16 :goto_2055

    .line 1586
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1704
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1587
    goto/16 :goto_2055

    .line 1583
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1717
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1584
    goto/16 :goto_2055

    .line 1580
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_172a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1581
    goto/16 :goto_2055

    .line 1577
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_173d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1578
    goto/16 :goto_2055

    .line 1574
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1750
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1575
    goto/16 :goto_2055

    .line 1571
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1763
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1572
    goto/16 :goto_2055

    .line 1568
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1776
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1569
    goto/16 :goto_2055

    .line 1565
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1789
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1566
    goto/16 :goto_2055

    .line 1562
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_179c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGovernmentIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGovernmentIs;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1563
    goto/16 :goto_2055

    .line 1559
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_17af
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivReligionIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivReligionIs;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1560
    goto/16 :goto_2055

    .line 1556
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_17c2
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1557
    goto/16 :goto_2055

    .line 1553
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_17d5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1554
    goto/16 :goto_2055

    .line 1550
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_17e8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsUnderSiege;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsUnderSiege;-><init>()V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1551
    goto/16 :goto_2055

    .line 1547
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_17f4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupiedNot;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupiedNot;-><init>()V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1548
    goto/16 :goto_2055

    .line 1544
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1800
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupied;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupied;-><init>()V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1545
    goto/16 :goto_2055

    .line 1541
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_180c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1542
    goto/16 :goto_2055

    .line 1538
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_181f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1539
    goto/16 :goto_2055

    .line 1535
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1832
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1536
    goto/16 :goto_2055

    .line 1532
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1845
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1533
    goto/16 :goto_2055

    .line 1529
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1858
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1530
    goto/16 :goto_2055

    .line 1526
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_186b
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1527
    goto/16 :goto_2055

    .line 1523
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_187e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1524
    goto/16 :goto_2055

    .line 1520
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1891
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1521
    goto/16 :goto_2055

    .line 1517
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_18a4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1518
    goto/16 :goto_2055

    .line 1514
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_18b7
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1515
    goto/16 :goto_2055

    .line 1511
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_18ca
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1512
    goto/16 :goto_2055

    .line 1508
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_18dd
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1509
    goto/16 :goto_2055

    .line 1505
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_18f0
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1506
    goto/16 :goto_2055

    .line 1502
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1903
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1503
    goto/16 :goto_2055

    .line 1499
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1916
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1500
    goto/16 :goto_2055

    .line 1496
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1929
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1497
    goto/16 :goto_2055

    .line 1493
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_193c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIsNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIsNot;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1494
    goto/16 :goto_2055

    .line 1490
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_194f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIs;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1491
    goto/16 :goto_2055

    .line 1487
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1962
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyBelow;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1488
    goto/16 :goto_2055

    .line 1484
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1975
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyOver;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1485
    goto/16 :goto_2055

    .line 1481
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1988
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1482
    goto/16 :goto_2055

    .line 1478
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_199b
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1479
    goto/16 :goto_2055

    .line 1475
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_19ae
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1476
    goto/16 :goto_2055

    .line 1472
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_19c1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1473
    goto/16 :goto_2055

    .line 1469
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_19d4
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1470
    goto/16 :goto_2055

    .line 1466
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_19e7
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1467
    goto/16 :goto_2055

    .line 1463
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_19fa
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesEquals;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesEquals;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1464
    goto/16 :goto_2055

    .line 1460
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1a0d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1461
    goto/16 :goto_2055

    .line 1457
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1a20
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1458
    goto/16 :goto_2055

    .line 1450
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1a33
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v14, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x3

    aget-object v17, v3, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v1, v5, v6, v14}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;-><init>(III)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V
    :try_end_1a52
    .catch Ljava/lang/Exception; {:try_start_e15 .. :try_end_1a52} :catch_2028

    .line 1451
    const/4 v1, 0x1

    .line 1452
    .end local v27    # "exactDate":Z
    .local v1, "exactDate":Z
    const/4 v5, 0x1

    :try_start_1a54
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1a5a
    .catch Ljava/lang/Exception; {:try_start_1a54 .. :try_end_1a5a} :catch_1a7d

    .line 1453
    .end local v28    # "exactDay":I
    .restart local v5    # "exactDay":I
    const/4 v6, 0x2

    :try_start_1a5b
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1a61
    .catch Ljava/lang/Exception; {:try_start_1a5b .. :try_end_1a61} :catch_1a73

    .line 1454
    .end local v29    # "exactMonth":I
    .restart local v6    # "exactMonth":I
    const/4 v14, 0x3

    :try_start_1a62
    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_1a68
    .catch Ljava/lang/Exception; {:try_start_1a62 .. :try_end_1a68} :catch_1a6b

    move v7, v14

    .line 1455
    goto/16 :goto_205b

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    :catch_1a6b
    move-exception v0

    move-object v2, v0

    move/from16 v17, v4

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .end local v6    # "exactMonth":I
    .restart local v29    # "exactMonth":I
    :catch_1a73
    move-exception v0

    move-object v2, v0

    move/from16 v17, v4

    move/from16 v6, v29

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .end local v5    # "exactDay":I
    .restart local v28    # "exactDay":I
    :catch_1a7d
    move-exception v0

    move-object v2, v0

    move/from16 v17, v4

    move/from16 v5, v28

    move/from16 v6, v29

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .line 1447
    .end local v1    # "exactDate":Z
    .end local v4    # "nextType":I
    .restart local v3    # "sLine":[Ljava/lang/String;
    .restart local v17    # "nextType":I
    .restart local v27    # "exactDate":Z
    :pswitch_1a89
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    :try_start_1a8b
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1448
    goto/16 :goto_2055

    .line 1444
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1a9c
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1445
    goto/16 :goto_2055

    .line 1441
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1aaf
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1442
    goto/16 :goto_2055

    .line 1438
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ac2
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1439
    goto/16 :goto_2055

    .line 1435
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ad5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1436
    goto/16 :goto_2055

    .line 1432
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ae8
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1433
    goto/16 :goto_2055

    .line 1429
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1afb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1430
    goto/16 :goto_2055

    .line 1426
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b0e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1427
    goto/16 :goto_2055

    .line 1423
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b21
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1424
    goto/16 :goto_2055

    .line 1420
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b34
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1421
    goto/16 :goto_2055

    .line 1417
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b47
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1418
    goto/16 :goto_2055

    .line 1414
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b5a
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1415
    goto/16 :goto_2055

    .line 1411
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b6d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1412
    goto/16 :goto_2055

    .line 1408
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b80
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1409
    goto/16 :goto_2055

    .line 1405
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1b93
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsUnderSiege;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsUnderSiege;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1406
    goto/16 :goto_2055

    .line 1402
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ba6
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupiedNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupiedNot;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1403
    goto/16 :goto_2055

    .line 1399
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1bb9
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupied;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupied;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1400
    goto/16 :goto_2055

    .line 1396
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1bcc
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1397
    goto/16 :goto_2055

    .line 1393
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1bdf
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1394
    goto/16 :goto_2055

    .line 1390
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1bf9
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsLimitOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsLimitOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1391
    goto/16 :goto_2055

    .line 1387
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1c13
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ReligionIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ReligionIs;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1388
    goto/16 :goto_2055

    .line 1384
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1c26
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_HasBuilding;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_HasBuilding;-><init>(II)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1385
    goto/16 :goto_2055

    .line 1381
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1c40
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x3

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v1, v5, v6, v14}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;-><init>(III)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1382
    goto/16 :goto_2055

    .line 1378
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1c61
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCivNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCivNot;-><init>(ILjava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1379
    goto/16 :goto_2055

    .line 1375
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1c77
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCiv;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCiv;-><init>(ILjava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1376
    goto/16 :goto_2055

    .line 1372
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1c8d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceCivHasCore;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceCivHasCore;-><init>(ILjava/lang/String;)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1373
    goto/16 :goto_2055

    .line 1369
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ca3
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1370
    goto/16 :goto_2055

    .line 1366
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1cbd
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1367
    goto/16 :goto_2055

    .line 1363
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1cd7
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1364
    goto/16 :goto_2055

    .line 1360
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1cf1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1361
    goto/16 :goto_2055

    .line 1357
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1d0b
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1358
    goto/16 :goto_2055

    .line 1354
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1d25
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1355
    goto/16 :goto_2055

    .line 1351
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1d3f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1352
    goto/16 :goto_2055

    .line 1348
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1d59
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1349
    goto/16 :goto_2055

    .line 1345
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1d73
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIsNot;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIsNot;-><init>(II)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1346
    goto/16 :goto_2055

    .line 1342
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1d8d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIs;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIs;-><init>(II)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1343
    goto/16 :goto_2055

    .line 1339
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1da7
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1340
    goto/16 :goto_2055

    .line 1336
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1dc1
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1337
    goto/16 :goto_2055

    .line 1333
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ddb
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1334
    goto/16 :goto_2055

    .line 1330
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1df5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1331
    goto/16 :goto_2055

    .line 1327
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1e0f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1328
    goto/16 :goto_2055

    .line 1324
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1e29
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1325
    goto/16 :goto_2055

    .line 1321
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1e43
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1322
    goto/16 :goto_2055

    .line 1318
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1e5d
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1319
    goto/16 :goto_2055

    .line 1315
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1e77
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1316
    goto/16 :goto_2055

    .line 1312
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1e91
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1313
    goto/16 :goto_2055

    .line 1309
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1eab
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyBelow;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1310
    goto/16 :goto_2055

    .line 1306
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ec5
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v5, v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1307
    goto/16 :goto_2055

    .line 1301
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1edf
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    array-length v1, v3

    const/4 v5, 0x2

    if-le v1, v5, :cond_2055

    .line 1302
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResourceOver;

    const/4 v6, 0x1

    aget-object v14, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v6, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResourceOver;-><init>(IF)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_2055

    .line 1297
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1efc
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResource;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResource;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1298
    goto/16 :goto_2055

    .line 1294
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f0f
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1295
    goto/16 :goto_2055

    .line 1291
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f22
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1292
    goto/16 :goto_2055

    .line 1288
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f35
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1289
    goto/16 :goto_2055

    .line 1285
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f48
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1286
    goto/16 :goto_2055

    .line 1282
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f5b
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1283
    goto/16 :goto_2055

    .line 1279
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f6e
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1280
    goto/16 :goto_2055

    .line 1276
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f81
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1277
    goto/16 :goto_2055

    .line 1273
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1f94
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1274
    goto/16 :goto_2055

    .line 1270
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1fa7
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1271
    goto/16 :goto_2055

    .line 1267
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1fba
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1268
    goto/16 :goto_2055

    .line 1264
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1fcd
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1265
    goto/16 :goto_2055

    .line 1261
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1fe0
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1262
    goto :goto_2055

    .line 1258
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_1ff2
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyBelow;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyBelow;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1259
    goto :goto_2055

    .line 1255
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_2004
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyOver;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyOver;-><init>(I)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1256
    goto :goto_2055

    .line 1252
    .end local v4    # "nextType":I
    .restart local v17    # "nextType":I
    :pswitch_2016
    move/from16 v4, v17

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    new-instance v1, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v1, v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;-><init>(F)V

    invoke-virtual {v12, v1, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    .line 1253
    goto :goto_2055

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    :catch_2028
    move-exception v0

    move-object v2, v0

    move/from16 v17, v4

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .line 1961
    .restart local v3    # "sLine":[Ljava/lang/String;
    :goto_2035
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MISSING IN TRIGGER -> "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v3, v26

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_2055
    .catch Ljava/lang/Exception; {:try_start_1a8b .. :try_end_2055} :catch_2028

    :cond_2055
    :goto_2055
    move/from16 v1, v27

    move/from16 v5, v28

    move/from16 v6, v29

    .end local v27    # "exactDate":Z
    .end local v28    # "exactDay":I
    .end local v29    # "exactMonth":I
    .restart local v1    # "exactDate":Z
    .restart local v5    # "exactDay":I
    .restart local v6    # "exactMonth":I
    :goto_205b
    move v14, v4

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_3a98

    .line 2718
    .end local v1    # "exactDate":Z
    .end local v3    # "sLine":[Ljava/lang/String;
    .end local v4    # "nextType":I
    .end local v5    # "exactDay":I
    .end local v6    # "exactMonth":I
    .restart local v17    # "nextType":I
    .restart local v27    # "exactDate":Z
    .restart local v28    # "exactDay":I
    .restart local v29    # "exactMonth":I
    :catch_2060
    move-exception v0

    move/from16 v4, v17

    move-object v2, v0

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    .end local v17    # "nextType":I
    .restart local v4    # "nextType":I
    goto/16 :goto_3aae

    .line 1963
    .end local v4    # "nextType":I
    .restart local v3    # "sLine":[Ljava/lang/String;
    .restart local v17    # "nextType":I
    :cond_206d
    if-eqz v11, :cond_3908

    .line 1968
    :try_start_206f
    aget-object v1, v3, v26

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v33

    sparse-switch v33, :sswitch_data_40c4

    :cond_2078
    goto/16 :goto_28cd

    :sswitch_207a
    const-string v4, "bonus_siege_effectiveness"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa0

    goto/16 :goto_28ce

    :sswitch_2086
    const-string v4, "bonus_generals_defense"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9b

    goto/16 :goto_28ce

    :sswitch_2092
    const-string v4, "bonus_loans_limit"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa3

    goto/16 :goto_28ce

    :sswitch_209e
    const-string v4, "bonus_units_defense"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9d

    goto/16 :goto_28ce

    :sswitch_20aa
    const-string v4, "bonus_monthly_legacy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x75

    goto/16 :goto_28ce

    :sswitch_20b6
    const-string v4, "bonus_all_characters_life_expectancy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xb1

    goto/16 :goto_28ce

    :sswitch_20c2
    const-string v4, "bonus_growth_rate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x7b

    goto/16 :goto_28ce

    :sswitch_20ce
    const-string v4, "div_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x4

    goto/16 :goto_28ce

    :sswitch_20d9
    const-string v4, "remove_alliance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x43

    goto/16 :goto_28ce

    :sswitch_20e5
    const-string v4, "change_ideology"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x20

    goto/16 :goto_28ce

    :sswitch_20f1
    const-string v4, "bonus_corruption"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x7c

    goto/16 :goto_28ce

    :sswitch_20fd
    const-string v4, "bonus_monthly_income"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x74

    goto/16 :goto_28ce

    :sswitch_2109
    const-string v4, "nuclear_reactor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x18

    goto/16 :goto_28ce

    :sswitch_2115
    const-string v4, "play_music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x4d

    goto/16 :goto_28ce

    :sswitch_2121
    const-string v4, "bonus_max_manpower"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x82

    goto/16 :goto_28ce

    :sswitch_212d
    const-string v4, "bonus_aggressive_expansion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa4

    goto/16 :goto_28ce

    :sswitch_2139
    const-string v4, "province_population_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x61

    goto/16 :goto_28ce

    :sswitch_2145
    const-string v4, "bonus_reinforcement_speed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x85

    goto/16 :goto_28ce

    :sswitch_2151
    const-string v4, "province_religion_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x64

    goto/16 :goto_28ce

    :sswitch_215d
    const-string v4, "price_change_up"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x2e

    goto/16 :goto_28ce

    :sswitch_2169
    const-string v4, "province_unrest_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x6c

    goto/16 :goto_28ce

    :sswitch_2175
    const-string v4, "advantage_points"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xf

    goto/16 :goto_28ce

    :sswitch_2181
    const-string v4, "province_population"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x60

    goto/16 :goto_28ce

    :sswitch_218d
    const-string v4, "join_alliance_special_id_first_tier"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x26

    goto/16 :goto_28ce

    :sswitch_2199
    const-string v4, "bonus_loan_interest"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa2

    goto/16 :goto_28ce

    :sswitch_21a5
    const-string v4, "declare_war2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x1e

    goto/16 :goto_28ce

    :sswitch_21b1
    const-string v4, "change_religion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x21

    goto/16 :goto_28ce

    :sswitch_21bd
    const-string v4, "province_population_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x62

    goto/16 :goto_28ce

    :sswitch_21c9
    const-string v4, "mul_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x3

    goto/16 :goto_28ce

    :sswitch_21d4
    const-string v4, "annex_from_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x3c

    goto/16 :goto_28ce

    :sswitch_21e0
    const-string v4, "add_advisor2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x3a

    goto/16 :goto_28ce

    :sswitch_21ec
    const-string v4, "capital_city_level"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x16

    goto/16 :goto_28ce

    :sswitch_21f8
    const-string v4, "bonus_max_morale"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9e

    goto/16 :goto_28ce

    :sswitch_2204
    const-string v4, "military_academy_generals"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x15

    goto/16 :goto_28ce

    :sswitch_2210
    const-string v4, "bonus_manpower_recovery_speed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x84

    goto/16 :goto_28ce

    :sswitch_221c
    const-string v4, "make_puppet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x3e

    goto/16 :goto_28ce

    :sswitch_2228
    const-string v4, "province_unrest_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x6e

    goto/16 :goto_28ce

    :sswitch_2234
    const-string v4, "province_devastation_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x68

    goto/16 :goto_28ce

    :sswitch_2240
    const-string v4, "province_remove_core_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x4f

    goto/16 :goto_28ce

    :sswitch_224c
    const-string v4, "add_general"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x2c

    goto/16 :goto_28ce

    :sswitch_2258
    const-string v4, "province_growth_rate_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x5f

    goto/16 :goto_28ce

    :sswitch_2264
    const-string v4, "legacy_monthly"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9

    goto/16 :goto_28ce

    :sswitch_2270
    const-string v4, "bonus_income_production"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x81

    goto/16 :goto_28ce

    :sswitch_227c
    const-string v4, "bonus_army_movement_speed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9f

    goto/16 :goto_28ce

    :sswitch_2288
    const-string v4, "inflation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xb

    goto/16 :goto_28ce

    :sswitch_2294
    const-string v4, "bonus_war_score_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x87

    goto/16 :goto_28ce

    :sswitch_22a0
    const-string v4, "bonus_diplomacy_points"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xac

    goto/16 :goto_28ce

    :sswitch_22ac
    const-string v4, "annex_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x3f

    goto/16 :goto_28ce

    :sswitch_22b8
    const-string v4, "bonus_production_efficiency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x7e

    goto/16 :goto_28ce

    :sswitch_22c4
    const-string v4, "province_add_core_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x4e

    goto/16 :goto_28ce

    :sswitch_22d0
    const-string v4, "add_variable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x10

    goto/16 :goto_28ce

    :sswitch_22dc
    const-string v4, "set_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x5

    goto/16 :goto_28ce

    :sswitch_22e7
    const-string v4, "province_devastation_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x6a

    goto/16 :goto_28ce

    :sswitch_22f3
    const-string v4, "bonus_buildings_maintenance_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x79

    goto/16 :goto_28ce

    :sswitch_22ff
    const-string v4, "bonus_disease_death_rate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xab

    goto/16 :goto_28ce

    :sswitch_230b
    const-string v4, "province_tax_efficiency_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x56

    goto/16 :goto_28ce

    :sswitch_2317
    const-string v4, "province_economy_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x52

    goto/16 :goto_28ce

    :sswitch_2323
    const-string v4, "bonus_advisors_max_level"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xb0

    goto/16 :goto_28ce

    :sswitch_232f
    const-string v4, "set_civ_tag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x19

    goto/16 :goto_28ce

    :sswitch_233b
    const-string v4, "kill_advisor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x29

    goto/16 :goto_28ce

    :sswitch_2347
    const-string v4, "price_change_group_up"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x31

    goto/16 :goto_28ce

    :sswitch_2353
    const-string v4, "add_variable2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x11

    goto/16 :goto_28ce

    :sswitch_235f
    const-string v4, "province_unrest_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x6d

    goto/16 :goto_28ce

    :sswitch_236b
    const-string v4, "bonus_discipline"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xae

    goto/16 :goto_28ce

    :sswitch_2377
    const-string v4, "bonus_province_maintenance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x78

    goto/16 :goto_28ce

    :sswitch_2383
    const-string v4, "add_guarantee"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x49

    goto/16 :goto_28ce

    :sswitch_238f
    const-string v4, "province_economy_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x51

    goto/16 :goto_28ce

    :sswitch_239b
    const-string v4, "player_set_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x1f

    goto/16 :goto_28ce

    :sswitch_23a7
    const-string v4, "bonus_inflation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x7d

    goto/16 :goto_28ce

    :sswitch_23b3
    const-string v4, "bonus_recruit_army_second_line_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8c

    goto/16 :goto_28ce

    :sswitch_23bf
    const-string v4, "bonus_income_economy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x80

    goto/16 :goto_28ce

    :sswitch_23cb
    const-string v4, "province_religion_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x65

    goto/16 :goto_28ce

    :sswitch_23d7
    const-string v4, "change_ideology_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x22

    goto/16 :goto_28ce

    :sswitch_23e3
    const-string v4, "relations_set"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x46

    goto/16 :goto_28ce

    :sswitch_23ef
    const-string v4, "bonus_religion_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa8

    goto/16 :goto_28ce

    :sswitch_23fb
    const-string v4, "province_infrastructure_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x70

    goto/16 :goto_28ce

    :sswitch_2407
    const-string v4, "bonus_invest_in_economy_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x94

    goto/16 :goto_28ce

    :sswitch_2413
    const-string v4, "bonus_maintenance_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x7a

    goto/16 :goto_28ce

    :sswitch_241f
    const-string v4, "bonus_recruitment_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x89

    goto/16 :goto_28ce

    :sswitch_242b
    const-string v4, "bonus_revolutionary_risk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa6

    goto/16 :goto_28ce

    :sswitch_2437
    const-string v4, "add_truce"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x4b

    goto/16 :goto_28ce

    :sswitch_2443
    const-string v4, "add_ruler"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x38

    goto/16 :goto_28ce

    :sswitch_244f
    const-string v4, "gold_monthly_income"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x7

    goto/16 :goto_28ce

    :sswitch_245a
    const-string v4, "province_manpower_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x59

    goto/16 :goto_28ce

    :sswitch_2466
    const-string v4, "bonus_advisor_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa9

    goto/16 :goto_28ce

    :sswitch_2472
    const-string v4, "sub_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x2

    goto/16 :goto_28ce

    :sswitch_247d
    const-string v4, "add_military_access"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x48

    goto/16 :goto_28ce

    :sswitch_2489
    const-string v4, "military_academy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x14

    goto/16 :goto_28ce

    :sswitch_2495
    const-string v4, "ai_aggression"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x12

    goto/16 :goto_28ce

    :sswitch_24a1
    const-string v4, "add_advisor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x39

    goto/16 :goto_28ce

    :sswitch_24ad
    const-string v4, "province_infrastructure"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x6f

    goto/16 :goto_28ce

    :sswitch_24b9
    const-string v4, "bonus_army_maintenance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x88

    goto/16 :goto_28ce

    :sswitch_24c5
    const-string v4, "bonus_recruit_army_first_line_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8b

    goto/16 :goto_28ce

    :sswitch_24d1
    const-string v4, "leave_alliance_special_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x28

    goto/16 :goto_28ce

    :sswitch_24dd
    const-string v4, "manpower"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xd

    goto/16 :goto_28ce

    :sswitch_24e9
    const-string v4, "bonus_units_attack"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9c

    goto/16 :goto_28ce

    :sswitch_24f5
    const-string v4, "annex"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x3b

    goto/16 :goto_28ce

    :sswitch_2501
    const-string v4, "annexed_by_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x40

    goto/16 :goto_28ce

    :sswitch_250d
    const-string v4, "bonus_increase_manpower_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x96

    goto/16 :goto_28ce

    :sswitch_2519
    const-string v4, "name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x0

    goto/16 :goto_28ce

    :sswitch_2524
    const-string v4, "gold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x6

    goto/16 :goto_28ce

    :sswitch_252f
    const-string v4, "ai"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x4c

    goto/16 :goto_28ce

    :sswitch_253b
    const-string v4, "bonus_administration_buildings_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x90

    goto/16 :goto_28ce

    :sswitch_2547
    const-string v4, "province_manpower"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x58

    goto/16 :goto_28ce

    :sswitch_2553
    const-string v4, "change_religion_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x23

    goto/16 :goto_28ce

    :sswitch_255f
    const-string v4, "bonus_max_manpower_percentage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x83

    goto/16 :goto_28ce

    :sswitch_256b
    const-string v4, "add_general3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x37

    goto/16 :goto_28ce

    :sswitch_2577
    const-string v4, "add_general2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x36

    goto/16 :goto_28ce

    :sswitch_2583
    const-string v4, "add_alliance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x41

    goto/16 :goto_28ce

    :sswitch_258f
    const-string v4, "set_civ_tag_reset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x1b

    goto/16 :goto_28ce

    :sswitch_259b
    const-string v5, "research"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa

    goto/16 :goto_28ce

    :sswitch_25a7
    const-string v4, "bonus_construction_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x93

    goto/16 :goto_28ce

    :sswitch_25b3
    const-string v4, "bonus_construction_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8f

    goto/16 :goto_28ce

    :sswitch_25bf
    const-string v4, "bonus_research"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8d

    goto/16 :goto_28ce

    :sswitch_25cb
    const-string v4, "province_growth_rate_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x5e

    goto/16 :goto_28ce

    :sswitch_25d7
    const-string v4, "price_change_random"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x33

    goto/16 :goto_28ce

    :sswitch_25e3
    const-string v4, "province_infrastructure_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x71

    goto/16 :goto_28ce

    :sswitch_25ef
    const-string v4, "run_event"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x24

    goto/16 :goto_28ce

    :sswitch_25fb
    const-string v4, "white_peace"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x42

    goto/16 :goto_28ce

    :sswitch_2607
    const-string v4, "price_change_group"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x30

    goto/16 :goto_28ce

    :sswitch_2613
    const-string v4, "province_tax_efficiency_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x57

    goto/16 :goto_28ce

    :sswitch_261f
    const-string v4, "bonus_develop_infrastructure_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x98

    goto/16 :goto_28ce

    :sswitch_262b
    const-string v4, "bonus_research_points"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8e

    goto/16 :goto_28ce

    :sswitch_2637
    const-string v4, "add_defensive_pact"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x4a

    goto/16 :goto_28ce

    :sswitch_2643
    const-string v4, "add_new_army"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x13

    goto/16 :goto_28ce

    :sswitch_264f
    const-string v4, "supreme_court"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x17

    goto/16 :goto_28ce

    :sswitch_265b
    const-string v4, "province_religion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x63

    goto/16 :goto_28ce

    :sswitch_2667
    const-string v4, "annex_by_civ_from_civ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x3d

    goto/16 :goto_28ce

    :sswitch_2673
    const-string v4, "bonus_battle_width"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xad

    goto/16 :goto_28ce

    :sswitch_267f
    const-string v4, "bonus_maximum_amount_of_gold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x95

    goto/16 :goto_28ce

    :sswitch_268b
    const-string v4, "province_economy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x50

    goto/16 :goto_28ce

    :sswitch_2697
    const-string v4, "province_tax_efficiency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x54

    goto/16 :goto_28ce

    :sswitch_26a3
    const-string v4, "add_non_aggression"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x47

    goto/16 :goto_28ce

    :sswitch_26af
    const-string v4, "legacy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8

    goto/16 :goto_28ce

    :sswitch_26bb
    const-string v4, "set_civ_tag_reset2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x1c

    goto/16 :goto_28ce

    :sswitch_26c7
    const-string v4, "relations_change"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x45

    goto/16 :goto_28ce

    :sswitch_26d3
    const-string v4, "province_growth_rate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x5c

    goto/16 :goto_28ce

    :sswitch_26df
    const-string v4, "kill_ruler"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x2a

    goto/16 :goto_28ce

    :sswitch_26eb
    const-string v4, "province_devastation_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x69

    goto/16 :goto_28ce

    :sswitch_26f7
    const-string v4, "explode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x44

    goto/16 :goto_28ce

    :sswitch_2703
    const-string v4, "join_alliance_special_id_second_tier"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x27

    goto/16 :goto_28ce

    :sswitch_270f
    const-string v4, "province_manpower_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x5a

    goto/16 :goto_28ce

    :sswitch_271b
    const-string v4, "price_change_group_down"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x32

    goto/16 :goto_28ce

    :sswitch_2727
    const-string v4, "ae_set"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xe

    goto/16 :goto_28ce

    :sswitch_2733
    const-string v4, "bonus_improve_relations_modifier"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa1

    goto/16 :goto_28ce

    :sswitch_273f
    const-string v4, "bonus_economy_buildings_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x92

    goto/16 :goto_28ce

    :sswitch_274b
    const-string v4, "bonus_recruit_army_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x8a

    goto/16 :goto_28ce

    :sswitch_2757
    const-string v4, "bonus_tax_efficiency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x77

    goto/16 :goto_28ce

    :sswitch_2763
    const-string v4, "province_unrest"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x6b

    goto/16 :goto_28ce

    :sswitch_276f
    const-string v4, "province_manpower_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x5b

    goto/16 :goto_28ce

    :sswitch_277b
    const-string v4, "bonus_military_buildings_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x91

    goto/16 :goto_28ce

    :sswitch_2787
    const-string v4, "bonus_regiments_limit"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xb2

    goto/16 :goto_28ce

    :sswitch_2793
    const-string v4, "bonus_income_taxation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x7f

    goto/16 :goto_28ce

    :sswitch_279f
    const-string v4, "promote_advisor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x25

    goto/16 :goto_28ce

    :sswitch_27ab
    const-string v4, "province_religion_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x66

    goto/16 :goto_28ce

    :sswitch_27b7
    const-string v4, "province_growth_rate_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x5d

    goto/16 :goto_28ce

    :sswitch_27c3
    const-string v4, "bonus_manpower_recovery_from_disbanded_army"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xaf

    goto/16 :goto_28ce

    :sswitch_27cf
    const-string v4, "move_capital"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xc

    goto/16 :goto_28ce

    :sswitch_27db
    const-string v4, "province_tax_efficiency_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x55

    goto/16 :goto_28ce

    :sswitch_27e7
    const-string v4, "province_economy_all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x53

    goto/16 :goto_28ce

    :sswitch_27f3
    const-string v4, "bonus_monthly_legacy_percentage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x76

    goto/16 :goto_28ce

    :sswitch_27ff
    const-string v4, "price_change_random_up"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x34

    goto/16 :goto_28ce

    :sswitch_280b
    const-string v4, "set_civ_tag2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x1a

    goto/16 :goto_28ce

    :sswitch_2817
    const-string v4, "price_change_random_down"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x35

    goto/16 :goto_28ce

    :sswitch_2823
    const-string v4, "bonus_generals_attack"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x9a

    goto/16 :goto_28ce

    :sswitch_282f
    const-string v4, "province_infrastructure_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x72

    goto/16 :goto_28ce

    :sswitch_283b
    const-string v4, "bonus_income_from_vassals"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa5

    goto/16 :goto_28ce

    :sswitch_2847
    const-string v4, "province_devastation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x67

    goto/16 :goto_28ce

    :sswitch_2853
    const-string v4, "bonus_increase_tax_efficiency_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x97

    goto/16 :goto_28ce

    :sswitch_285f
    const-string v4, "bonus_army_morale_recovery"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x86

    goto/16 :goto_28ce

    :sswitch_286b
    const-string v4, "kill_ruler_chance"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x2b

    goto :goto_28ce

    :sswitch_2876
    const-string v4, "bonus_general_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xaa

    goto :goto_28ce

    :sswitch_2881
    const-string v4, "bonus_duration"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x73

    goto :goto_28ce

    :sswitch_288c
    const-string v4, "add_counter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/4 v1, 0x1

    goto :goto_28ce

    :sswitch_2896
    const-string v4, "declare_war"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x1d

    goto :goto_28ce

    :sswitch_28a1
    const-string v4, "price_change_down"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x2f

    goto :goto_28ce

    :sswitch_28ac
    const-string v4, "bonus_increase_growth_rate_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0x99

    goto :goto_28ce

    :sswitch_28b7
    const-string v4, "bonus_core_cost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2078

    const/16 v1, 0xa7

    goto :goto_28ce

    :sswitch_28c2
    const-string v4, "price_change"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_28c8
    .catch Ljava/lang/Exception; {:try_start_206f .. :try_end_28c8} :catch_38fd

    if-eqz v1, :cond_2078

    const/16 v1, 0x2d

    goto :goto_28ce

    :goto_28cd
    const/4 v1, -0x1

    :goto_28ce
    const-string v4, ";"

    packed-switch v1, :pswitch_data_4392

    .line 2661
    :try_start_28d3
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_38da

    .line 2658
    :pswitch_28d7
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRegimentsLimit;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRegimentsLimit;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2659
    goto/16 :goto_38fa

    .line 2655
    :pswitch_28ea
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAllCharactersLifeExpectancy;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAllCharactersLifeExpectancy;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    goto/16 :goto_38fa

    .line 2652
    :pswitch_28fd
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorMaxLevel;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorMaxLevel;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2653
    goto/16 :goto_38fa

    .line 2649
    :pswitch_2910
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoveryFromADisbandedArmy;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoveryFromADisbandedArmy;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2650
    goto/16 :goto_38fa

    .line 2646
    :pswitch_2923
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiscipline;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiscipline;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2647
    goto/16 :goto_38fa

    .line 2643
    :pswitch_2936
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBattleWidth;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBattleWidth;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2644
    goto/16 :goto_38fa

    .line 2640
    :pswitch_2949
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiplomacyPoints;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiplomacyPoints;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2641
    goto/16 :goto_38fa

    .line 2637
    :pswitch_295c
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    goto/16 :goto_38fa

    .line 2634
    :pswitch_296f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2635
    goto/16 :goto_38fa

    .line 2631
    :pswitch_2982
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2632
    goto/16 :goto_38fa

    .line 2628
    :pswitch_2995
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReligionCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReligionCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2629
    goto/16 :goto_38fa

    .line 2625
    :pswitch_29a8
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCoreCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCoreCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    goto/16 :goto_38fa

    .line 2622
    :pswitch_29bb
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRevolutionaryRisk;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRevolutionaryRisk;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2623
    goto/16 :goto_38fa

    .line 2619
    :pswitch_29ce
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeFromVassals;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeFromVassals;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2620
    goto/16 :goto_38fa

    .line 2616
    :pswitch_29e1
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAggressiveExpansion;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAggressiveExpansion;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    goto/16 :goto_38fa

    .line 2613
    :pswitch_29f4
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoansLimit;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoansLimit;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2614
    goto/16 :goto_38fa

    .line 2610
    :pswitch_2a07
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoanInterest;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoanInterest;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2611
    goto/16 :goto_38fa

    .line 2607
    :pswitch_2a1a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusImproveRelationsModifier;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusImproveRelationsModifier;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2608
    goto/16 :goto_38fa

    .line 2604
    :pswitch_2a2d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusSiegeEffectiveness;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusSiegeEffectiveness;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2605
    goto/16 :goto_38fa

    .line 2601
    :pswitch_2a40
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMovementSpeed;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMovementSpeed;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2602
    goto/16 :goto_38fa

    .line 2598
    :pswitch_2a53
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxMorale;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxMorale;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    goto/16 :goto_38fa

    .line 2595
    :pswitch_2a66
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsDefense;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsDefense;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2596
    goto/16 :goto_38fa

    .line 2592
    :pswitch_2a79
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsAttack;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsAttack;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2593
    goto/16 :goto_38fa

    .line 2589
    :pswitch_2a8c
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralDefense;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralDefense;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2590
    goto/16 :goto_38fa

    .line 2586
    :pswitch_2a9f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralAttack;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralAttack;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2587
    goto/16 :goto_38fa

    .line 2583
    :pswitch_2ab2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseGrowthRateCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseGrowthRateCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2584
    goto/16 :goto_38fa

    .line 2580
    :pswitch_2ac5
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDevelopInfrastructureCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDevelopInfrastructureCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    goto/16 :goto_38fa

    .line 2577
    :pswitch_2ad8
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseTaxEfficiencyCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseTaxEfficiencyCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2578
    goto/16 :goto_38fa

    .line 2574
    :pswitch_2aeb
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseManpowerCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseManpowerCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2575
    goto/16 :goto_38fa

    .line 2571
    :pswitch_2afe
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaximumAmountOfGold;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaximumAmountOfGold;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    goto/16 :goto_38fa

    .line 2568
    :pswitch_2b11
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInvestInEconomyCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInvestInEconomyCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2569
    goto/16 :goto_38fa

    .line 2565
    :pswitch_2b24
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionTime;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionTime;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2566
    goto/16 :goto_38fa

    .line 2562
    :pswitch_2b37
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusEconomyBuildingsCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusEconomyBuildingsCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2563
    goto/16 :goto_38fa

    .line 2559
    :pswitch_2b4a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMilitaryBuildingsCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMilitaryBuildingsCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2560
    goto/16 :goto_38fa

    .line 2556
    :pswitch_2b5d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdministrationBuildingsCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdministrationBuildingsCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2557
    goto/16 :goto_38fa

    .line 2553
    :pswitch_2b70
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2554
    goto/16 :goto_38fa

    .line 2550
    :pswitch_2b83
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearchPoints;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearchPoints;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2551
    goto/16 :goto_38fa

    .line 2547
    :pswitch_2b96
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearch;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearch;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2548
    goto/16 :goto_38fa

    .line 2544
    :pswitch_2ba9
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmySecondLineCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmySecondLineCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2545
    goto/16 :goto_38fa

    .line 2541
    :pswitch_2bbc
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyFirstLineCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyFirstLineCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2542
    goto/16 :goto_38fa

    .line 2538
    :pswitch_2bcf
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2539
    goto/16 :goto_38fa

    .line 2535
    :pswitch_2be2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitmentTime;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitmentTime;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2536
    goto/16 :goto_38fa

    .line 2532
    :pswitch_2bf5
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMaintenance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMaintenance;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2533
    goto/16 :goto_38fa

    .line 2529
    :pswitch_2c08
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusWarScoreCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusWarScoreCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2530
    goto/16 :goto_38fa

    .line 2526
    :pswitch_2c1b
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMoraleRecovery;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMoraleRecovery;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2527
    goto/16 :goto_38fa

    .line 2523
    :pswitch_2c2e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReinforcementSpeed;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReinforcementSpeed;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    goto/16 :goto_38fa

    .line 2520
    :pswitch_2c41
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoverySpeed;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoverySpeed;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2521
    goto/16 :goto_38fa

    .line 2517
    :pswitch_2c54
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpowerPercentage;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpowerPercentage;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2518
    goto/16 :goto_38fa

    .line 2514
    :pswitch_2c67
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpower;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpower;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2515
    goto/16 :goto_38fa

    .line 2511
    :pswitch_2c7a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeProduction;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeProduction;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2512
    goto/16 :goto_38fa

    .line 2508
    :pswitch_2c8d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeEconomy;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeEconomy;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2509
    goto/16 :goto_38fa

    .line 2505
    :pswitch_2ca0
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeTaxation;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeTaxation;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2506
    goto/16 :goto_38fa

    .line 2502
    :pswitch_2cb3
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProductionEfficiency;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProductionEfficiency;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2503
    goto/16 :goto_38fa

    .line 2499
    :pswitch_2cc6
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInflation;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInflation;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    goto/16 :goto_38fa

    .line 2496
    :pswitch_2cd9
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCorruption;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCorruption;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2497
    goto/16 :goto_38fa

    .line 2493
    :pswitch_2cec
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGrowthRate;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGrowthRate;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    goto/16 :goto_38fa

    .line 2490
    :pswitch_2cff
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaintenanceCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaintenanceCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2491
    goto/16 :goto_38fa

    .line 2487
    :pswitch_2d12
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBuildingsMaintenanceCost;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBuildingsMaintenanceCost;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2488
    goto/16 :goto_38fa

    .line 2484
    :pswitch_2d25
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProvinceMaintenance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProvinceMaintenance;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2485
    goto/16 :goto_38fa

    .line 2481
    :pswitch_2d38
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusTaxEfficiency;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusTaxEfficiency;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2482
    goto/16 :goto_38fa

    .line 2478
    :pswitch_2d4b
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacyPerc;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacyPerc;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2479
    goto/16 :goto_38fa

    .line 2475
    :pswitch_2d5e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacy;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacy;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2476
    goto/16 :goto_38fa

    .line 2472
    :pswitch_2d71
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyIncome;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyIncome;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2473
    goto/16 :goto_38fa

    .line 2469
    :pswitch_2d84
    const/4 v1, 0x1

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    .line 2470
    goto/16 :goto_38fa

    .line 2466
    :pswitch_2d8f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2467
    goto/16 :goto_38fa

    .line 2463
    :pswitch_2da9
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_All;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2464
    goto/16 :goto_38fa

    .line 2460
    :pswitch_2dbc
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_Capital;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2461
    goto/16 :goto_38fa

    .line 2457
    :pswitch_2dcf
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    goto/16 :goto_38fa

    .line 2454
    :pswitch_2de2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_ID;-><init>(IF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2455
    goto/16 :goto_38fa

    .line 2451
    :pswitch_2dfc
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_All;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    goto/16 :goto_38fa

    .line 2448
    :pswitch_2e0f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_Capital;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2449
    goto/16 :goto_38fa

    .line 2445
    :pswitch_2e22
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2446
    goto/16 :goto_38fa

    .line 2442
    :pswitch_2e35
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_ID;-><init>(IF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2443
    goto/16 :goto_38fa

    .line 2439
    :pswitch_2e4f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_All;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2440
    goto/16 :goto_38fa

    .line 2436
    :pswitch_2e62
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_Capital;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2437
    goto/16 :goto_38fa

    .line 2433
    :pswitch_2e75
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2434
    goto/16 :goto_38fa

    .line 2430
    :pswitch_2e88
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_ID;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2431
    goto/16 :goto_38fa

    .line 2427
    :pswitch_2ea2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_All;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2428
    goto/16 :goto_38fa

    .line 2424
    :pswitch_2eb5
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_Capital;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2425
    goto/16 :goto_38fa

    .line 2421
    :pswitch_2ec8
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2422
    goto/16 :goto_38fa

    .line 2418
    :pswitch_2edb
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_All;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2419
    goto/16 :goto_38fa

    .line 2415
    :pswitch_2eee
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_Capital;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    goto/16 :goto_38fa

    .line 2412
    :pswitch_2f01
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2413
    goto/16 :goto_38fa

    .line 2409
    :pswitch_2f14
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_ID;-><init>(IF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    goto/16 :goto_38fa

    .line 2406
    :pswitch_2f2e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_All;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2407
    goto/16 :goto_38fa

    .line 2403
    :pswitch_2f41
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_Capital;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2404
    goto/16 :goto_38fa

    .line 2400
    :pswitch_2f54
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2401
    goto/16 :goto_38fa

    .line 2397
    :pswitch_2f67
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_ID;-><init>(IF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2398
    goto/16 :goto_38fa

    .line 2394
    :pswitch_2f81
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_All;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    goto/16 :goto_38fa

    .line 2391
    :pswitch_2f94
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_Capital;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2392
    goto/16 :goto_38fa

    .line 2388
    :pswitch_2fa7
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2389
    goto/16 :goto_38fa

    .line 2385
    :pswitch_2fba
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_All;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    goto/16 :goto_38fa

    .line 2382
    :pswitch_2fcd
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_Capital;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    goto/16 :goto_38fa

    .line 2379
    :pswitch_2fe0
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_ID;-><init>(IF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    goto/16 :goto_38fa

    .line 2376
    :pswitch_2ffa
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2377
    goto/16 :goto_38fa

    .line 2373
    :pswitch_300d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_All;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_All;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2374
    goto/16 :goto_38fa

    .line 2370
    :pswitch_3020
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_Capital;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_Capital;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2371
    goto/16 :goto_38fa

    .line 2367
    :pswitch_3033
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_ID;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_ID;-><init>(IF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2368
    goto/16 :goto_38fa

    .line 2364
    :pswitch_304d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy;-><init>(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2365
    goto/16 :goto_38fa

    .line 2361
    :pswitch_3060
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    goto/16 :goto_38fa

    .line 2358
    :pswitch_3076
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreAdd;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreAdd;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2359
    goto/16 :goto_38fa

    .line 2355
    :pswitch_308c
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayMusic;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayMusic;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2356
    goto/16 :goto_38fa

    .line 2352
    :pswitch_309b
    const/4 v1, 0x1

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->ai:F
    :try_end_30a4
    .catch Ljava/lang/Exception; {:try_start_28d3 .. :try_end_30a4} :catch_38fd

    .line 2353
    goto/16 :goto_38fa

    .line 2345
    :pswitch_30a6
    :try_start_30a6
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddTruce;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddTruce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30b6
    .catch Ljava/lang/Exception; {:try_start_30a6 .. :try_end_30b6} :catch_30b8

    .line 2349
    goto/16 :goto_38fa

    .line 2346
    :catch_30b8
    move-exception v0

    move-object v1, v0

    .line 2347
    .local v1, "var22":Ljava/lang/Exception;
    move-object v4, v1

    .line 2348
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_30bb
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_30be
    .catch Ljava/lang/Exception; {:try_start_30bb .. :try_end_30be} :catch_38fd

    .line 2350
    .end local v1    # "var22":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2337
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_30c0
    :try_start_30c0
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DefensivePact;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DefensivePact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30d0
    .catch Ljava/lang/Exception; {:try_start_30c0 .. :try_end_30d0} :catch_30d2

    .line 2341
    goto/16 :goto_38fa

    .line 2338
    :catch_30d2
    move-exception v0

    move-object v1, v0

    .line 2339
    .local v1, "var23":Ljava/lang/Exception;
    move-object v4, v1

    .line 2340
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_30d5
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_30d8
    .catch Ljava/lang/Exception; {:try_start_30d5 .. :try_end_30d8} :catch_38fd

    .line 2342
    .end local v1    # "var23":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2329
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_30da
    :try_start_30da
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Guarantee;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Guarantee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30ea
    .catch Ljava/lang/Exception; {:try_start_30da .. :try_end_30ea} :catch_30ec

    .line 2333
    goto/16 :goto_38fa

    .line 2330
    :catch_30ec
    move-exception v0

    move-object v1, v0

    .line 2331
    .local v1, "var24":Ljava/lang/Exception;
    move-object v4, v1

    .line 2332
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_30ef
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_30f2
    .catch Ljava/lang/Exception; {:try_start_30ef .. :try_end_30f2} :catch_38fd

    .line 2334
    .end local v1    # "var24":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2321
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_30f4
    :try_start_30f4
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAccess;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3104
    .catch Ljava/lang/Exception; {:try_start_30f4 .. :try_end_3104} :catch_3106

    .line 2325
    goto/16 :goto_38fa

    .line 2322
    :catch_3106
    move-exception v0

    move-object v1, v0

    .line 2323
    .local v1, "var25":Ljava/lang/Exception;
    move-object v4, v1

    .line 2324
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3109
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_310c
    .catch Ljava/lang/Exception; {:try_start_3109 .. :try_end_310c} :catch_38fd

    .line 2326
    .end local v1    # "var25":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2313
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_310e
    :try_start_310e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NonAggressionPact;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NonAggressionPact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_311e
    .catch Ljava/lang/Exception; {:try_start_310e .. :try_end_311e} :catch_3120

    .line 2317
    goto/16 :goto_38fa

    .line 2314
    :catch_3120
    move-exception v0

    move-object v1, v0

    .line 2315
    .local v1, "var26":Ljava/lang/Exception;
    move-object v4, v1

    .line 2316
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3123
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3126
    .catch Ljava/lang/Exception; {:try_start_3123 .. :try_end_3126} :catch_38fd

    .line 2318
    .end local v1    # "var26":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2305
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_3128
    :try_start_3128
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationSet;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/4 v14, 0x3

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v4, v6, v5, v14}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationSet;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_313f
    .catch Ljava/lang/Exception; {:try_start_3128 .. :try_end_313f} :catch_3141

    .line 2309
    goto/16 :goto_38fa

    .line 2306
    :catch_3141
    move-exception v0

    move-object v1, v0

    .line 2307
    .local v1, "var27":Ljava/lang/Exception;
    move-object v4, v1

    .line 2308
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3144
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3147
    .catch Ljava/lang/Exception; {:try_start_3144 .. :try_end_3147} :catch_38fd

    .line 2310
    .end local v1    # "var27":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2297
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_3149
    :try_start_3149
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/4 v14, 0x3

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-direct {v4, v6, v5, v14}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RelationChange;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3160
    .catch Ljava/lang/Exception; {:try_start_3149 .. :try_end_3160} :catch_3162

    .line 2301
    goto/16 :goto_38fa

    .line 2298
    :catch_3162
    move-exception v0

    move-object v1, v0

    .line 2299
    .local v1, "var28":Ljava/lang/Exception;
    move-object v4, v1

    .line 2300
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3165
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3168
    .catch Ljava/lang/Exception; {:try_start_3165 .. :try_end_3168} :catch_38fd

    .line 2302
    .end local v1    # "var28":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2289
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_316a
    :try_start_316a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3177
    .catch Ljava/lang/Exception; {:try_start_316a .. :try_end_3177} :catch_3179

    .line 2293
    goto/16 :goto_38fa

    .line 2290
    :catch_3179
    move-exception v0

    move-object v1, v0

    .line 2291
    .local v1, "var29":Ljava/lang/Exception;
    move-object v4, v1

    .line 2292
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_317c
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_317f
    .catch Ljava/lang/Exception; {:try_start_317c .. :try_end_317f} :catch_38fd

    .line 2294
    .end local v1    # "var29":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2281
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_3181
    :try_start_3181
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RemoveAlliance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RemoveAlliance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3191
    .catch Ljava/lang/Exception; {:try_start_3181 .. :try_end_3191} :catch_3193

    .line 2285
    goto/16 :goto_38fa

    .line 2282
    :catch_3193
    move-exception v0

    move-object v1, v0

    .line 2283
    .local v1, "var30":Ljava/lang/Exception;
    move-object v4, v1

    .line 2284
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3196
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3199
    .catch Ljava/lang/Exception; {:try_start_3196 .. :try_end_3199} :catch_38fd

    .line 2286
    .end local v1    # "var30":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2273
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_319b
    :try_start_319b
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_WhitePeace;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_WhitePeace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31ab
    .catch Ljava/lang/Exception; {:try_start_319b .. :try_end_31ab} :catch_31ad

    .line 2277
    goto/16 :goto_38fa

    .line 2274
    :catch_31ad
    move-exception v0

    move-object v1, v0

    .line 2275
    .restart local v1    # "var30":Ljava/lang/Exception;
    move-object v4, v1

    .line 2276
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_31b0
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_31b3
    .catch Ljava/lang/Exception; {:try_start_31b0 .. :try_end_31b3} :catch_38fd

    .line 2278
    .end local v1    # "var30":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2265
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_31b5
    :try_start_31b5
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Alliance;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Alliance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31c5
    .catch Ljava/lang/Exception; {:try_start_31b5 .. :try_end_31c5} :catch_31c7

    .line 2269
    goto/16 :goto_38fa

    .line 2266
    :catch_31c7
    move-exception v0

    move-object v1, v0

    .line 2267
    .restart local v1    # "var30":Ljava/lang/Exception;
    move-object v4, v1

    .line 2268
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_31ca
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_31cd
    .catch Ljava/lang/Exception; {:try_start_31ca .. :try_end_31cd} :catch_38fd

    .line 2270
    .end local v1    # "var30":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2255
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_31cf
    :try_start_31cf
    array-length v1, v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_31ec

    aget-object v1, v3, v4

    if-eqz v1, :cond_31ec

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31ec

    .line 2256
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedByCivilization;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedByCivilization;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31ec
    .catch Ljava/lang/Exception; {:try_start_31cf .. :try_end_31ec} :catch_31ee

    .line 2261
    :cond_31ec
    goto/16 :goto_38fa

    .line 2258
    :catch_31ee
    move-exception v0

    move-object v1, v0

    .line 2259
    .local v1, "var31":Ljava/lang/Exception;
    move-object v4, v1

    .line 2260
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_31f1
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_31f4
    .catch Ljava/lang/Exception; {:try_start_31f1 .. :try_end_31f4} :catch_38fd

    .line 2262
    .end local v1    # "var31":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2245
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_31f6
    :try_start_31f6
    array-length v1, v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_3213

    aget-object v1, v3, v4

    if-eqz v1, :cond_3213

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3213

    .line 2246
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3213
    .catch Ljava/lang/Exception; {:try_start_31f6 .. :try_end_3213} :catch_3215

    .line 2251
    :cond_3213
    goto/16 :goto_38fa

    .line 2248
    :catch_3215
    move-exception v0

    move-object v1, v0

    .line 2249
    .local v1, "var32":Ljava/lang/Exception;
    move-object v4, v1

    .line 2250
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3218
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_321b
    .catch Ljava/lang/Exception; {:try_start_3218 .. :try_end_321b} :catch_38fd

    .line 2252
    .end local v1    # "var32":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2237
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_321d
    :try_start_321d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_322d
    .catch Ljava/lang/Exception; {:try_start_321d .. :try_end_322d} :catch_322f

    .line 2241
    goto/16 :goto_38fa

    .line 2238
    :catch_322f
    move-exception v0

    move-object v1, v0

    .line 2239
    .local v1, "var33":Ljava/lang/Exception;
    move-object v4, v1

    .line 2240
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_3232
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3235
    .catch Ljava/lang/Exception; {:try_start_3232 .. :try_end_3235} :catch_38fd

    .line 2242
    .end local v1    # "var33":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2213
    .end local v4    # "ex":Ljava/lang/Exception;
    :pswitch_3237
    :try_start_3237
    array-length v1, v3

    const/4 v5, 0x3

    if-le v1, v5, :cond_328a

    aget-object v1, v3, v5

    if-eqz v1, :cond_328a

    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_328a

    .line 2214
    aget-object v1, v3, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2215
    .local v1, "tSplit":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    .local v4, "nProvinces":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3253
    array-length v6, v1
    :try_end_3254
    .catch Ljava/lang/Exception; {:try_start_3237 .. :try_end_3254} :catch_328c

    if-ge v5, v6, :cond_326d

    .line 2219
    :try_start_3256
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3263
    .catch Ljava/lang/Exception; {:try_start_3256 .. :try_end_3263} :catch_3264

    .line 2223
    goto :goto_326a

    .line 2220
    :catch_3264
    move-exception v0

    move-object v6, v0

    .line 2221
    .local v6, "var34":Ljava/lang/Exception;
    move-object v14, v6

    .line 2222
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_3267
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2217
    .end local v6    # "var34":Ljava/lang/Exception;
    .end local v14    # "ex":Ljava/lang/Exception;
    :goto_326a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3253

    .line 2226
    :cond_326d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3288

    .line 2227
    iget-object v6, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedProvincesByCivFromCiv;

    move-object/from16 v18, v1

    const/16 v16, 0x1

    .end local v1    # "tSplit":[Ljava/lang/String;
    .local v18, "tSplit":[Ljava/lang/String;
    aget-object v1, v3, v16

    const/16 v19, 0x2

    aget-object v2, v3, v19

    invoke-direct {v14, v1, v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedProvincesByCivFromCiv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3287
    .catch Ljava/lang/Exception; {:try_start_3267 .. :try_end_3287} :catch_328c

    goto :goto_328a

    .line 2226
    .end local v18    # "tSplit":[Ljava/lang/String;
    .restart local v1    # "tSplit":[Ljava/lang/String;
    :cond_3288
    move-object/from16 v18, v1

    .line 2233
    .end local v1    # "tSplit":[Ljava/lang/String;
    .end local v4    # "nProvinces":Ljava/util/ArrayList;
    .end local v5    # "j":I
    :cond_328a
    :goto_328a
    goto/16 :goto_38fa

    .line 2230
    :catch_328c
    move-exception v0

    move-object v1, v0

    .line 2231
    .local v1, "var38":Ljava/lang/Exception;
    move-object v2, v1

    .line 2232
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_328f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3292
    .catch Ljava/lang/Exception; {:try_start_328f .. :try_end_3292} :catch_38fd

    .line 2234
    .end local v1    # "var38":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2189
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_3294
    :try_start_3294
    array-length v1, v3

    const/4 v2, 0x2

    if-le v1, v2, :cond_32ec

    aget-object v1, v3, v2

    if-eqz v1, :cond_32ec

    aget-object v1, v3, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32ec

    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32ec

    .line 2190
    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2191
    .local v1, "tSplit":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    .local v2, "nProvinces":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_32ba
    array-length v5, v1
    :try_end_32bb
    .catch Ljava/lang/Exception; {:try_start_3294 .. :try_end_32bb} :catch_32ee

    if-ge v4, v5, :cond_32d4

    .line 2195
    :try_start_32bd
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32ca
    .catch Ljava/lang/Exception; {:try_start_32bd .. :try_end_32ca} :catch_32cb

    .line 2199
    goto :goto_32d1

    .line 2196
    :catch_32cb
    move-exception v0

    move-object v5, v0

    .line 2197
    .local v5, "var35":Ljava/lang/Exception;
    move-object v6, v5

    .line 2198
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_32ce
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2193
    .end local v5    # "var35":Ljava/lang/Exception;
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_32d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_32ba

    .line 2202
    :cond_32d4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_32ea

    .line 2203
    iget-object v5, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvincesFromCiv;

    move-object/from16 v18, v1

    const/4 v14, 0x1

    .end local v1    # "tSplit":[Ljava/lang/String;
    .restart local v18    # "tSplit":[Ljava/lang/String;
    aget-object v1, v3, v14

    invoke-direct {v6, v1, v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvincesFromCiv;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32e9
    .catch Ljava/lang/Exception; {:try_start_32ce .. :try_end_32e9} :catch_32ee

    goto :goto_32ec

    .line 2202
    .end local v18    # "tSplit":[Ljava/lang/String;
    .restart local v1    # "tSplit":[Ljava/lang/String;
    :cond_32ea
    move-object/from16 v18, v1

    .line 2209
    .end local v1    # "tSplit":[Ljava/lang/String;
    .end local v2    # "nProvinces":Ljava/util/ArrayList;
    .end local v4    # "j":I
    :cond_32ec
    :goto_32ec
    goto/16 :goto_38fa

    .line 2206
    :catch_32ee
    move-exception v0

    move-object v1, v0

    .line 2207
    .local v1, "var39":Ljava/lang/Exception;
    move-object v2, v1

    .line 2208
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_32f1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_32f4
    .catch Ljava/lang/Exception; {:try_start_32f1 .. :try_end_32f4} :catch_38fd

    .line 2210
    .end local v1    # "var39":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2165
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_32f6
    :try_start_32f6
    array-length v1, v3

    const/4 v2, 0x1

    if-le v1, v2, :cond_333c

    aget-object v1, v3, v2

    if-eqz v1, :cond_333c

    aget-object v1, v3, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_333c

    .line 2166
    aget-object v1, v3, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "tSplit":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2169
    .local v2, "nProvinces":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3312
    array-length v5, v1
    :try_end_3313
    .catch Ljava/lang/Exception; {:try_start_32f6 .. :try_end_3313} :catch_333e

    if-ge v4, v5, :cond_332c

    .line 2171
    :try_start_3315
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3322
    .catch Ljava/lang/Exception; {:try_start_3315 .. :try_end_3322} :catch_3323

    .line 2175
    goto :goto_3329

    .line 2172
    :catch_3323
    move-exception v0

    move-object v5, v0

    .line 2173
    .local v5, "var36":Ljava/lang/Exception;
    move-object v6, v5

    .line 2174
    .restart local v6    # "ex":Ljava/lang/Exception;
    :try_start_3326
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2169
    .end local v5    # "var36":Ljava/lang/Exception;
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_3329
    add-int/lit8 v4, v4, 0x1

    goto :goto_3312

    .line 2178
    :cond_332c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_333c

    .line 2179
    iget-object v5, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvinces;

    invoke-direct {v6, v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvinces;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_333c
    .catch Ljava/lang/Exception; {:try_start_3326 .. :try_end_333c} :catch_333e

    .line 2185
    .end local v1    # "tSplit":[Ljava/lang/String;
    .end local v2    # "nProvinces":Ljava/util/ArrayList;
    .end local v4    # "j":I
    :cond_333c
    goto/16 :goto_38fa

    .line 2182
    :catch_333e
    move-exception v0

    move-object v1, v0

    .line 2183
    .local v1, "var40":Ljava/lang/Exception;
    move-object v2, v1

    .line 2184
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3341
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2186
    .end local v1    # "var40":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2161
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_3346
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2162
    goto/16 :goto_38fa

    .line 2158
    :pswitch_335c
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_336d
    .catch Ljava/lang/Exception; {:try_start_3341 .. :try_end_336d} :catch_38fd

    .line 2159
    goto/16 :goto_38fa

    .line 2151
    :pswitch_336f
    :try_start_336f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;

    const/4 v4, 0x1

    aget-object v31, v3, v4

    const/4 v4, 0x2

    aget-object v32, v3, v4

    const/4 v4, 0x3

    aget-object v33, v3, v4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    aget-object v4, v3, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3398
    .catch Ljava/lang/Exception; {:try_start_336f .. :try_end_3398} :catch_339a

    .line 2155
    goto/16 :goto_38fa

    .line 2152
    :catch_339a
    move-exception v0

    move-object v1, v0

    .line 2153
    .local v1, "var37":Ljava/lang/Exception;
    move-object v2, v1

    .line 2154
    .restart local v2    # "ex":Ljava/lang/Exception;
    :try_start_339d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2156
    .end local v1    # "var37":Ljava/lang/Exception;
    goto/16 :goto_38fa

    .line 2147
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_33a2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    goto/16 :goto_38fa

    .line 2144
    :pswitch_33bf
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_Character;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_Character;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    goto/16 :goto_38fa

    .line 2141
    :pswitch_33ce
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x4

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v2, v4, v5, v6, v14}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2142
    goto/16 :goto_38fa

    .line 2138
    :pswitch_33f6
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x4

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v2, v4, v5, v6, v14}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2139
    goto/16 :goto_38fa

    .line 2135
    :pswitch_341e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandom;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x4

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v2, v4, v5, v6, v14}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandom;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2136
    goto/16 :goto_38fa

    .line 2132
    :pswitch_3446
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupDown;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupDown;-><init>(IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    goto/16 :goto_38fa

    .line 2129
    :pswitch_3477
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupUp;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupUp;-><init>(IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    goto/16 :goto_38fa

    .line 2126
    :pswitch_34a8
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;-><init>(IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2127
    goto/16 :goto_38fa

    .line 2123
    :pswitch_34d9
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeDown;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeDown;-><init>(IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2124
    goto/16 :goto_38fa

    .line 2120
    :pswitch_350a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeUp;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeUp;-><init>(IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    goto/16 :goto_38fa

    .line 2117
    :pswitch_353b
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/16 v19, 0x4

    aget-object v4, v3, v19

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v18, 0x5

    aget-object v4, v3, v18

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;-><init>(IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2118
    goto/16 :goto_38fa

    .line 2114
    :pswitch_356e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2115
    goto/16 :goto_38fa

    .line 2111
    :pswitch_357a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler_Chance;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler_Chance;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2112
    goto/16 :goto_38fa

    .line 2108
    :pswitch_358d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    goto/16 :goto_38fa

    .line 2105
    :pswitch_3599
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillAdvisor;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillAdvisor;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2106
    goto/16 :goto_38fa

    .line 2102
    :pswitch_35ac
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_LeaveAllianceSpecial;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_LeaveAllianceSpecial;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    goto/16 :goto_38fa

    .line 2099
    :pswitch_35bf
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialSecondTier;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialSecondTier;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    goto/16 :goto_38fa

    .line 2096
    :pswitch_35d2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2097
    goto/16 :goto_38fa

    .line 2093
    :pswitch_35e5
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PromoteAdvisor;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PromoteAdvisor;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    goto/16 :goto_38fa

    .line 2090
    :pswitch_35f8
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2091
    goto/16 :goto_38fa

    .line 2087
    :pswitch_3607
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v2, v4, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2088
    goto/16 :goto_38fa

    .line 2084
    :pswitch_361d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v2, v4, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    goto/16 :goto_38fa

    .line 2081
    :pswitch_3633
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligion;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligion;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2082
    goto/16 :goto_38fa

    .line 2078
    :pswitch_3646
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeology;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeology;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    goto/16 :goto_38fa

    .line 2075
    :pswitch_3659
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayerChangeCiv;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayerChangeCiv;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2076
    goto/16 :goto_38fa

    .line 2072
    :pswitch_3668
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar2;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {v2, v5, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    goto/16 :goto_38fa

    .line 2069
    :pswitch_367a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    goto/16 :goto_38fa

    .line 2066
    :pswitch_3689
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {v2, v5, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    goto/16 :goto_38fa

    .line 2063
    :pswitch_369b
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv_Reset;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2064
    goto/16 :goto_38fa

    .line 2060
    :pswitch_36aa
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {v2, v5, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    goto/16 :goto_38fa

    .line 2057
    :pswitch_36bc
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    goto/16 :goto_38fa

    .line 2054
    :pswitch_36cb
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NuclearReactor;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NuclearReactor;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2055
    goto/16 :goto_38fa

    .line 2051
    :pswitch_36de
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SupremeCourt;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SupremeCourt;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2052
    goto/16 :goto_38fa

    .line 2048
    :pswitch_36f1
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_CapitalCityLevel;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_CapitalCityLevel;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2049
    goto/16 :goto_38fa

    .line 2045
    :pswitch_3704
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademyForGenerals;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademyForGenerals;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2046
    goto/16 :goto_38fa

    .line 2042
    :pswitch_3717
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademy;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademy;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    goto/16 :goto_38fa

    .line 2027
    :pswitch_372a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2028
    .local v1, "unitID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_3734
    .catch Ljava/lang/Exception; {:try_start_339d .. :try_end_3734} :catch_38fd

    .line 2031
    .local v2, "nProvinces":Ljava/util/ArrayList;
    const/4 v4, 0x1

    .restart local v4    # "j":I
    :goto_3735
    :try_start_3735
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_3759

    .line 2032
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2033
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3756
    .catch Ljava/lang/Exception; {:try_start_3735 .. :try_end_3756} :catch_375a

    .line 2031
    add-int/lit8 v4, v4, 0x2

    goto :goto_3735

    .line 2037
    :cond_3759
    goto :goto_375f

    .line 2035
    .end local v4    # "j":I
    :catch_375a
    move-exception v0

    move-object v4, v0

    .line 2036
    .local v4, "var41":Ljava/lang/Exception;
    :try_start_375c
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2039
    .end local v4    # "var41":Ljava/lang/Exception;
    :goto_375f
    iget-object v4, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddArmy;

    invoke-direct {v5, v1, v2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddArmy;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    goto/16 :goto_38fa

    .line 2024
    .end local v1    # "unitID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "nProvinces":Ljava/util/ArrayList;
    :pswitch_376b
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2025
    goto/16 :goto_38fa

    .line 2021
    :pswitch_377e
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {v2, v5, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2022
    goto/16 :goto_38fa

    .line 2018
    :pswitch_3790
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    goto/16 :goto_38fa

    .line 2015
    :pswitch_379f
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AdvantagePoints;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AdvantagePoints;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    goto/16 :goto_38fa

    .line 2012
    :pswitch_37b2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AggressiveExpansion_Set;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AggressiveExpansion_Set;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2013
    goto/16 :goto_38fa

    .line 2009
    :pswitch_37c5
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Manpower;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Manpower;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    goto/16 :goto_38fa

    .line 2006
    :pswitch_37d8
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MoveCapital;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MoveCapital;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    goto/16 :goto_38fa

    .line 2003
    :pswitch_37eb
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Inflation;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Inflation;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2004
    goto/16 :goto_38fa

    .line 2000
    :pswitch_37fe
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Research;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Research;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2001
    goto/16 :goto_38fa

    .line 1997
    :pswitch_3811
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventOutcome_Legacy_Monthly;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventOutcome_Legacy_Monthly;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1998
    goto/16 :goto_38fa

    .line 1994
    :pswitch_3824
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Legacy;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Legacy;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1995
    goto/16 :goto_38fa

    .line 1991
    :pswitch_3837
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold_MonthlyIncome;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold_MonthlyIncome;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1992
    goto/16 :goto_38fa

    .line 1988
    :pswitch_384a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    goto/16 :goto_38fa

    .line 1985
    :pswitch_385d
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-direct {v2, v5, v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1986
    goto/16 :goto_38fa

    .line 1982
    :pswitch_3872
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Div_Counter;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    goto :goto_38fa

    .line 1979
    :pswitch_388a
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Mul_Counter;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Mul_Counter;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    goto :goto_38fa

    .line 1976
    :pswitch_38a2
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Sub_Counter;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Sub_Counter;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    goto :goto_38fa

    .line 1973
    :pswitch_38ba
    iget-object v1, v13, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Add_Counter;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/16 v21, 0x2

    aget-object v4, v3, v21

    const/16 v20, 0x3

    aget-object v6, v3, v20

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v4, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Add_Counter;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    goto :goto_38fa

    .line 1970
    :pswitch_38d4
    const/4 v1, 0x1

    aget-object v2, v3, v1

    iput-object v2, v13, Laoc/kingdoms/lukasz/events/EventOption;->name:Ljava/lang/String;

    .line 1971
    goto :goto_38fa

    .line 2661
    :goto_38da
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MISSING IN OPTION -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v3, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_38fa
    .catch Ljava/lang/Exception; {:try_start_375c .. :try_end_38fa} :catch_38fd

    :goto_38fa
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    :catch_38fd
    move-exception v0

    move-object v2, v0

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_3aae

    .line 2664
    .restart local v3    # "sLine":[Ljava/lang/String;
    :cond_3908
    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    :try_start_3910
    aget-object v1, v3, v26

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_3916
    .catch Ljava/lang/Exception; {:try_start_3910 .. :try_end_3916} :catch_3a99

    sparse-switch v2, :sswitch_data_44fc

    :cond_3919
    goto/16 :goto_39c4

    :sswitch_391b
    :try_start_391b
    const-string v2, "no_text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x3

    goto/16 :goto_39c6

    :sswitch_3927
    const-string v2, "possible_to_run"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x9

    goto/16 :goto_39c6

    :sswitch_3933
    const-string v2, "show_in_missions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0xa

    goto/16 :goto_39c6

    :sswitch_393f
    const-string v2, "only_once"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x8

    goto/16 :goto_39c6

    :sswitch_394b
    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x4

    goto/16 :goto_39c6

    :sswitch_3957
    const-string v2, "popUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    goto/16 :goto_39c6

    :sswitch_3961
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x7

    goto :goto_39c6

    :sswitch_396c
    const-string v2, "desc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x5

    goto :goto_39c6

    :sswitch_3977
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x0

    goto :goto_39c6

    :sswitch_3982
    const-string v2, "mission_desc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x6

    goto :goto_39c6

    :sswitch_398d
    const-string v2, "important"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x2

    goto :goto_39c6

    :sswitch_3998
    const-string v2, "music_file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0xe

    goto :goto_39c6

    :sswitch_39a3
    const-string v2, "no_background"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0x1

    goto :goto_39c6

    :sswitch_39ae
    const-string v2, "super_event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3919

    const/16 v30, 0xd

    goto :goto_39c6

    :sswitch_39b9
    const-string v2, "mission_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_39bf
    .catch Ljava/lang/Exception; {:try_start_391b .. :try_end_39bf} :catch_38fd

    if-eqz v1, :cond_3919

    const/16 v30, 0xb

    goto :goto_39c6

    :goto_39c4
    const/16 v30, -0x1

    :goto_39c6
    packed-switch v30, :pswitch_data_453a

    .line 2714
    const/4 v1, 0x1

    :try_start_39ca
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_39cc
    .catch Ljava/lang/Exception; {:try_start_39ca .. :try_end_39cc} :catch_3a6c

    goto/16 :goto_3a6e

    .line 2711
    :pswitch_39ce
    const/4 v1, 0x1

    :try_start_39cf
    aget-object v2, v3, v1

    iput-object v2, v9, Laoc/kingdoms/lukasz/events/Event;->musicName:Ljava/lang/String;

    .line 2712
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2708
    :pswitch_39d6
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->super_event:Z

    .line 2709
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2705
    :pswitch_39e2
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->popUp:Z

    .line 2706
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2702
    :pswitch_39ee
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v9, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    .line 2703
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2699
    :pswitch_39fa
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->show_in_missions:Z

    .line 2700
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2696
    :pswitch_3a06
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    .line 2697
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2693
    :pswitch_3a12
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    .line 2694
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2690
    :pswitch_3a1e
    const/4 v1, 0x1

    aget-object v2, v3, v1

    iput-object v2, v9, Laoc/kingdoms/lukasz/events/Event;->image:Ljava/lang/String;

    .line 2691
    const/4 v1, 0x1

    goto/16 :goto_3a90

    .line 2687
    :pswitch_3a26
    const/4 v1, 0x1

    aget-object v2, v3, v1

    iput-object v2, v9, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    .line 2688
    const/4 v1, 0x1

    goto :goto_3a90

    .line 2684
    :pswitch_3a2d
    const/4 v1, 0x1

    aget-object v2, v3, v1

    iput-object v2, v9, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    .line 2685
    const/4 v1, 0x1

    goto :goto_3a90

    .line 2681
    :pswitch_3a34
    const/4 v1, 0x1

    aget-object v2, v3, v1

    iput-object v2, v9, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    .line 2682
    const/4 v1, 0x1

    goto :goto_3a90

    .line 2678
    :pswitch_3a3b
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->no_text:Z

    .line 2679
    const/4 v1, 0x1

    goto :goto_3a90

    .line 2672
    :pswitch_3a46
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_3a4d
    .catch Ljava/lang/Exception; {:try_start_39cf .. :try_end_3a4d} :catch_38fd

    if-eqz v2, :cond_3a51

    .line 2673
    :try_start_3a4f
    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->popUp:Z
    :try_end_3a51
    .catch Ljava/lang/Exception; {:try_start_3a4f .. :try_end_3a51} :catch_3a6c

    .line 2675
    :cond_3a51
    :try_start_3a51
    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->important:Z

    .line 2676
    const/4 v1, 0x1

    goto :goto_3a90

    .line 2669
    :pswitch_3a5b
    const/4 v1, 0x1

    aget-object v2, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v9, Laoc/kingdoms/lukasz/events/Event;->no_background:Z
    :try_end_3a64
    .catch Ljava/lang/Exception; {:try_start_3a51 .. :try_end_3a64} :catch_38fd

    .line 2670
    const/4 v1, 0x1

    goto :goto_3a90

    .line 2666
    :pswitch_3a66
    const/4 v1, 0x1

    :try_start_3a67
    aget-object v2, v3, v1

    iput-object v2, v9, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    .line 2667
    goto :goto_3a90

    .line 2718
    .end local v3    # "sLine":[Ljava/lang/String;
    :catch_3a6c
    move-exception v0

    goto :goto_3a9b

    .line 2714
    .restart local v3    # "sLine":[Ljava/lang/String;
    :goto_3a6e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MISSING -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v3, v26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_3a8e
    .catch Ljava/lang/Exception; {:try_start_3a67 .. :try_end_3a8e} :catch_3a6c

    goto :goto_3a90

    .line 1248
    :cond_3a8f
    const/4 v1, 0x1

    .line 2721
    .end local v3    # "sLine":[Ljava/lang/String;
    :goto_3a90
    move/from16 v14, v17

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    .end local v17    # "nextType":I
    .end local v27    # "exactDate":Z
    .end local v28    # "exactDay":I
    .end local v29    # "exactMonth":I
    .local v4, "exactDate":Z
    .local v5, "exactDay":I
    .local v6, "exactMonth":I
    .local v14, "nextType":I
    :goto_3a98
    goto :goto_3ab4

    .line 2718
    .end local v4    # "exactDate":Z
    .end local v5    # "exactDay":I
    .end local v6    # "exactMonth":I
    .end local v14    # "nextType":I
    .restart local v17    # "nextType":I
    .restart local v27    # "exactDate":Z
    .restart local v28    # "exactDay":I
    .restart local v29    # "exactMonth":I
    :catch_3a99
    move-exception v0

    const/4 v1, 0x1

    :goto_3a9b
    move-object v2, v0

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    goto :goto_3aae

    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .end local v27    # "exactDate":Z
    .end local v28    # "exactDay":I
    .end local v29    # "exactMonth":I
    .restart local v4    # "exactDate":Z
    .restart local v5    # "exactDay":I
    .restart local v6    # "exactMonth":I
    .restart local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :catch_3aa3
    move-exception v0

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v13, v23

    const/4 v1, 0x1

    move-object v2, v0

    .line 2719
    .end local v23    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .local v2, "var42":Ljava/lang/Exception;
    .restart local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    :goto_3aae
    move-object v3, v2

    .line 2720
    .local v3, "exr":Ljava/lang/Exception;
    :try_start_3aaf
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3ab2
    .catch Ljava/lang/Exception; {:try_start_3aaf .. :try_end_3ab2} :catch_3ac1

    move/from16 v14, v17

    .line 2723
    .end local v2    # "var42":Ljava/lang/Exception;
    .end local v3    # "exr":Ljava/lang/Exception;
    .end local v17    # "nextType":I
    .restart local v14    # "nextType":I
    :goto_3ab4
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v22

    goto/16 :goto_23

    .line 1123
    .end local v8    # "i":I
    .end local v9    # "nEvent":Laoc/kingdoms/lukasz/events/Event;
    .end local v10    # "inTrigger":Z
    .end local v11    # "inOption":Z
    .end local v12    # "trigger":Laoc/kingdoms/lukasz/events/triggers/EventTrigger;
    .end local v13    # "option":Laoc/kingdoms/lukasz/events/EventOption;
    .end local v14    # "nextType":I
    .end local v15    # "triggerType":I
    .end local v22    # "iSize":I
    .local v3, "iSize":I
    :cond_3abe
    move/from16 v22, v3

    .line 2729
    .end local v3    # "iSize":I
    .end local v4    # "exactDate":Z
    .end local v5    # "exactDay":I
    .end local v6    # "exactMonth":I
    .end local v7    # "exactYear":I
    :cond_3ac0
    :goto_3ac0
    goto :goto_3ac7

    .line 2726
    :catch_3ac1
    move-exception v0

    move-object v1, v0

    .line 2727
    .local v1, "var43":Ljava/lang/Exception;
    move-object v2, v1

    .line 2728
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2731
    .end local v1    # "var43":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3ac7
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_3aca
    .sparse-switch
        -0x1ef2cd14 -> :sswitch_146
        0xed864e6 -> :sswitch_13b
        0x172e1f1f -> :sswitch_132
        0x3efcfb00 -> :sswitch_127
        0x4f8a9ffa -> :sswitch_11c
        0x52a80943 -> :sswitch_113
        0x54eb828b -> :sswitch_10a
        0x6e181eaf -> :sswitch_101
    .end sparse-switch

    :pswitch_data_3aec
    .packed-switch 0x0
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_15f
        :pswitch_15d
        :pswitch_15b
        :pswitch_159
    .end packed-switch

    :sswitch_data_3b00
    .sparse-switch
        0x172e1f1f -> :sswitch_1d6
        0x51e3fe11 -> :sswitch_1cb
        0x52a80943 -> :sswitch_1c2
        0x54eb828b -> :sswitch_1b9
        0x6e181eaf -> :sswitch_1b0
    .end sparse-switch

    :pswitch_data_3b16
    .packed-switch 0x0
        :pswitch_1fd
        :pswitch_1f8
        :pswitch_1f3
        :pswitch_1ee
        :pswitch_1e9
    .end packed-switch

    :sswitch_data_3b24
    .sparse-switch
        -0x28919d30 -> :sswitch_278
        -0x1ef2ab1c -> :sswitch_26d
        0xed886de -> :sswitch_262
        0x5145a1ca -> :sswitch_257
        0x51e3f392 -> :sswitch_24c
    .end sparse-switch

    :pswitch_data_3b3a
    .packed-switch 0x0
        :pswitch_2ae
        :pswitch_2a5
        :pswitch_29c
        :pswitch_293
        :pswitch_28b
    .end packed-switch

    :sswitch_data_3b48
    .sparse-switch
        -0x7f97e162 -> :sswitch_def
        -0x7ebf4383 -> :sswitch_de4
        -0x7d8075ad -> :sswitch_dd9
        -0x7ac7606e -> :sswitch_dce
        -0x7a74129e -> :sswitch_dc3
        -0x77c06a51 -> :sswitch_db8
        -0x762eefb2 -> :sswitch_dad
        -0x7566f234 -> :sswitch_da2
        -0x74f59256 -> :sswitch_d97
        -0x74db4519 -> :sswitch_d8b
        -0x72762cba -> :sswitch_d7f
        -0x723a6e06 -> :sswitch_d73
        -0x722787c2 -> :sswitch_d67
        -0x7194abc7 -> :sswitch_d5b
        -0x718ec7fe -> :sswitch_d4f
        -0x6ebd2779 -> :sswitch_d43
        -0x6d8db9ee -> :sswitch_d37
        -0x6d8d8feb -> :sswitch_d2b
        -0x6cf73275 -> :sswitch_d1f
        -0x6cf4d41b -> :sswitch_d13
        -0x6b25d893 -> :sswitch_d07
        -0x69a69922 -> :sswitch_cfb
        -0x684ac313 -> :sswitch_cf0
        -0x66d7a0a2 -> :sswitch_ce4
        -0x651f02e3 -> :sswitch_cd8
        -0x6288b8f2 -> :sswitch_ccc
        -0x621cf397 -> :sswitch_cc0
        -0x5e295c9d -> :sswitch_cb4
        -0x5dc21687 -> :sswitch_ca9
        -0x5d4b1fa1 -> :sswitch_c9d
        -0x5c8e7603 -> :sswitch_c91
        -0x5b495b26 -> :sswitch_c85
        -0x5a44f919 -> :sswitch_c79
        -0x5847c19f -> :sswitch_c6d
        -0x5826fcb8 -> :sswitch_c61
        -0x56c3cb3c -> :sswitch_c55
        -0x56a52cf8 -> :sswitch_c49
        -0x5625da09 -> :sswitch_c3d
        -0x54cc0264 -> :sswitch_c31
        -0x54730c43 -> :sswitch_c25
        -0x53081e13 -> :sswitch_c19
        -0x52d46fe1 -> :sswitch_c0d
        -0x529ae165 -> :sswitch_c01
        -0x519d5d3a -> :sswitch_bf5
        -0x4fe4d783 -> :sswitch_be9
        -0x4ee5259f -> :sswitch_bdd
        -0x4cda0ba4 -> :sswitch_bd1
        -0x4c9ccaa3 -> :sswitch_bc5
        -0x4b2d8f10 -> :sswitch_bb9
        -0x4a0fa7f0 -> :sswitch_bad
        -0x49f1b0a9 -> :sswitch_ba1
        -0x480a90e0 -> :sswitch_b95
        -0x47bb5b38 -> :sswitch_b89
        -0x4651e7c5 -> :sswitch_b7d
        -0x45e76351 -> :sswitch_b71
        -0x45de8a3f -> :sswitch_b65
        -0x45731b97 -> :sswitch_b59
        -0x42bd2d54 -> :sswitch_b4d
        -0x3f6b6f88 -> :sswitch_b41
        -0x3ce00d13 -> :sswitch_b35
        -0x3b943e39 -> :sswitch_b29
        -0x383625c7 -> :sswitch_b1d
        -0x37d6087c -> :sswitch_b11
        -0x37280b73 -> :sswitch_b05
        -0x36841821 -> :sswitch_af9
        -0x35a11498 -> :sswitch_aed
        -0x334d116e -> :sswitch_ae1
        -0x32adeda6 -> :sswitch_ad5
        -0x326480c0 -> :sswitch_ac9
        -0x31f6e75c -> :sswitch_abd
        -0x3183db43 -> :sswitch_ab1
        -0x2f3e0a60 -> :sswitch_aa5
        -0x2e06229c -> :sswitch_a99
        -0x2d61d739 -> :sswitch_a8d
        -0x2a7b89e5 -> :sswitch_a81
        -0x2a0808d1 -> :sswitch_a75
        -0x299783b0 -> :sswitch_a69
        -0x274cb378 -> :sswitch_a5d
        -0x26d3c651 -> :sswitch_a51
        -0x26910840 -> :sswitch_a45
        -0x263c6c45 -> :sswitch_a39
        -0x260c9c27 -> :sswitch_a2d
        -0x257a4cee -> :sswitch_a21
        -0x2423a4af -> :sswitch_a15
        -0x23fba45f -> :sswitch_a09
        -0x2278c7f2 -> :sswitch_9fd
        -0x222b409c -> :sswitch_9f1
        -0x2129a1bc -> :sswitch_9e5
        -0x2104e522 -> :sswitch_9d9
        -0x1f18b86a -> :sswitch_9cd
        -0x1e933517 -> :sswitch_9c1
        -0x1d3c93f2 -> :sswitch_9b5
        -0x1c9cf46a -> :sswitch_9a9
        -0x1af41db7 -> :sswitch_99d
        -0x1a74f779 -> :sswitch_991
        -0x18fb6b77 -> :sswitch_985
        -0x18a26b3a -> :sswitch_979
        -0x184d4764 -> :sswitch_96d
        -0x17b7e2ca -> :sswitch_961
        -0x1673e6bd -> :sswitch_955
        -0x14b799a4 -> :sswitch_949
        -0x13676ca2 -> :sswitch_93d
        -0x1329fcda -> :sswitch_931
        -0x11dc94de -> :sswitch_925
        -0x11429ae5 -> :sswitch_919
        -0x10ee98c0 -> :sswitch_90d
        -0xea0db15 -> :sswitch_901
        -0xdebe790 -> :sswitch_8f5
        -0xda350bb -> :sswitch_8e9
        -0xbe5ad1d -> :sswitch_8dd
        -0xb7804d9 -> :sswitch_8d1
        -0xb3e551a -> :sswitch_8c5
        -0xaa8bbcb -> :sswitch_8b9
        -0x90a3684 -> :sswitch_8ad
        -0x8f2f2e5 -> :sswitch_8a1
        -0x8118c9c -> :sswitch_895
        -0x800d0e4 -> :sswitch_889
        -0x77b4df6 -> :sswitch_87d
        -0x69b8ddf -> :sswitch_871
        -0x66c4434 -> :sswitch_865
        -0x606c51f -> :sswitch_85a
        -0x30eff48 -> :sswitch_84e
        -0x1801cb6 -> :sswitch_842
        0x49a168 -> :sswitch_836
        0xd7fef9 -> :sswitch_82a
        0x1b615a3 -> :sswitch_81e
        0x2babe81 -> :sswitch_812
        0x36a8864 -> :sswitch_806
        0x3a50245 -> :sswitch_7fa
        0x3cc71ee -> :sswitch_7ee
        0x4429b7b -> :sswitch_7e2
        0x4784117 -> :sswitch_7d6
        0x57bb5e1 -> :sswitch_7ca
        0x5fd9c90 -> :sswitch_7be
        0x70fdf05 -> :sswitch_7b2
        0x727e2e9 -> :sswitch_7a6
        0x7531637 -> :sswitch_79a
        0x75bd875 -> :sswitch_78e
        0x8132dd9 -> :sswitch_782
        0x84cf209 -> :sswitch_776
        0x9946b8c -> :sswitch_76a
        0x9e6849f -> :sswitch_75e
        0xb000bb0 -> :sswitch_752
        0xb0a9cda -> :sswitch_746
        0xc490f89 -> :sswitch_73a
        0xc71e44b -> :sswitch_72e
        0xde58969 -> :sswitch_722
        0x11452c98 -> :sswitch_716
        0x1407c5c2 -> :sswitch_70a
        0x14b994b2 -> :sswitch_6fe
        0x15c6168c -> :sswitch_6f3
        0x16a194ed -> :sswitch_6e7
        0x1752bdbb -> :sswitch_6db
        0x17edc3bc -> :sswitch_6cf
        0x18d3510c -> :sswitch_6c3
        0x1a51880a -> :sswitch_6b7
        0x1d27b4ce -> :sswitch_6ab
        0x215d8619 -> :sswitch_69f
        0x22527ee1 -> :sswitch_693
        0x23336dd7 -> :sswitch_687
        0x2368c7e2 -> :sswitch_67b
        0x237f6942 -> :sswitch_66f
        0x23bd3bca -> :sswitch_663
        0x23f7ad09 -> :sswitch_657
        0x259f3f1f -> :sswitch_64b
        0x25f70cd9 -> :sswitch_63f
        0x26ae7f9f -> :sswitch_633
        0x273e8bc4 -> :sswitch_627
        0x27438186 -> :sswitch_61b
        0x282609b4 -> :sswitch_610
        0x2b80c362 -> :sswitch_604
        0x2c77be07 -> :sswitch_5f8
        0x2e596c3f -> :sswitch_5ec
        0x326b0084 -> :sswitch_5e0
        0x32d6c8df -> :sswitch_5d4
        0x33c2418a -> :sswitch_5c8
        0x39e2bd22 -> :sswitch_5bc
        0x3f007fcd -> :sswitch_5b0
        0x429a7821 -> :sswitch_5a4
        0x435af402 -> :sswitch_598
        0x43c71e3b -> :sswitch_58c
        0x43d8d763 -> :sswitch_580
        0x43e07755 -> :sswitch_574
        0x45bb2fd1 -> :sswitch_568
        0x46bdece5 -> :sswitch_55c
        0x48f162e3 -> :sswitch_550
        0x4a26f824 -> :sswitch_545
        0x4e90bc44 -> :sswitch_539
        0x5167cb98 -> :sswitch_52d
        0x528b15a8 -> :sswitch_521
        0x52ba2b77 -> :sswitch_515
        0x53f43bd1 -> :sswitch_509
        0x5507e922 -> :sswitch_4fd
        0x5558fdc3 -> :sswitch_4f1
        0x55a2ea6c -> :sswitch_4e5
        0x589be144 -> :sswitch_4d9
        0x58b5baf9 -> :sswitch_4cd
        0x59eb6d57 -> :sswitch_4c1
        0x5a92f6aa -> :sswitch_4b5
        0x5bce5b01 -> :sswitch_4a9
        0x5bff8e6e -> :sswitch_49d
        0x5c40cec9 -> :sswitch_491
        0x5c70da30 -> :sswitch_486
        0x5d5fc72b -> :sswitch_47a
        0x5df0122a -> :sswitch_46e
        0x5e03757f -> :sswitch_462
        0x5e338f38 -> :sswitch_457
        0x5fa7f7c2 -> :sswitch_44b
        0x609368a4 -> :sswitch_43f
        0x609f6097 -> :sswitch_433
        0x60dea61b -> :sswitch_427
        0x62c92df0 -> :sswitch_41b
        0x63421c4a -> :sswitch_40f
        0x63593f80 -> :sswitch_403
        0x63eedf0f -> :sswitch_3f7
        0x65424286 -> :sswitch_3eb
        0x66fe371b -> :sswitch_3df
        0x6974fc7e -> :sswitch_3d3
        0x6c322103 -> :sswitch_3c7
        0x6c82fda1 -> :sswitch_3bb
        0x706fa751 -> :sswitch_3af
        0x70997762 -> :sswitch_3a3
        0x72ec722c -> :sswitch_397
        0x739e0bc0 -> :sswitch_38b
        0x74f218e2 -> :sswitch_37f
        0x75052609 -> :sswitch_373
        0x75c912e4 -> :sswitch_367
        0x7809daca -> :sswitch_35b
        0x78704a18 -> :sswitch_34f
        0x79827cee -> :sswitch_343
        0x7aa0959d -> :sswitch_337
        0x7aa6a365 -> :sswitch_32b
        0x7f9a2b79 -> :sswitch_31f
    .end sparse-switch

    :pswitch_data_3eee
    .packed-switch 0x0
        :pswitch_2016
        :pswitch_2004
        :pswitch_1ff2
        :pswitch_1fe0
        :pswitch_1fcd
        :pswitch_1fba
        :pswitch_1fa7
        :pswitch_1f94
        :pswitch_1f81
        :pswitch_1f6e
        :pswitch_1f5b
        :pswitch_1f48
        :pswitch_1f35
        :pswitch_1f22
        :pswitch_1f0f
        :pswitch_1efc
        :pswitch_1edf
        :pswitch_1edf
        :pswitch_1ec5
        :pswitch_1eab
        :pswitch_1e91
        :pswitch_1e77
        :pswitch_1e5d
        :pswitch_1e43
        :pswitch_1e29
        :pswitch_1e0f
        :pswitch_1df5
        :pswitch_1ddb
        :pswitch_1dc1
        :pswitch_1da7
        :pswitch_1d8d
        :pswitch_1d73
        :pswitch_1d59
        :pswitch_1d3f
        :pswitch_1d25
        :pswitch_1d0b
        :pswitch_1cf1
        :pswitch_1cd7
        :pswitch_1cbd
        :pswitch_1ca3
        :pswitch_1c8d
        :pswitch_1c77
        :pswitch_1c61
        :pswitch_1c40
        :pswitch_1c26
        :pswitch_1c13
        :pswitch_1bf9
        :pswitch_1bdf
        :pswitch_1bcc
        :pswitch_1bb9
        :pswitch_1ba6
        :pswitch_1b93
        :pswitch_1b80
        :pswitch_1b6d
        :pswitch_1b5a
        :pswitch_1b47
        :pswitch_1b34
        :pswitch_1b21
        :pswitch_1b0e
        :pswitch_1afb
        :pswitch_1ae8
        :pswitch_1ad5
        :pswitch_1ac2
        :pswitch_1aaf
        :pswitch_1a9c
        :pswitch_1a89
        :pswitch_1a33
        :pswitch_1a20
        :pswitch_1a0d
        :pswitch_19fa
        :pswitch_19e7
        :pswitch_19d4
        :pswitch_19c1
        :pswitch_19ae
        :pswitch_199b
        :pswitch_1988
        :pswitch_1975
        :pswitch_1962
        :pswitch_194f
        :pswitch_193c
        :pswitch_1929
        :pswitch_1916
        :pswitch_1903
        :pswitch_18f0
        :pswitch_18dd
        :pswitch_18ca
        :pswitch_18b7
        :pswitch_18a4
        :pswitch_1891
        :pswitch_187e
        :pswitch_186b
        :pswitch_1858
        :pswitch_1845
        :pswitch_1832
        :pswitch_181f
        :pswitch_180c
        :pswitch_1800
        :pswitch_17f4
        :pswitch_17e8
        :pswitch_17d5
        :pswitch_17c2
        :pswitch_17af
        :pswitch_179c
        :pswitch_1789
        :pswitch_1776
        :pswitch_1763
        :pswitch_1750
        :pswitch_173d
        :pswitch_172a
        :pswitch_1717
        :pswitch_1704
        :pswitch_16f1
        :pswitch_16de
        :pswitch_16cb
        :pswitch_16b8
        :pswitch_16a5
        :pswitch_1692
        :pswitch_167f
        :pswitch_166c
        :pswitch_1659
        :pswitch_1646
        :pswitch_1633
        :pswitch_1620
        :pswitch_1611
        :pswitch_15fe
        :pswitch_15eb
        :pswitch_15d8
        :pswitch_15c5
        :pswitch_15b2
        :pswitch_159f
        :pswitch_158c
        :pswitch_1579
        :pswitch_1566
        :pswitch_1553
        :pswitch_1540
        :pswitch_152d
        :pswitch_151a
        :pswitch_1507
        :pswitch_14f4
        :pswitch_14e1
        :pswitch_14ce
        :pswitch_14bb
        :pswitch_14a8
        :pswitch_1495
        :pswitch_1482
        :pswitch_146f
        :pswitch_145c
        :pswitch_1449
        :pswitch_1436
        :pswitch_1423
        :pswitch_1406
        :pswitch_13e9
        :pswitch_13cc
        :pswitch_13b9
        :pswitch_13a6
        :pswitch_1393
        :pswitch_1380
        :pswitch_136d
        :pswitch_135a
        :pswitch_1347
        :pswitch_132d
        :pswitch_131a
        :pswitch_1307
        :pswitch_12f4
        :pswitch_12e1
        :pswitch_12ce
        :pswitch_12bb
        :pswitch_12a8
        :pswitch_129c
        :pswitch_1289
        :pswitch_1276
        :pswitch_1263
        :pswitch_1250
        :pswitch_123d
        :pswitch_122a
        :pswitch_1217
        :pswitch_1204
        :pswitch_11f1
        :pswitch_11de
        :pswitch_11cb
        :pswitch_11b8
        :pswitch_11a5
        :pswitch_1192
        :pswitch_117f
        :pswitch_116c
        :pswitch_1159
        :pswitch_1146
        :pswitch_1133
        :pswitch_1127
        :pswitch_111b
        :pswitch_1108
        :pswitch_10f6
        :pswitch_10e4
        :pswitch_10d2
        :pswitch_10c0
        :pswitch_10ae
        :pswitch_109c
        :pswitch_108a
        :pswitch_1078
        :pswitch_1066
        :pswitch_1054
        :pswitch_1042
        :pswitch_1030
        :pswitch_101e
        :pswitch_100c
        :pswitch_ffa
        :pswitch_fe1
        :pswitch_fc8
        :pswitch_fb6
        :pswitch_fa4
        :pswitch_f92
        :pswitch_f80
        :pswitch_f6e
        :pswitch_f5c
        :pswitch_f4d
        :pswitch_f3e
        :pswitch_f2c
        :pswitch_f1d
        :pswitch_f0e
        :pswitch_eff
        :pswitch_ef0
        :pswitch_ee1
        :pswitch_ed2
        :pswitch_ec3
        :pswitch_eb4
        :pswitch_e9e
        :pswitch_e88
        :pswitch_e72
        :pswitch_e5c
        :pswitch_e46
        :pswitch_e30
        :pswitch_e1a
        :pswitch_e04
    .end packed-switch

    :sswitch_data_40c4
    .sparse-switch
        -0x7fbbf49a -> :sswitch_28c2
        -0x7ef99bb3 -> :sswitch_28b7
        -0x7e13586f -> :sswitch_28ac
        -0x7cfcfe25 -> :sswitch_28a1
        -0x78b9856d -> :sswitch_2896
        -0x7845bba2 -> :sswitch_288c
        -0x77c6ee4c -> :sswitch_2881
        -0x76d09b1c -> :sswitch_2876
        -0x75410222 -> :sswitch_286b
        -0x727e2ad8 -> :sswitch_285f
        -0x6f79da0e -> :sswitch_2853
        -0x6e2e1dc7 -> :sswitch_2847
        -0x6d3aed62 -> :sswitch_283b
        -0x6c3ef218 -> :sswitch_282f
        -0x6b87f3a4 -> :sswitch_2823
        -0x6b0d04bb -> :sswitch_2817
        -0x68fc4edc -> :sswitch_280b
        -0x6800ce02 -> :sswitch_27ff
        -0x67c64302 -> :sswitch_27f3
        -0x678e5e6f -> :sswitch_27e7
        -0x6435a632 -> :sswitch_27db
        -0x63debd06 -> :sswitch_27cf
        -0x6398c2a7 -> :sswitch_27c3
        -0x633f070e -> :sswitch_27b7
        -0x621cf3a6 -> :sswitch_27ab
        -0x6138e9bf -> :sswitch_279f
        -0x609fbc20 -> :sswitch_2793
        -0x5eb347c4 -> :sswitch_2787
        -0x5e0e26e1 -> :sswitch_277b
        -0x5d7e84a0 -> :sswitch_276f
        -0x5987ae24 -> :sswitch_2763
        -0x58532063 -> :sswitch_2757
        -0x571b02b2 -> :sswitch_274b
        -0x56199bf2 -> :sswitch_273f
        -0x54fabf9a -> :sswitch_2733
        -0x54bdba39 -> :sswitch_2727
        -0x52989325 -> :sswitch_271b
        -0x52522c04 -> :sswitch_270f
        -0x4f23401e -> :sswitch_2703
        -0x4e08071f -> :sswitch_26f7
        -0x4a9f3965 -> :sswitch_26eb
        -0x4882972b -> :sswitch_26df
        -0x47fb9637 -> :sswitch_26d3
        -0x46498908 -> :sswitch_26c7
        -0x431ec2ac -> :sswitch_26bb
        -0x41f50c37 -> :sswitch_26af
        -0x4147ccbc -> :sswitch_26a3
        -0x4005cf94 -> :sswitch_2697
        -0x38bd57d1 -> :sswitch_268b
        -0x388be700 -> :sswitch_267f
        -0x37a8d461 -> :sswitch_2673
        -0x35f45fb9 -> :sswitch_2667
        -0x341a96a0 -> :sswitch_265b
        -0x29b7efdb -> :sswitch_264f
        -0x28353d46 -> :sswitch_2643
        -0x281101b4 -> :sswitch_2637
        -0x24a20419 -> :sswitch_262b
        -0x23574c19 -> :sswitch_261f
        -0x227f3cb2 -> :sswitch_2613
        -0x22773f9a -> :sswitch_2607
        -0x2275a928 -> :sswitch_25fb
        -0x1cccc41a -> :sswitch_25ef
        -0x1b9f6d8c -> :sswitch_25e3
        -0x1a9ba844 -> :sswitch_25d7
        -0x171af9d5 -> :sswitch_25cb
        -0x15f57a45 -> :sswitch_25bf
        -0x1519eda5 -> :sswitch_25b3
        -0x15124aa5 -> :sswitch_25a7
        -0x14ea3e65 -> :sswitch_259b
        -0x12ae6962 -> :sswitch_258f
        -0xe9159eb -> :sswitch_2583
        -0xe5d0dd8 -> :sswitch_2577
        -0xe5d0dd7 -> :sswitch_256b
        -0xe37e40d -> :sswitch_255f
        -0xc56af0f -> :sswitch_2553
        -0xb4937e6 -> :sswitch_2547
        -0x2da9652 -> :sswitch_253b
        0xc28 -> :sswitch_252f
        0x308060 -> :sswitch_2524
        0x337a8b -> :sswitch_2519
        0xb33884 -> :sswitch_250d
        0x2c8d4b4 -> :sswitch_2501
        0x58a9254 -> :sswitch_24f5
        0x802dd38 -> :sswitch_24e9
        0x8302beb -> :sswitch_24dd
        0x900b9e1 -> :sswitch_24d1
        0x922aa48 -> :sswitch_24c5
        0x9b14391 -> :sswitch_24b9
        0x9bb8292 -> :sswitch_24ad
        0xb344e22 -> :sswitch_24a1
        0xcc07bab -> :sswitch_2495
        0xdde0dba -> :sswitch_2489
        0xf832138 -> :sswitch_247d
        0x10267afd -> :sswitch_2472
        0x1033950c -> :sswitch_2466
        0x11dc7643 -> :sswitch_245a
        0x131077da -> :sswitch_244f
        0x146c67d8 -> :sswitch_2443
        0x14875b3b -> :sswitch_2437
        0x1882acaf -> :sswitch_242b
        0x18b203b0 -> :sswitch_241f
        0x19c50d99 -> :sswitch_2413
        0x1a0131de -> :sswitch_2407
        0x1b9b38bb -> :sswitch_23fb
        0x1be101fb -> :sswitch_23ef
        0x1c265e1a -> :sswitch_23e3
        0x1cddd17a -> :sswitch_23d7
        0x1e7e6242 -> :sswitch_23cb
        0x2023c1c8 -> :sswitch_23bf
        0x2033e32e -> :sswitch_23b3
        0x240ac90a -> :sswitch_23a7
        0x250f3c15 -> :sswitch_239b
        0x25f3272b -> :sswitch_238f
        0x26629c6a -> :sswitch_2383
        0x29f7c8a4 -> :sswitch_2377
        0x2a4fd790 -> :sswitch_236b
        0x2c30acbe -> :sswitch_235f
        0x2cb65b18 -> :sswitch_2353
        0x2cef1114 -> :sswitch_2347
        0x2e0903df -> :sswitch_233b
        0x2e2968ce -> :sswitch_232f
        0x2f6bb47d -> :sswitch_2323
        0x34257158 -> :sswitch_2317
        0x35236c95 -> :sswitch_230b
        0x353cd68e -> :sswitch_22ff
        0x36d6a999 -> :sswitch_22f3
        0x376638e1 -> :sswitch_22e7
        0x385f371f -> :sswitch_22dc
        0x3b3fb05a -> :sswitch_22d0
        0x3c5642bd -> :sswitch_22c4
        0x3e39dd8f -> :sswitch_22b8
        0x3ebdf865 -> :sswitch_22ac
        0x42c301ca -> :sswitch_22a0
        0x4431cb31 -> :sswitch_2294
        0x4467092a -> :sswitch_2288
        0x44eedb79 -> :sswitch_227c
        0x48ef10ef -> :sswitch_2270
        0x49685197 -> :sswitch_2264
        0x4993c751 -> :sswitch_2258
        0x49dbf74a -> :sswitch_224c
        0x4a65267c -> :sswitch_2240
        0x4b870162 -> :sswitch_2234
        0x4bbf825e -> :sswitch_2228
        0x50d92da5 -> :sswitch_221c
        0x51f725d1 -> :sswitch_2210
        0x554a0970 -> :sswitch_2204
        0x595633e5 -> :sswitch_21f8
        0x5b1cbee7 -> :sswitch_21ec
        0x5b557650 -> :sswitch_21e0
        0x5b8ce046 -> :sswitch_21d4
        0x5d76a081 -> :sswitch_21c9
        0x5d81aa9e -> :sswitch_21bd
        0x5db010e0 -> :sswitch_21b1
        0x6188d7ff -> :sswitch_21a5
        0x64e97179 -> :sswitch_2199
        0x66f71e5c -> :sswitch_218d
        0x6cb33fbc -> :sswitch_2181
        0x6de09b77 -> :sswitch_2175
        0x6de11e05 -> :sswitch_2169
        0x6e6be614 -> :sswitch_215d
        0x6f907189 -> :sswitch_2151
        0x70002599 -> :sswitch_2145
        0x70c02be5 -> :sswitch_2139
        0x71710264 -> :sswitch_212d
        0x72033c86 -> :sswitch_2121
        0x7277a55a -> :sswitch_2115
        0x73bf1149 -> :sswitch_2109
        0x754a823b -> :sswitch_20fd
        0x75bb16fb -> :sswitch_20f1
        0x76443de9 -> :sswitch_20e5
        0x77835592 -> :sswitch_20d9
        0x78a7604e -> :sswitch_20ce
        0x78fe7038 -> :sswitch_20c2
        0x799a2408 -> :sswitch_20b6
        0x79ebd45b -> :sswitch_20aa
        0x7caf7d50 -> :sswitch_209e
        0x7e6261df -> :sswitch_2092
        0x7ee032ac -> :sswitch_2086
        0x7eef318c -> :sswitch_207a
    .end sparse-switch

    :pswitch_data_4392
    .packed-switch 0x0
        :pswitch_38d4
        :pswitch_38ba
        :pswitch_38a2
        :pswitch_388a
        :pswitch_3872
        :pswitch_385d
        :pswitch_384a
        :pswitch_3837
        :pswitch_3824
        :pswitch_3811
        :pswitch_37fe
        :pswitch_37eb
        :pswitch_37d8
        :pswitch_37c5
        :pswitch_37b2
        :pswitch_379f
        :pswitch_3790
        :pswitch_377e
        :pswitch_376b
        :pswitch_372a
        :pswitch_3717
        :pswitch_3704
        :pswitch_36f1
        :pswitch_36de
        :pswitch_36cb
        :pswitch_36bc
        :pswitch_36aa
        :pswitch_369b
        :pswitch_3689
        :pswitch_367a
        :pswitch_3668
        :pswitch_3659
        :pswitch_3646
        :pswitch_3633
        :pswitch_361d
        :pswitch_3607
        :pswitch_35f8
        :pswitch_35e5
        :pswitch_35d2
        :pswitch_35bf
        :pswitch_35ac
        :pswitch_3599
        :pswitch_358d
        :pswitch_357a
        :pswitch_356e
        :pswitch_353b
        :pswitch_350a
        :pswitch_34d9
        :pswitch_34a8
        :pswitch_3477
        :pswitch_3446
        :pswitch_341e
        :pswitch_33f6
        :pswitch_33ce
        :pswitch_33bf
        :pswitch_33a2
        :pswitch_336f
        :pswitch_335c
        :pswitch_3346
        :pswitch_32f6
        :pswitch_3294
        :pswitch_3237
        :pswitch_321d
        :pswitch_31f6
        :pswitch_31cf
        :pswitch_31b5
        :pswitch_319b
        :pswitch_3181
        :pswitch_316a
        :pswitch_3149
        :pswitch_3128
        :pswitch_310e
        :pswitch_30f4
        :pswitch_30da
        :pswitch_30c0
        :pswitch_30a6
        :pswitch_309b
        :pswitch_308c
        :pswitch_3076
        :pswitch_3060
        :pswitch_304d
        :pswitch_3033
        :pswitch_3020
        :pswitch_300d
        :pswitch_2ffa
        :pswitch_2fe0
        :pswitch_2fcd
        :pswitch_2fba
        :pswitch_2fa7
        :pswitch_2f94
        :pswitch_2f81
        :pswitch_2f67
        :pswitch_2f54
        :pswitch_2f41
        :pswitch_2f2e
        :pswitch_2f14
        :pswitch_2f01
        :pswitch_2eee
        :pswitch_2edb
        :pswitch_2ec8
        :pswitch_2eb5
        :pswitch_2ea2
        :pswitch_2e88
        :pswitch_2e75
        :pswitch_2e62
        :pswitch_2e4f
        :pswitch_2e35
        :pswitch_2e22
        :pswitch_2e0f
        :pswitch_2dfc
        :pswitch_2de2
        :pswitch_2dcf
        :pswitch_2dbc
        :pswitch_2da9
        :pswitch_2d8f
        :pswitch_2d84
        :pswitch_2d71
        :pswitch_2d5e
        :pswitch_2d4b
        :pswitch_2d38
        :pswitch_2d25
        :pswitch_2d12
        :pswitch_2cff
        :pswitch_2cec
        :pswitch_2cd9
        :pswitch_2cc6
        :pswitch_2cb3
        :pswitch_2ca0
        :pswitch_2c8d
        :pswitch_2c7a
        :pswitch_2c67
        :pswitch_2c54
        :pswitch_2c41
        :pswitch_2c2e
        :pswitch_2c1b
        :pswitch_2c08
        :pswitch_2bf5
        :pswitch_2be2
        :pswitch_2bcf
        :pswitch_2bbc
        :pswitch_2ba9
        :pswitch_2b96
        :pswitch_2b83
        :pswitch_2b70
        :pswitch_2b5d
        :pswitch_2b4a
        :pswitch_2b37
        :pswitch_2b24
        :pswitch_2b11
        :pswitch_2afe
        :pswitch_2aeb
        :pswitch_2ad8
        :pswitch_2ac5
        :pswitch_2ab2
        :pswitch_2a9f
        :pswitch_2a8c
        :pswitch_2a79
        :pswitch_2a66
        :pswitch_2a53
        :pswitch_2a40
        :pswitch_2a2d
        :pswitch_2a1a
        :pswitch_2a07
        :pswitch_29f4
        :pswitch_29e1
        :pswitch_29ce
        :pswitch_29bb
        :pswitch_29a8
        :pswitch_2995
        :pswitch_2982
        :pswitch_296f
        :pswitch_295c
        :pswitch_2949
        :pswitch_2936
        :pswitch_2923
        :pswitch_2910
        :pswitch_28fd
        :pswitch_28ea
        :pswitch_28d7
    .end packed-switch

    :sswitch_data_44fc
    .sparse-switch
        -0x6ce6cb18 -> :sswitch_39b9
        -0x6782832a -> :sswitch_39ae
        -0x3c35d594 -> :sswitch_39a3
        -0x2e8430aa -> :sswitch_3998
        -0xc6dd7de -> :sswitch_398d
        -0x385b29c -> :sswitch_3982
        0xd1b -> :sswitch_3977
        0x2efe91 -> :sswitch_396c
        0x5faa95b -> :sswitch_3961
        0x65e6ccc -> :sswitch_3957
        0x6942258 -> :sswitch_394b
        0x1177a334 -> :sswitch_393f
        0x457b73ff -> :sswitch_3933
        0x651d8555 -> :sswitch_3927
        0x7dc860eb -> :sswitch_391b
    .end sparse-switch

    :pswitch_data_453a
    .packed-switch 0x0
        :pswitch_3a66
        :pswitch_3a5b
        :pswitch_3a46
        :pswitch_3a3b
        :pswitch_3a34
        :pswitch_3a2d
        :pswitch_3a26
        :pswitch_3a1e
        :pswitch_3a12
        :pswitch_3a06
        :pswitch_39fa
        :pswitch_39ee
        :pswitch_39e2
        :pswitch_39d6
        :pswitch_39ce
    .end packed-switch
.end method

.method public static loadEventIMG(Ljava/lang/String;)V
    .registers 7
    .param p0, "sName"    # Ljava/lang/String;

    .line 2754
    const-string v0, "game/events/images/"

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->loadedEventIMG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 2755
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v1, :cond_16

    .line 2756
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 2757
    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2761
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2762
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_8a

    .line 2764
    :cond_62
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2767
    :goto_8a
    sput-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->loadedEventIMG:Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_8c} :catch_8d

    .line 2772
    goto :goto_bc

    .line 2768
    :catch_8d
    move-exception v1

    .line 2769
    .local v1, "var2":Ljava/lang/Exception;
    move-object v2, v1

    .line 2770
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "default.png"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v0, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2771
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2775
    .end local v1    # "var2":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_bc
    :goto_bc
    return-void
.end method

.method public static final loadEvents()V
    .registers 14

    .line 780
    const-string v0, ""

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_cc

    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "generateList":Z
    :try_start_b
    const-string v4, "game/events/generate_list.txt"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 784
    .local v4, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v1, v5

    .line 785
    if-eqz v1, :cond_c6

    .line 786
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "game/events/common/"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 787
    .local v5, "files":[Lcom/badlogic/gdx/files/FileHandle;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v7, "game/events/list_common.txt"

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 788
    .local v6, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v6, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 790
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_34
    array-length v8, v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_c7

    const-string v9, ";"

    if-ge v7, v8, :cond_56

    .line 791
    :try_start_39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v7

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 790
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 794
    .end local v7    # "i":I
    :cond_56
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "game/events/siege/"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 795
    .local v7, "files2":[Lcom/badlogic/gdx/files/FileHandle;
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/events/list_siege.txt"

    invoke-interface {v8, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 796
    .local v8, "fileWrite2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 798
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6e
    array-length v11, v7

    if-ge v10, v11, :cond_8e

    .line 799
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v7, v10

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 798
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 802
    .end local v10    # "i":I
    :cond_8e
    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v11, "game/events/global/"

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 803
    .local v10, "files3":[Lcom/badlogic/gdx/files/FileHandle;
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v12, "game/events/list_global.txt"

    invoke-interface {v11, v12}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    .line 804
    .local v11, "fileWrite3":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v11, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 806
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a6
    array-length v12, v10

    if-ge v0, v12, :cond_c6

    .line 807
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v10, v0

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_c3} :catch_c7

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 813
    .end local v0    # "i":I
    .end local v1    # "generateList":Z
    .end local v4    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v6    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "files2":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v8    # "fileWrite2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "files3":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v11    # "fileWrite3":Lcom/badlogic/gdx/files/FileHandle;
    :cond_c6
    goto :goto_cc

    .line 810
    :catch_c7
    move-exception v0

    .line 811
    .local v0, "var9":Ljava/lang/Exception;
    move-object v1, v0

    .line 812
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 816
    .end local v0    # "var9":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_cc
    :goto_cc
    invoke-static {v2}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents(I)V

    .line 817
    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents(I)V

    .line 818
    const/4 v0, 0x2

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents(I)V

    .line 819
    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->loadMissionImages()V

    .line 820
    return-void
.end method

.method public static final loadEvents(I)V
    .registers 15
    .param p0, "eventsType"    # I

    .line 841
    const/4 v0, 0x1

    if-nez p0, :cond_6

    const-string v1, "common/"

    goto :goto_d

    :cond_6
    if-ne p0, v0, :cond_b

    const-string v1, "siege/"

    goto :goto_d

    :cond_b
    const-string v1, "global/"

    .line 842
    .local v1, "sEventsPath":Ljava/lang/String;
    :goto_d
    if-nez p0, :cond_12

    const-string v2, "list_common.txt"

    goto :goto_19

    :cond_12
    if-ne p0, v0, :cond_17

    const-string v2, "list_siege.txt"

    goto :goto_19

    :cond_17
    const-string v2, "list_global.txt"

    .line 850
    .local v2, "sEventsPath_List":Ljava/lang/String;
    :goto_19
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    const-string v4, ";"

    const-string v5, "\\r?\\n"

    const-string v6, "game/events/"

    if-eqz v3, :cond_183

    .line 851
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v3, :cond_87

    .line 853
    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 854
    .local v3, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, "tempSplit":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 857
    .local v7, "i":I
    array-length v8, v4
    :try_end_48
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_29 .. :try_end_48} :catch_82

    .local v8, "iSize":I
    :goto_48
    if-ge v7, v8, :cond_81

    .line 859
    :try_start_4a
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_78

    .line 860
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 861
    .local v9, "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_78} :catch_79
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4a .. :try_end_78} :catch_82

    .line 866
    .end local v9    # "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :cond_78
    goto :goto_7e

    .line 863
    :catch_79
    move-exception v9

    .line 864
    .local v9, "var14":Ljava/lang/Exception;
    move-object v10, v9

    .line 865
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_7b
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7b .. :try_end_7e} :catch_82

    .line 857
    .end local v9    # "var14":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_7e
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 871
    :cond_81
    goto :goto_87

    .line 868
    .end local v3    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "tempSplit":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :catch_82
    move-exception v3

    .line 869
    .local v3, "var16":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    move-object v4, v3

    .line 870
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 874
    .end local v3    # "var16":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_87
    :goto_87
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 875
    .local v3, "files":[Lcom/badlogic/gdx/files/FileHandle;
    move-object v4, v3

    .line 876
    .local v4, "var19":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v7, v3

    .line 878
    .restart local v7    # "i":I
    const/4 v8, 0x0

    .restart local v8    # "iSize":I
    :goto_a5
    if-ge v8, v7, :cond_bc

    .line 879
    aget-object v9, v4, v8

    .line 882
    .local v9, "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_a9
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b4} :catch_b5

    .line 885
    goto :goto_b9

    .line 883
    :catch_b5
    move-exception v10

    .line 884
    .local v10, "var13":Ljava/lang/Exception;
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 878
    .end local v10    # "var13":Ljava/lang/Exception;
    :goto_b9
    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    .line 892
    .end local v9    # "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :cond_bc
    const/4 v7, 0x0

    :goto_bd
    sget v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v7, v9, :cond_132

    .line 893
    sget-boolean v9, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v9, :cond_ed

    .line 894
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    goto :goto_114

    .line 896
    :cond_ed
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 899
    :goto_114
    move-object v9, v3

    .line 900
    .local v9, "var21":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v8, v3

    .line 902
    const/4 v10, 0x0

    .local v10, "var23":I
    :goto_117
    if-ge v10, v8, :cond_12f

    .line 903
    aget-object v11, v9, v10

    .line 906
    .local v11, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_11b
    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_126} :catch_127

    .line 910
    goto :goto_12c

    .line 907
    :catch_127
    move-exception v12

    .line 908
    .local v12, "var12":Ljava/lang/Exception;
    move-object v13, v12

    .line 909
    .local v13, "ex":Ljava/lang/Exception;
    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 902
    .end local v12    # "var12":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/lang/Exception;
    :goto_12c
    add-int/lit8 v10, v10, 0x1

    goto :goto_117

    .line 892
    .end local v11    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_12f
    add-int/lit8 v7, v7, 0x1

    goto :goto_bd

    .line 914
    .end local v9    # "var21":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "var23":I
    :cond_132
    const/4 v6, 0x0

    .end local v7    # "i":I
    .local v6, "i":I
    :goto_133
    sget v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v6, v7, :cond_182

    .line 915
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v10}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/game/events/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 916
    move-object v7, v3

    .line 917
    .local v7, "var21":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v8, v3

    .line 919
    const/4 v9, 0x0

    .local v9, "var23":I
    :goto_167
    if-ge v9, v8, :cond_17f

    .line 920
    aget-object v10, v7, v9

    .line 923
    .local v10, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_16b
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_176} :catch_177

    .line 927
    goto :goto_17c

    .line 924
    :catch_177
    move-exception v11

    .line 925
    .local v11, "var11":Ljava/lang/Exception;
    move-object v12, v11

    .line 926
    .local v12, "ex":Ljava/lang/Exception;
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 919
    .end local v11    # "var11":Ljava/lang/Exception;
    .end local v12    # "ex":Ljava/lang/Exception;
    :goto_17c
    add-int/lit8 v9, v9, 0x1

    goto :goto_167

    .line 914
    .end local v10    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_17f
    add-int/lit8 v6, v6, 0x1

    goto :goto_133

    .line 930
    .end local v3    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "var19":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "var21":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v9    # "var23":I
    :cond_182
    goto :goto_1e1

    .line 932
    .end local v6    # "i":I
    .end local v8    # "iSize":I
    :cond_183
    :try_start_183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 933
    .local v3, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 934
    .local v4, "tempSplit":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 936
    .local v7, "i":I
    array-length v8, v4
    :try_end_1a2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_183 .. :try_end_1a2} :catch_1dc

    .restart local v8    # "iSize":I
    :goto_1a2
    if-ge v7, v8, :cond_1db

    .line 938
    :try_start_1a4
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1d2

    .line 939
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 940
    .local v9, "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1d2} :catch_1d3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1a4 .. :try_end_1d2} :catch_1dc

    .line 945
    .end local v9    # "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1d2
    goto :goto_1d8

    .line 942
    :catch_1d3
    move-exception v9

    .line 943
    .local v9, "var10":Ljava/lang/Exception;
    move-object v10, v9

    .line 944
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_1d5
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1d8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1d5 .. :try_end_1d8} :catch_1dc

    .line 936
    .end local v9    # "var10":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_1d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a2

    .line 950
    :cond_1db
    goto :goto_1e1

    .line 947
    .end local v3    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "tempSplit":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :catch_1dc
    move-exception v3

    .line 948
    .local v3, "var15":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    move-object v4, v3

    .line 949
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 953
    .end local v3    # "var15":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1e1
    if-nez p0, :cond_1ec

    .line 954
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    goto :goto_217

    .line 955
    :cond_1ec
    if-ne p0, v0, :cond_1f7

    .line 956
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    goto :goto_217

    .line 957
    :cond_1f7
    const/4 v3, 0x2

    if-ne p0, v3, :cond_217

    .line 958
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    .line 959
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v4, v0

    const/16 v0, 0xa

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    .line 962
    :cond_217
    :goto_217
    const/4 v0, 0x3

    if-ne p0, v0, :cond_223

    .line 963
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    goto :goto_23a

    .line 964
    :cond_223
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22f

    .line 965
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    goto :goto_23a

    .line 966
    :cond_22f
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23a

    .line 967
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    .line 970
    :cond_23a
    :goto_23a
    return-void
.end method

.method public static final loadEvents_Scenario()V
    .registers 1

    .line 823
    const/4 v0, 0x3

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario(I)V

    .line 824
    const/4 v0, 0x4

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario(I)V

    .line 825
    const/4 v0, 0x5

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario(I)V

    .line 826
    return-void
.end method

.method public static final loadEvents_Scenario(I)V
    .registers 20
    .param p0, "eventsType"    # I

    .line 973
    move/from16 v1, p0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    const-string v0, "common/"

    goto :goto_10

    :cond_9
    if-ne v1, v2, :cond_e

    const-string v0, "siege/"

    goto :goto_10

    :cond_e
    const-string v0, "global/"

    :goto_10
    move-object v4, v0

    .line 974
    .local v4, "sEventsPath":Ljava/lang/String;
    if-ne v1, v3, :cond_16

    const-string v0, "list_common.txt"

    goto :goto_1d

    :cond_16
    if-ne v1, v2, :cond_1b

    const-string v0, "list_siege.txt"

    goto :goto_1d

    :cond_1b
    const-string v0, "list_global.txt"

    :goto_1d
    move-object v5, v0

    .line 982
    .local v5, "sEventsPath_List":Ljava/lang/String;
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    const-string v6, ";"

    const-string v7, "\\r?\\n"

    const-string v8, "map/"

    const-string v9, "/events/"

    const-string v10, "scenarios/"

    if-eqz v0, :cond_264

    .line 983
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_f8

    .line 986
    :try_start_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v11, v0

    .line 988
    .local v11, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 989
    .local v6, "tempSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 991
    .local v0, "i":I
    array-length v12, v6
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_9a} :catch_ef
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_32 .. :try_end_9a} :catch_ed

    move v13, v0

    .end local v0    # "i":I
    .local v12, "iSize":I
    .local v13, "i":I
    :goto_9b
    if-ge v13, v12, :cond_ec

    .line 993
    :try_start_9d
    aget-object v0, v6, v13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v14, v6, v13

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 995
    .local v0, "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_e3} :catch_e4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9d .. :try_end_e3} :catch_ed

    .line 1000
    .end local v0    # "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :cond_e3
    goto :goto_e9

    .line 997
    :catch_e4
    move-exception v0

    .line 998
    .local v0, "var14":Ljava/lang/Exception;
    move-object v14, v0

    .line 999
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_e6
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ef
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e6 .. :try_end_e9} :catch_ed

    .line 991
    .end local v0    # "var14":Ljava/lang/Exception;
    .end local v14    # "ex":Ljava/lang/Exception;
    :goto_e9
    add-int/lit8 v13, v13, 0x1

    goto :goto_9b

    .line 1005
    .end local v6    # "tempSplit":[Ljava/lang/String;
    .end local v11    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "iSize":I
    .end local v13    # "i":I
    :cond_ec
    goto :goto_f3

    .line 1006
    :catch_ed
    move-exception v0

    goto :goto_f4

    .line 1003
    :catch_ef
    move-exception v0

    .line 1004
    .local v0, "var17":Ljava/lang/Exception;
    :try_start_f0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_f3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_f0 .. :try_end_f3} :catch_ed

    .line 1009
    .end local v0    # "var17":Ljava/lang/Exception;
    :goto_f3
    goto :goto_f8

    .line 1007
    .local v0, "var18":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_f4
    move-object v6, v0

    .line 1008
    .local v6, "ex":Ljava/lang/Exception;
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1012
    .end local v0    # "var18":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_f8
    :goto_f8
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v11, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 1013
    .local v6, "files":[Lcom/badlogic/gdx/files/FileHandle;
    move-object v11, v6

    .line 1014
    .local v11, "var22":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v12, v6

    .line 1016
    .local v12, "i":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "iSize":I
    :goto_12f
    if-ge v13, v12, :cond_146

    .line 1017
    aget-object v14, v11, v13

    .line 1020
    .local v14, "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_133
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13e} :catch_13f

    .line 1023
    goto :goto_143

    .line 1021
    :catch_13f
    move-exception v0

    .line 1022
    .local v0, "var13":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1016
    .end local v0    # "var13":Ljava/lang/Exception;
    :goto_143
    add-int/lit8 v13, v13, 0x1

    goto :goto_12f

    .line 1030
    .end local v14    # "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :cond_146
    const/4 v0, 0x0

    move-object/from16 v18, v6

    move v6, v0

    move-object/from16 v0, v18

    .end local v12    # "i":I
    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v6, "i":I
    :goto_14c
    sget v12, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v6, v12, :cond_1f7

    .line 1031
    sget-boolean v12, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v12, :cond_195

    .line 1032
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v12, v0

    goto :goto_1d5

    .line 1034
    :cond_195
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v12, v0

    .line 1037
    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v12, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_1d5
    move-object v14, v12

    .line 1038
    .local v14, "var24":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v13, v12

    .line 1040
    const/4 v0, 0x0

    move v15, v0

    .local v15, "var26":I
    :goto_1d9
    if-ge v15, v13, :cond_1f2

    .line 1041
    aget-object v16, v14, v15

    .line 1044
    .local v16, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_1dd
    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1e8} :catch_1e9

    .line 1048
    goto :goto_1ef

    .line 1045
    :catch_1e9
    move-exception v0

    .line 1046
    .local v0, "var12":Ljava/lang/Exception;
    move-object/from16 v17, v0

    .line 1047
    .local v17, "ex":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1040
    .end local v0    # "var12":Ljava/lang/Exception;
    .end local v17    # "ex":Ljava/lang/Exception;
    :goto_1ef
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d9

    .line 1030
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1f2
    add-int/lit8 v6, v6, 0x1

    move-object v0, v12

    goto/16 :goto_14c

    .line 1052
    .end local v12    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v14    # "var24":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v15    # "var26":I
    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_1f7
    const/4 v6, 0x0

    :goto_1f8
    sget v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v6, v8, :cond_262

    .line 1053
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v14}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/map/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 1054
    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v8, "files":[Lcom/badlogic/gdx/files/FileHandle;
    move-object v12, v8

    .line 1055
    .local v12, "var24":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v13, v8

    .line 1057
    const/4 v0, 0x0

    move v14, v0

    .local v14, "var26":I
    :goto_245
    if-ge v14, v13, :cond_25e

    .line 1058
    aget-object v15, v12, v14

    .line 1061
    .local v15, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_249
    invoke-virtual {v15}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_254} :catch_255

    .line 1065
    goto :goto_25b

    .line 1062
    :catch_255
    move-exception v0

    .line 1063
    .local v0, "var11":Ljava/lang/Exception;
    move-object/from16 v16, v0

    .line 1064
    .local v16, "ex":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1057
    .end local v0    # "var11":Ljava/lang/Exception;
    .end local v16    # "ex":Ljava/lang/Exception;
    :goto_25b
    add-int/lit8 v14, v14, 0x1

    goto :goto_245

    .line 1052
    .end local v15    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_25e
    add-int/lit8 v6, v6, 0x1

    move-object v0, v8

    goto :goto_1f8

    .line 1068
    .end local v8    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v11    # "var22":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "var24":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v14    # "var26":I
    :cond_262
    goto/16 :goto_32a

    .line 1071
    .end local v6    # "i":I
    .end local v13    # "iSize":I
    :cond_264
    :try_start_264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_31e

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v11, v0

    .line 1073
    .local v11, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1074
    .local v6, "tempSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1076
    .local v0, "i":I
    array-length v12, v6
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_2cc} :catch_321
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_264 .. :try_end_2cc} :catch_31f

    move v13, v0

    .end local v0    # "i":I
    .local v12, "iSize":I
    .local v13, "i":I
    :goto_2cd
    if-ge v13, v12, :cond_31e

    .line 1078
    :try_start_2cf
    aget-object v0, v6, v13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_315

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v14, v6, v13

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1080
    .local v0, "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_315} :catch_316
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2cf .. :try_end_315} :catch_31f

    .line 1085
    .end local v0    # "tempFileEvent":Lcom/badlogic/gdx/files/FileHandle;
    :cond_315
    goto :goto_31b

    .line 1082
    :catch_316
    move-exception v0

    .line 1083
    .local v0, "var10":Ljava/lang/Exception;
    move-object v14, v0

    .line 1084
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_318
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_31b} :catch_321
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_318 .. :try_end_31b} :catch_31f

    .line 1076
    .end local v0    # "var10":Ljava/lang/Exception;
    .end local v14    # "ex":Ljava/lang/Exception;
    :goto_31b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2cd

    .line 1090
    .end local v6    # "tempSplit":[Ljava/lang/String;
    .end local v11    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "iSize":I
    .end local v13    # "i":I
    :cond_31e
    goto :goto_325

    .line 1091
    :catch_31f
    move-exception v0

    goto :goto_326

    .line 1088
    :catch_321
    move-exception v0

    .line 1089
    .local v0, "var15":Ljava/lang/Exception;
    :try_start_322
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_325
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_322 .. :try_end_325} :catch_31f

    .line 1094
    .end local v0    # "var15":Ljava/lang/Exception;
    :goto_325
    goto :goto_32a

    .line 1092
    .local v0, "var16":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_326
    move-object v6, v0

    .line 1093
    .local v6, "ex":Ljava/lang/Exception;
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1097
    .end local v0    # "var16":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_32a
    if-nez v1, :cond_335

    .line 1098
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    goto :goto_361

    .line 1099
    :cond_335
    const/4 v0, 0x1

    if-ne v1, v0, :cond_341

    .line 1100
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    goto :goto_361

    .line 1101
    :cond_341
    const/4 v6, 0x2

    if-ne v1, v6, :cond_361

    .line 1102
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sput v6, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    .line 1103
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    sget v8, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v7, v0

    const/16 v0, 0xa

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    .line 1106
    :cond_361
    :goto_361
    if-ne v1, v3, :cond_36c

    .line 1107
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    goto :goto_382

    .line 1108
    :cond_36c
    if-ne v1, v2, :cond_377

    .line 1109
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    goto :goto_382

    .line 1110
    :cond_377
    const/4 v0, 0x5

    if-ne v1, v0, :cond_382

    .line 1111
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    .line 1114
    :cond_382
    :goto_382
    return-void
.end method

.method public static loadMissionImages()V
    .registers 10

    .line 2736
    const-string v0, ".png"

    const-string v1, "game/events/imagesMissions/"

    :try_start_4
    const-string v2, "game/events/imagesMissions/numOfImages.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 2737
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2739
    .local v3, "numOfImages":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_9f

    .line 2740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 2741
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 2743
    :cond_6c
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9b} :catch_a0

    .line 2739
    :goto_9b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 2749
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "numOfImages":I
    .end local v4    # "i":I
    :cond_9f
    goto :goto_a5

    .line 2746
    :catch_a0
    move-exception v0

    .line 2747
    .local v0, "var3":Ljava/lang/Exception;
    move-object v1, v0

    .line 2748
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2751
    .end local v0    # "var3":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_a5
    return-void
.end method

.method public static final runEvent(I)V
    .registers 11
    .param p0, "runID"    # I

    .line 311
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15e

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    if-ge v0, v2, :cond_15e

    .line 313
    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 314
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_154

    .line 315
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_150

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_53

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_150

    :cond_53
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_150

    .line 316
    invoke-static {v2}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 317
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_a2

    .line 318
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-static {v3, v2}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V

    .line 319
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 320
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_150

    .line 331
    :cond_a2
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_150

    .line 332
    const/4 v3, 0x0

    .line 334
    .local v3, "score":I
    const/4 v4, 0x0

    .local v4, "takeID":I
    :goto_b4
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_dc

    .line 335
    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 338
    :cond_dc
    const/4 v4, 0x0

    .line 339
    if-lez v3, :cond_12a

    .line 340
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move v3, v5

    .line 341
    const/4 v5, 0x0

    .line 343
    .local v5, "a":I
    const/4 v6, 0x0

    .local v6, "currentScore":I
    :goto_e8
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_12a

    .line 344
    int-to-float v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_113

    .line 345
    move v4, v5

    .line 346
    goto :goto_12a

    .line 348
    :cond_113
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_e8

    .line 352
    .end local v5    # "a":I
    .end local v6    # "currentScore":I
    :cond_12a
    :goto_12a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 353
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 314
    .end local v3    # "score":I
    .end local v4    # "takeID":I
    :cond_150
    :goto_150
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 358
    :cond_154
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    return-void

    .line 312
    .end local v2    # "j":I
    :cond_15a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 364
    .end local v0    # "i":I
    :cond_15e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_15f
    sget v2, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    if-ge v0, v2, :cond_2b6

    .line 365
    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 366
    const/4 v2, 0x1

    .restart local v2    # "j":I
    :goto_17a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_2ac

    .line 367
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_2a8

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_1ac

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a8

    :cond_1ac
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_2a8

    .line 368
    invoke-static {v2}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 369
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_1fa

    .line 370
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-static {v3, v2}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V

    .line 371
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v3, v1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 372
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$4;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$4;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_2a8

    .line 383
    :cond_1fa
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a8

    .line 384
    const/4 v3, 0x0

    .line 386
    .restart local v3    # "score":I
    const/4 v4, 0x0

    .restart local v4    # "takeID":I
    :goto_20c
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_234

    .line 387
    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_20c

    .line 390
    :cond_234
    const/4 v4, 0x0

    .line 391
    if-lez v3, :cond_282

    .line 392
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move v3, v5

    .line 393
    const/4 v5, 0x0

    .line 395
    .restart local v5    # "a":I
    const/4 v6, 0x0

    .restart local v6    # "currentScore":I
    :goto_240
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_282

    .line 396
    int-to-float v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_26b

    .line 397
    move v4, v5

    .line 398
    goto :goto_282

    .line 400
    :cond_26b
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_240

    .line 404
    .end local v5    # "a":I
    .end local v6    # "currentScore":I
    :cond_282
    :goto_282
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 405
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 366
    .end local v3    # "score":I
    .end local v4    # "takeID":I
    :cond_2a8
    :goto_2a8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17a

    .line 410
    :cond_2ac
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b1} :catch_2b7

    .line 411
    return-void

    .line 364
    .end local v2    # "j":I
    :cond_2b2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15f

    .line 417
    .end local v0    # "i":I
    :cond_2b6
    goto :goto_2bc

    .line 414
    :catch_2b7
    move-exception v0

    .line 415
    .local v0, "var7":Ljava/lang/Exception;
    move-object v1, v0

    .line 416
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 419
    .end local v0    # "var7":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2bc
    return-void
.end method

.method public static final runEvents(I)V
    .registers 11
    .param p0, "turnID"    # I

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 180
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_18

    .line 181
    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent(I)V

    .line 180
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 185
    .end local v0    # "i":I
    :cond_18
    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents_ExactDay()V

    .line 193
    :try_start_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I

    rem-int v0, p0, v0

    .restart local v0    # "i":I
    :goto_21
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a5

    .line 194
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget v1, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    rem-int/2addr v1, v3

    .local v1, "j":I
    :goto_35
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_176

    .line 195
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_16f

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_67

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16f

    :cond_67
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    if-eqz v3, :cond_16f

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 196
    invoke-static {v1}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 197
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_c1

    .line 198
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v3, v2, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 199
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-static {v3, v1}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V

    .line 200
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_16f

    .line 211
    :cond_c1
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16f

    .line 212
    const/4 v3, 0x0

    .line 214
    .local v3, "score":I
    const/4 v4, 0x0

    .local v4, "takeID":I
    :goto_d3
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_fb

    .line 215
    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    .line 218
    :cond_fb
    const/4 v4, 0x0

    .line 219
    if-lez v3, :cond_149

    .line 220
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move v3, v5

    .line 221
    const/4 v5, 0x0

    .line 223
    .local v5, "a":I
    const/4 v6, 0x0

    .local v6, "currentScore":I
    :goto_107
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_149

    .line 224
    int-to-float v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_132

    .line 225
    move v4, v5

    .line 226
    goto :goto_149

    .line 228
    :cond_132
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 223
    add-int/lit8 v5, v5, 0x1

    goto :goto_107

    .line 232
    .end local v5    # "a":I
    .end local v6    # "currentScore":I
    :cond_149
    :goto_149
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 233
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 194
    .end local v3    # "score":I
    .end local v4    # "takeID":I
    :cond_16f
    :goto_16f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    add-int/2addr v1, v3

    goto/16 :goto_35

    .line 238
    :cond_176
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget v4, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    .line 239
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget v3, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    if-lt v3, v4, :cond_19e

    .line 240
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iput v2, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    .line 193
    :cond_19e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I

    add-int/2addr v0, v2

    goto/16 :goto_21

    .line 244
    .end local v1    # "j":I
    :cond_1a5
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    if-eqz v1, :cond_334

    .line 245
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I

    rem-int v1, p0, v1

    move v0, v1

    :goto_1b0
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    if-ge v0, v1, :cond_334

    .line 246
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget v1, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    rem-int/2addr v1, v3

    .restart local v1    # "j":I
    :goto_1c3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_305

    .line 248
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_2fe

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_1f5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2fe

    :cond_1f5
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    if-eqz v3, :cond_2fe

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_2fe

    .line 249
    invoke-static {v1}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 250
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_250

    .line 251
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 252
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-static {v3, v1}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V

    .line 253
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_2fe

    .line 264
    :cond_250
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2fe

    .line 265
    const/4 v3, 0x0

    .line 267
    .restart local v3    # "score":I
    const/4 v4, 0x0

    .restart local v4    # "takeID":I
    :goto_262
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_28a

    .line 268
    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_262

    .line 271
    :cond_28a
    const/4 v4, 0x0

    .line 272
    if-lez v3, :cond_2d8

    .line 273
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move v3, v5

    .line 274
    const/4 v5, 0x0

    .line 276
    .restart local v5    # "a":I
    const/4 v6, 0x0

    .restart local v6    # "currentScore":I
    :goto_296
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2d8

    .line 277
    int-to-float v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2c1

    .line 278
    move v4, v5

    .line 279
    goto :goto_2d8

    .line 281
    :cond_2c1
    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 276
    add-int/lit8 v5, v5, 0x1

    goto :goto_296

    .line 285
    .end local v5    # "a":I
    .end local v6    # "currentScore":I
    :cond_2d8
    :goto_2d8
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 286
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 246
    .end local v3    # "score":I
    .end local v4    # "takeID":I
    :cond_2fe
    :goto_2fe
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    add-int/2addr v1, v3

    goto/16 :goto_1c3

    .line 291
    :cond_305
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget v4, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    .line 292
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget v3, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    if-lt v3, v4, :cond_32d

    .line 293
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iput v2, v3, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    .line 245
    :cond_32d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I
    :try_end_331
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_331} :catch_335

    add-int/2addr v0, v3

    goto/16 :goto_1b0

    .line 299
    .end local v1    # "j":I
    :cond_334
    goto :goto_339

    .line 297
    .end local v0    # "i":I
    :catch_335
    move-exception v0

    .line 298
    .local v0, "var7":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 301
    .end local v0    # "var7":Ljava/lang/Exception;
    :goto_339
    return-void
.end method

.method public static final runEvents_ExactDay()V
    .registers 11

    .line 429
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_215

    .line 430
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "z":I
    :goto_11
    if-ltz v0, :cond_215

    .line 431
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-gt v2, v3, :cond_67

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v2, v3, :cond_3d

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-gt v2, v3, :cond_67

    :cond_3d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v2, v3, :cond_211

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-lt v2, v3, :cond_211

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->day:I

    if-lt v2, v3, :cond_211

    .line 432
    :cond_67
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_68
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_20c

    .line 433
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_208

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_ae

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_208

    :cond_ae
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_208

    .line 434
    invoke-static {v2}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 435
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_12e

    .line 436
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-static {v3, v2}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V

    .line 437
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-virtual {v3, v1, v4, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 438
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$5;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/events/EventsManager$5;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_208

    .line 449
    :cond_12e
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_208

    .line 450
    const/4 v3, 0x0

    .line 452
    .local v3, "score":I
    const/4 v4, 0x0

    .local v4, "takeID":I
    :goto_14a
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_186

    .line 453
    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 452
    add-int/lit8 v4, v4, 0x1

    goto :goto_14a

    .line 456
    :cond_186
    const/4 v4, 0x0

    .line 457
    if-lez v3, :cond_1ce

    .line 458
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move v3, v5

    .line 459
    const/4 v5, 0x0

    .line 461
    .local v5, "a":I
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    .line 462
    .local v6, "event":Laoc/kingdoms/lukasz/events/Event;
    const/4 v7, 0x0

    .local v7, "currentScore":I
    :goto_1a4
    iget-object v8, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1ce

    .line 463
    int-to-float v8, v3

    iget-object v9, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/EventOption;

    iget v9, v9, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v10, v7

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1bf

    .line 464
    move v4, v5

    .line 465
    goto :goto_1ce

    .line 467
    :cond_1bf
    iget-object v8, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 462
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a4

    .line 471
    .end local v5    # "a":I
    .end local v6    # "event":Laoc/kingdoms/lukasz/events/Event;
    .end local v7    # "currentScore":I
    :cond_1ce
    :goto_1ce
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 472
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 432
    .end local v3    # "score":I
    .end local v4    # "takeID":I
    :cond_208
    :goto_208
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_68

    .line 477
    :cond_20c
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    .end local v2    # "j":I
    :cond_211
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_11

    .line 482
    .end local v0    # "z":I
    :cond_215
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42a

    .line 483
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "z":I
    :goto_225
    if-ltz v0, :cond_42a

    .line 484
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-gt v2, v3, :cond_27b

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v2, v3, :cond_251

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-gt v2, v3, :cond_27b

    :cond_251
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v2, v3, :cond_426

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-lt v2, v3, :cond_426

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->day:I

    if-lt v2, v3, :cond_426

    .line 485
    :cond_27b
    const/4 v2, 0x1

    .restart local v2    # "j":I
    :goto_27c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_421

    .line 486
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_41d

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_2c2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41d

    :cond_2c2
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_41d

    .line 487
    invoke-static {v2}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 488
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_343

    .line 489
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-static {v3, v2}, Lteam/rainfall/rfEvent/rfEvent;->format(Laoc/kingdoms/lukasz/events/Event;I)V

    .line 490
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 491
    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/events/EventsManager$6;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_41d

    .line 502
    :cond_343
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41d

    .line 503
    const/4 v3, 0x0

    .line 505
    .restart local v3    # "score":I
    const/4 v4, 0x0

    .restart local v4    # "takeID":I
    :goto_35f
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_39b

    .line 506
    int-to-float v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 505
    add-int/lit8 v4, v4, 0x1

    goto :goto_35f

    .line 509
    :cond_39b
    const/4 v4, 0x0

    .line 510
    if-lez v3, :cond_3e3

    .line 511
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move v3, v5

    .line 512
    const/4 v5, 0x0

    .line 513
    .restart local v5    # "a":I
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    .line 514
    .restart local v6    # "event":Laoc/kingdoms/lukasz/events/Event;
    const/4 v7, 0x0

    .restart local v7    # "currentScore":I
    :goto_3b9
    iget-object v8, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3e3

    .line 515
    int-to-float v8, v3

    iget-object v9, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/EventOption;

    iget v9, v9, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v10, v7

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3d4

    .line 516
    move v4, v5

    .line 517
    goto :goto_3e3

    .line 519
    :cond_3d4
    iget-object v8, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 514
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b9

    .line 523
    .end local v5    # "a":I
    .end local v6    # "event":Laoc/kingdoms/lukasz/events/Event;
    .end local v7    # "currentScore":I
    :cond_3e3
    :goto_3e3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 524
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 485
    .end local v3    # "score":I
    .end local v4    # "takeID":I
    :cond_41d
    :goto_41d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27c

    .line 529
    :cond_421
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_426
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_426} :catch_42b

    .line 483
    .end local v2    # "j":I
    :cond_426
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_225

    .line 536
    .end local v0    # "z":I
    :cond_42a
    goto :goto_430

    .line 533
    :catch_42b
    move-exception v0

    .line 534
    .local v0, "var6":Ljava/lang/Exception;
    move-object v1, v0

    .line 535
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 538
    .end local v0    # "var6":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_430
    return-void
.end method

.method public static final runEvents_Global(I)V
    .registers 9
    .param p0, "turnID"    # I

    .line 647
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    rem-int v0, p0, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_27f

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_140

    .line 649
    :try_start_b
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    if-ge v0, v4, :cond_12d

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v0, :cond_33

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12d

    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 650
    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 651
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 652
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS:Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_57} :catch_12e

    xor-int/2addr v0, v2

    .line 655
    .local v0, "updateMenu":Z
    if-nez v0, :cond_b7

    .line 656
    if-nez v0, :cond_b5

    :try_start_5c
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue1()I

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->hasResource(II)Z

    move-result v4
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ae} :catch_b3

    if-eqz v4, :cond_b1

    goto :goto_b5

    :cond_b1
    const/4 v4, 0x0

    goto :goto_b6

    .line 658
    :catch_b3
    move-exception v4

    goto :goto_b8

    .line 656
    :cond_b5
    :goto_b5
    const/4 v4, 0x1

    :goto_b6
    move v0, v4

    .line 659
    :cond_b7
    nop

    .line 661
    :goto_b8
    :try_start_b8
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome()V

    .line 662
    if-eqz v0, :cond_106

    .line 663
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    div-int/2addr v6, v1

    neg-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 664
    new-instance v4, Laoc/kingdoms/lukasz/events/EventsManager$9;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/EventsManager$9;-><init>(Ljava/lang/String;I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_12d

    .line 674
    :cond_106
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12d

    .line 675
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_12d} :catch_12e

    .line 681
    .end local v0    # "updateMenu":Z
    :cond_12d
    :goto_12d
    goto :goto_133

    .line 678
    :catch_12e
    move-exception v0

    .line 679
    .local v0, "var6":Ljava/lang/Exception;
    move-object v4, v0

    .line 680
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_130
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 683
    .end local v0    # "var6":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_133
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    .line 684
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    if-lt v0, v4, :cond_140

    .line 685
    sput v3, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    .line 689
    :cond_140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    rem-int v0, p0, v0
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_146} :catch_27f

    if-nez v0, :cond_27e

    .line 691
    :try_start_148
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    if-ge v0, v4, :cond_26b

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v0, :cond_170

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26b

    :cond_170
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 692
    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 693
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 694
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS:Z
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_195} :catch_26c

    xor-int/2addr v0, v2

    .line 697
    .local v0, "updateMenu":Z
    if-nez v0, :cond_1f5

    .line 698
    if-nez v0, :cond_1f3

    :try_start_19a
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ef

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ef

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue1()I

    move-result v6

    invoke-static {v4, v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->hasResource(II)Z

    move-result v4
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1ec} :catch_1f1

    if-eqz v4, :cond_1ef

    goto :goto_1f3

    :cond_1ef
    const/4 v4, 0x0

    goto :goto_1f4

    .line 700
    :catch_1f1
    move-exception v4

    goto :goto_1f6

    .line 698
    :cond_1f3
    :goto_1f3
    const/4 v4, 0x1

    :goto_1f4
    move v0, v4

    .line 701
    :cond_1f5
    nop

    .line 703
    :goto_1f6
    :try_start_1f6
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome()V

    .line 704
    if-eqz v0, :cond_244

    .line 705
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    div-int/2addr v7, v1

    neg-int v1, v7

    invoke-virtual {v4, v5, v6, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 706
    new-instance v1, Laoc/kingdoms/lukasz/events/EventsManager$10;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-direct {v1, v4, v5}, Laoc/kingdoms/lukasz/events/EventsManager$10;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_26b

    .line 716
    :cond_244
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26b

    .line 717
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_26b} :catch_26c

    .line 723
    .end local v0    # "updateMenu":Z
    :cond_26b
    :goto_26b
    goto :goto_271

    .line 720
    :catch_26c
    move-exception v0

    .line 721
    .local v0, "var4":Ljava/lang/Exception;
    move-object v1, v0

    .line 722
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_26e
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 725
    .end local v0    # "var4":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_271
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    .line 726
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    if-lt v0, v1, :cond_27e

    .line 727
    sput v3, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_27e} :catch_27f

    .line 733
    :cond_27e
    goto :goto_284

    .line 730
    :catch_27f
    move-exception v0

    .line 731
    .local v0, "var7":Ljava/lang/Exception;
    move-object v1, v0

    .line 732
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 735
    .end local v0    # "var7":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_284
    return-void
.end method

.method public static final runEvents_Siege(II)V
    .registers 12
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_111

    .line 548
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v1, :cond_28

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10d

    :cond_28
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 549
    invoke-static {p0}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 550
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_6c

    .line 551
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 552
    new-instance v1, Laoc/kingdoms/lukasz/events/EventsManager$7;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Laoc/kingdoms/lukasz/events/EventsManager$7;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 562
    goto/16 :goto_111

    .line 565
    :cond_6c
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7e

    .line 566
    goto/16 :goto_111

    .line 569
    :cond_7e
    const/4 v1, 0x0

    .line 571
    .local v1, "score":I
    const/4 v3, 0x0

    .local v3, "takeID":I
    :goto_80
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 572
    int-to-float v4, v1

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 575
    :cond_a8
    const/4 v3, 0x0

    .line 576
    if-lez v1, :cond_e6

    .line 577
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move v1, v4

    .line 578
    const/4 v4, 0x0

    .line 579
    .local v4, "a":I
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    .line 580
    .local v5, "event":Laoc/kingdoms/lukasz/events/Event;
    const/4 v6, 0x0

    .local v6, "currentScore":I
    :goto_bc
    iget-object v7, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_e6

    .line 581
    int-to-float v7, v1

    iget-object v8, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_d7

    .line 582
    move v3, v4

    .line 583
    goto :goto_e6

    .line 585
    :cond_d7
    iget-object v7, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 580
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 589
    .end local v4    # "a":I
    .end local v5    # "event":Laoc/kingdoms/lukasz/events/Event;
    .end local v6    # "currentScore":I
    :cond_e6
    :goto_e6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 590
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    .line 591
    goto :goto_111

    .line 547
    .end local v1    # "score":I
    .end local v3    # "takeID":I
    :cond_10d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 595
    :cond_111
    :goto_111
    const/4 v0, 0x0

    :goto_112
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    if-ge v0, v1, :cond_21b

    .line 596
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v1, :cond_138

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_217

    :cond_138
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v1

    if-eqz v1, :cond_217

    .line 597
    invoke-static {p0}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 598
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_17c

    .line 599
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    .line 600
    new-instance v1, Laoc/kingdoms/lukasz/events/EventsManager$8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Laoc/kingdoms/lukasz/events/EventsManager$8;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_21b

    .line 610
    :cond_17c
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21b

    .line 611
    const/4 v1, 0x0

    .line 613
    .restart local v1    # "score":I
    const/4 v2, 0x0

    .local v2, "takeID":I
    :goto_18e
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b6

    .line 614
    int-to-float v3, v1

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_18e

    .line 617
    :cond_1b6
    const/4 v2, 0x0

    .line 618
    if-lez v1, :cond_1f0

    .line 619
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v1, v3

    .line 620
    const/4 v3, 0x0

    .line 622
    .local v3, "a":I
    const/4 v4, 0x0

    .local v4, "currentScore":I
    :goto_1c2
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1f0

    .line 623
    int-to-float v5, v1

    int-to-float v6, v4

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1ed

    .line 624
    move v2, v3

    .line 625
    goto :goto_1f0

    .line 622
    :cond_1ed
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c2

    .line 630
    .end local v3    # "a":I
    .end local v4    # "currentScore":I
    :cond_1f0
    :goto_1f0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    .line 631
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_216} :catch_21c

    goto :goto_21b

    .line 595
    .end local v1    # "score":I
    .end local v2    # "takeID":I
    :cond_217
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_112

    .line 639
    .end local v0    # "i":I
    :cond_21b
    :goto_21b
    goto :goto_221

    .line 636
    :catch_21c
    move-exception v0

    .line 637
    .local v0, "var7":Ljava/lang/Exception;
    move-object v1, v0

    .line 638
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 641
    .end local v0    # "var7":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_221
    return-void
.end method

.method public static final takeEventDecision(IIII)V
    .registers 6
    .param p0, "iCivID"    # I
    .param p1, "eventType"    # I
    .param p2, "eventID"    # I
    .param p3, "optionID"    # I

    .line 740
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 741
    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    goto :goto_2f

    .line 747
    :catch_f
    move-exception v0

    goto :goto_30

    .line 742
    :cond_11
    const/4 v0, 0x5

    if-ne p1, v0, :cond_20

    .line 743
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    goto :goto_2f

    .line 745
    :cond_20
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_f

    .line 750
    :goto_2f
    goto :goto_34

    .line 748
    .local v0, "var6":Ljava/lang/Exception;
    :goto_30
    move-object v1, v0

    .line 749
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 753
    .end local v0    # "var6":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_34
    :try_start_34
    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_44

    .line 757
    goto :goto_49

    .line 754
    :catch_44
    move-exception v0

    .line 755
    .local v0, "var5":Ljava/lang/Exception;
    move-object v1, v0

    .line 756
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 759
    .end local v0    # "var5":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_49
    return-void
.end method

.method public static final updateRandomProvinceID(I)V
    .registers 5
    .param p0, "iCivID"    # I

    .line 762
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_27

    .line 763
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    goto :goto_8d

    .line 764
    :cond_27
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_52

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne v0, p0, :cond_52

    .line 765
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    goto :goto_8d

    .line 767
    :cond_52
    if-nez p0, :cond_8d

    .line 768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_8d

    .line 769
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    .line 770
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-gez v1, :cond_8a

    .line 771
    return-void

    .line 768
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 777
    .end local v0    # "i":I
    :cond_8d
    :goto_8d
    return-void
.end method
