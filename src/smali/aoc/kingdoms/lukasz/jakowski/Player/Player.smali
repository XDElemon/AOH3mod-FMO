.class public Laoc/kingdoms/lukasz/jakowski/Player/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field public allowAIMove:Z

.field public civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

.field public currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

.field public fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

.field public formableCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;",
            ">;"
        }
    .end annotation
.end field

.field public iActiveEventsSize:I

.field public iBattleReportsSize:I

.field public iCivID:I

.field public iMessagesSize:I

.field public iNotificationsSize:I

.field public iPinnedArmiesSize:I

.field public iPinnedProvincesSize:I

.field public lBattleReports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleReport;",
            ">;"
        }
    .end annotation
.end field

.field public lNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;",
            ">;"
        }
    .end annotation
.end field

.field public peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

.field public playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

.field public playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

.field public playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

.field public playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 33
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    .line 35
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    .line 36
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    .line 37
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->allowAIMove:Z

    .line 45
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    .line 48
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 51
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    .line 57
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    .line 61
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    .line 63
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    .line 64
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    .line 65
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    .line 66
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    .line 75
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    .line 76
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    .line 77
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedProvincesSize:I

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    .line 329
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    return-void
.end method


# virtual methods
.method public final actionPinArmy(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 415
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addPinArmy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 416
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removePinArmy(Ljava/lang/String;)V

    .line 418
    :cond_9
    return-void
.end method

.method public final addActiveEvent(III)V
    .registers 7
    .param p1, "eventType"    # I
    .param p2, "id"    # I
    .param p3, "turnsActive"    # I

    .line 83
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_26

    .line 84
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    if-ne v1, p2, :cond_23

    .line 85
    return-void

    .line 83
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 89
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    add-int/2addr v2, p3

    invoke-direct {v1, p1, p2, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 93
    goto :goto_44

    .line 91
    :catch_40
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public final addBattleReport(Laoc/kingdoms/lukasz/map/battles/BattleReport;)V
    .registers 3
    .param p1, "battleReport"    # Laoc/kingdoms/lukasz/map/battles/BattleReport;

    .line 332
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    .line 334
    return-void
.end method

.method public final addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V
    .registers 4
    .param p1, "nMessage"    # Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    .line 114
    :try_start_0
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    if-ltz v0, :cond_29

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_29

    .line 118
    :cond_11
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    .line 121
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$1;

    const-string v1, "rebuildInGame_MessagesSavePos"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    .line 129
    goto :goto_2e

    .line 115
    :cond_29
    :goto_29
    return-void

    .line 127
    :catch_2a
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    .registers 5
    .param p1, "notification"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    .line 211
    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NEIGHBOR_OR_RIVAL_AT_WAR:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v0, v1, :cond_1d

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    if-ge v0, v1, :cond_1d

    .line 213
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    iget v2, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    if-ne v1, v2, :cond_1a

    .line 214
    return-void

    .line 212
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 219
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    .line 222
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$4;

    const-string v1, "rebuildNotifications"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player$4;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 228
    return-void
.end method

.method public addNotification_Reinforce(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    .registers 9
    .param p1, "notification"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    const-string v2, "rebuildNotifications"

    if-ge v0, v1, :cond_80

    .line 232
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REINFORCE_ARMY_COST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v3, :cond_7d

    .line 233
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    iget v4, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    add-int/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    .line 234
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    .line 235
    .local v1, "reinforceCost":F
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ReinforceCost"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x42c7cccd    # 99.9f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_5a

    const/4 v5, 0x1

    goto :goto_66

    :cond_5a
    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_64

    const/16 v5, 0x64

    goto :goto_66

    :cond_64
    const/16 v5, 0xa

    :goto_66
    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    .line 237
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Player$5;

    invoke-direct {v3, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$5;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 243
    return-void

    .line 231
    .end local v1    # "reinforceCost":F
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "i":I
    :cond_80
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    .line 250
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$6;

    invoke-direct {v0, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$6;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 256
    return-void
.end method

.method public addNotification_Unrest(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    .registers 6
    .param p1, "notification"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    if-ge v1, v2, :cond_19

    .line 262
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_16

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 261
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    .end local v1    # "i":I
    :cond_19
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->NOTIFICATIONS_UNREST_LIMIT:I

    if-lt v0, v1, :cond_20

    .line 268
    return-void

    .line 271
    :cond_20
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    .line 274
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player$7;

    const-string v2, "rebuildNotifications"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$7;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 280
    return-void
.end method

.method public final addPinArmy(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 422
    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_1b

    .line 423
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 424
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 428
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 430
    return v0

    .line 431
    :catch_2d
    move-exception v1

    .line 432
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 435
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final clearBattleReport()V
    .registers 2

    .line 347
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    .line 349
    return-void
.end method

.method public final clearEvents()V
    .registers 2

    .line 408
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    .line 410
    return-void
.end method

.method public clearFormableCivs()V
    .registers 2

    .line 490
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 491
    return-void
.end method

.method public final clearMessages()V
    .registers 2

    .line 204
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    .line 206
    return-void
.end method

.method public final clearNotifications()V
    .registers 2

    .line 322
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    .line 324
    return-void
.end method

.method public final clearPinnedArmy()V
    .registers 2

    .line 454
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    .line 456
    return-void
.end method

.method public final getBattleReportID(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 352
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1a

    .line 353
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 354
    return v0

    .line 352
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 358
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method public getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 155
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_22

    .line 156
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 157
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23

    return-object v1

    .line 155
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 162
    .end local v0    # "i":I
    :cond_22
    goto :goto_27

    .line 160
    :catch_23
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 164
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage_Hover(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 169
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_26

    .line 170
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 171
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->buildElementHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_27

    return-object v1

    .line 169
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 176
    .end local v0    # "i":I
    :cond_26
    goto :goto_2b

    .line 174
    :catch_27
    move-exception v0

    .line 175
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final initPeaceTreaty_Player(Ljava/lang/String;)V
    .registers 5
    .param p1, "nWarKey"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 363
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    .line 364
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    .end local v0    # "i":I
    :cond_17
    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;-><init>(ILjava/lang/String;Z)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    .line 368
    return-void
.end method

.method public isPinned(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 460
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1a

    .line 461
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1b

    if-eqz v2, :cond_17

    .line 462
    return v1

    .line 460
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 467
    .end local v0    # "i":I
    :cond_1a
    goto :goto_1f

    .line 465
    :catch_1b
    move-exception v0

    .line 466
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 469
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public loadFormableCivs()V
    .registers 4

    .line 475
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->clearFormableCivs()V

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 478
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/FormableCivManager;->getFormableCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    move-result-object v1

    .line 480
    .local v1, "formableCiv":Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;
    if-nez v1, :cond_32

    .line 481
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 484
    :cond_32
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v1    # "formableCiv":Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 487
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method public final removeActiveEvent(II)V
    .registers 5
    .param p1, "eventType"    # I
    .param p2, "id"    # I

    .line 98
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_37

    .line 99
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    if-ne v1, p1, :cond_34

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    if-ne v1, p2, :cond_34

    .line 100
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_38

    .line 102
    return-void

    .line 98
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 107
    .end local v0    # "i":I
    :cond_37
    goto :goto_3c

    .line 105
    :catch_38
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 108
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method public final removeMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 134
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_31

    .line 135
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 136
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    .line 139
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player$2;

    const-string v2, "rebuildInGame_MessagesSavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$2;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_32

    .line 145
    return-void

    .line 134
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 150
    .end local v0    # "i":I
    :cond_31
    goto :goto_36

    .line 148
    :catch_32
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method public removeNotification(I)V
    .registers 4
    .param p1, "i"    # I

    .line 284
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$10;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type:[I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    goto :goto_24

    .line 286
    :pswitch_16
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeReport(Ljava/lang/String;)V

    .line 287
    nop

    .line 295
    :goto_24
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    .line 298
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$8;

    const-string v1, "rebuildNotifications"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player$8;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 306
    goto :goto_40

    .line 304
    :catch_3c
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

.method public final removePinArmy(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 441
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2b

    .line 442
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 443
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2c

    .line 445
    return-void

    .line 441
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 450
    .end local v0    # "i":I
    :cond_2b
    goto :goto_30

    .line 448
    :catch_2c
    move-exception v0

    .line 449
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 451
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method public final removeReport(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    if-ge v0, v1, :cond_26

    .line 338
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 339
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 340
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    .line 341
    return-void

    .line 337
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public final updateEvents()V
    .registers 6

    .line 373
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_79

    .line 374
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_76

    .line 375
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    .line 376
    .local v1, "tEventType":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    .line 378
    .local v2, "tID":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 379
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    .line 381
    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-ne v1, v3, :cond_54

    .line 382
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision(III)V

    goto :goto_67

    .line 384
    :cond_54
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_60

    .line 385
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision_Civ(III)V

    goto :goto_67

    .line 388
    :cond_60
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, v1, v2, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->takeEventDecision(IIII)V

    .line 391
    :goto_67
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    .line 393
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Player$9;

    const-string v4, "RebuildInGameRight"

    invoke-direct {v3, p0, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$9;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 373
    .end local v1    # "tEventType":I
    .end local v2    # "tID":I
    :cond_76
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 405
    .end local v0    # "i":I
    :cond_79
    return-void
.end method

.method public final updateMessages()V
    .registers 4

    .line 183
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_39

    .line 184
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->expiresTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_36

    .line 185
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->onRefuse()V

    .line 187
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    .line 190
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player$3;

    const-string v2, "rebuildInGame_MessagesSavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$3;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_3a

    .line 183
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 200
    .end local v0    # "i":I
    :cond_39
    goto :goto_3e

    .line 198
    :catch_3a
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public final updateNotifications()V
    .registers 4

    .line 311
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1f

    .line 312
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->REMOVE_NOTIFICATION_DAYS:I

    if-le v1, v2, :cond_1c

    .line 313
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeNotification(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_20

    .line 311
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 318
    .end local v0    # "i":I
    :cond_1f
    goto :goto_24

    .line 316
    :catch_20
    move-exception v0

    .line 317
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 319
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_24
    return-void
.end method
