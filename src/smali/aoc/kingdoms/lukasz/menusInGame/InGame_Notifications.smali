.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Notifications.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static stateVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->lTime:J

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->stateVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 34

    .line 40
    move-object/from16 v14, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 43
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/16 v16, 0x1

    .line 44
    .local v16, "paddingLeft":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 45
    .local v17, "paddingRight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v18

    .line 47
    .local v18, "titleHeight":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v19, v1, v2

    .line 49
    .local v19, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v20, v1, v19

    .line 50
    .local v20, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v21, v1, v2

    .line 52
    .local v21, "menuY":I
    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 53
    .local v22, "buttonYPadding":I
    const/4 v1, 0x0

    .line 54
    .local v1, "buttonY":I
    move/from16 v23, v16

    .line 56
    .local v23, "buttonX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 58
    .local v24, "buttonH":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    if-ge v2, v3, :cond_6f

    .line 59
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, v24, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    sub-int/2addr v3, v4

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    .line 63
    :cond_6f
    const/4 v2, 0x0

    move/from16 v25, v1

    move v13, v2

    .end local v1    # "buttonY":I
    .local v13, "i":I
    .local v25, "buttonY":I
    :goto_73
    :try_start_73
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    if-ge v13, v1, :cond_76f

    .line 64
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_620

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_620

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NO_LONGER_LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v2, :cond_ad

    move/from16 v32, v13

    goto/16 :goto_622

    .line 121
    :cond_ad
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_IMPROVING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_49b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 122
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_DAMAGING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_498

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 123
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NEIGHBOR_OR_RIVAL_AT_WAR:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_495

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 124
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_492

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 125
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_COMPLETED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_48f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 126
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ALLIANCE_EXPIRED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_48c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 127
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LEADER_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_489

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 128
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_486

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 129
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->GENERAL_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v2, :cond_141

    move/from16 v30, v13

    goto/16 :goto_49d

    .line 185
    :cond_141
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_2f4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 186
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->BATTLE_REPORT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_2f4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 187
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_2f4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 188
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SETTLEMENT_ESTABLISHED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_2f4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 189
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ARMY_DESTROYED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_2f4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 190
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->DISEASE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_2f4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    .line 191
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REVOLT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v2, :cond_1b3

    goto/16 :goto_2f4

    .line 247
    :cond_1b3
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7e0

    .line 281
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$12;

    goto/16 :goto_295

    .line 265
    :pswitch_1ce
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide/from16 v26, v5

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    move-object v14, v11

    move-wide/from16 v11, v26

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 279
    goto/16 :goto_769

    .line 249
    :pswitch_234
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$10;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 263
    goto/16 :goto_769

    .line 281
    :goto_295
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    goto/16 :goto_769

    .line 195
    :cond_2f4
    :goto_2f4
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7e8

    .line 229
    move/from16 v29, v13

    .end local v13    # "i":I
    .local v29, "i":I
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$9;

    goto/16 :goto_40b

    .line 213
    .end local v29    # "i":I
    .restart local v13    # "i":I
    :pswitch_311
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$8;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v26

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    move/from16 v28, v13

    .end local v13    # "i":I
    .local v28, "i":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 227
    move/from16 v13, v28

    goto/16 :goto_769

    .line 197
    .end local v28    # "i":I
    .restart local v13    # "i":I
    :pswitch_38c
    move/from16 v28, v13

    .end local v13    # "i":I
    .restart local v28    # "i":I
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v13, v28

    .end local v28    # "i":I
    .restart local v13    # "i":I
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v26

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    move/from16 v29, v13

    .end local v13    # "i":I
    .restart local v29    # "i":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 211
    move/from16 v13, v29

    goto/16 :goto_769

    .line 229
    :goto_40b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v13, v29

    .end local v29    # "i":I
    .restart local v13    # "i":I
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v26

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    move/from16 v30, v13

    .end local v13    # "i":I
    .local v30, "i":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 243
    move/from16 v13, v30

    goto/16 :goto_769

    .line 128
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_486
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 127
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_489
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 126
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_48c
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 125
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_48f
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 124
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_492
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 123
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_495
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 122
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_498
    move/from16 v30, v13

    .end local v13    # "i":I
    .restart local v30    # "i":I
    goto :goto_49d

    .line 121
    .end local v30    # "i":I
    .restart local v13    # "i":I
    :cond_49b
    move/from16 v30, v13

    .line 132
    .end local v13    # "i":I
    .restart local v30    # "i":I
    :goto_49d
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v14, v30

    .end local v30    # "i":I
    .local v14, "i":I
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7f0

    .line 166
    move/from16 v31, v14

    .end local v14    # "i":I
    .local v31, "i":I
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$6;

    goto/16 :goto_5ab

    .line 150
    .end local v31    # "i":I
    .restart local v14    # "i":I
    :pswitch_4bc
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$5;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move/from16 v26, v10

    move v10, v14

    move/from16 v28, v14

    move-object v14, v13

    .end local v14    # "i":I
    .restart local v28    # "i":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 164
    move/from16 v13, v28

    goto/16 :goto_769

    .line 134
    .end local v28    # "i":I
    .restart local v14    # "i":I
    :pswitch_532
    move/from16 v28, v14

    .end local v14    # "i":I
    .restart local v28    # "i":I
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$4;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v13, v28

    .end local v28    # "i":I
    .restart local v13    # "i":I
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move/from16 v26, v10

    move v10, v13

    move/from16 v31, v13

    .end local v13    # "i":I
    .restart local v31    # "i":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 148
    move/from16 v13, v31

    goto/16 :goto_769

    .line 166
    :goto_5ab
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v13, v31

    .end local v31    # "i":I
    .restart local v13    # "i":I
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move/from16 v26, v10

    move v10, v13

    move/from16 v32, v13

    .end local v13    # "i":I
    .local v32, "i":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_619
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_619} :catch_770

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 180
    move/from16 v13, v32

    goto/16 :goto_769

    .line 64
    .end local v32    # "i":I
    .restart local v13    # "i":I
    :cond_620
    move/from16 v32, v13

    .line 66
    .end local v13    # "i":I
    .restart local v32    # "i":I
    :goto_622
    :try_start_622
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;
    :try_end_628
    .catch Ljava/lang/Exception; {:try_start_622 .. :try_end_628} :catch_761

    move/from16 v13, v32

    .end local v32    # "i":I
    .restart local v13    # "i":I
    :try_start_62a
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7f8

    .line 100
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$3;

    goto/16 :goto_700

    .line 84
    :pswitch_63f
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 98
    goto/16 :goto_768

    .line 68
    :pswitch_6a0
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    .line 82
    goto :goto_768

    .line 100
    :goto_700
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v19, v17

    sub-int v7, v1, v16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v25

    move/from16 v8, v24

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_75a
    .catch Ljava/lang/Exception; {:try_start_62a .. :try_end_75a} :catch_75e

    add-int/2addr v1, v2

    add-int v25, v25, v1

    goto :goto_768

    .line 116
    :catch_75e
    move-exception v0

    move-object v1, v0

    goto :goto_765

    .end local v13    # "i":I
    .restart local v32    # "i":I
    :catch_761
    move-exception v0

    move/from16 v13, v32

    move-object v1, v0

    .line 117
    .end local v32    # "i":I
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v13    # "i":I
    :goto_765
    :try_start_765
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_768
    .catch Ljava/lang/Exception; {:try_start_765 .. :try_end_768} :catch_770

    .line 118
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_768
    nop

    .line 63
    :goto_769
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, p0

    goto/16 :goto_73

    .line 301
    .end local v13    # "i":I
    :cond_76f
    goto :goto_775

    .line 299
    :catch_770
    move-exception v0

    move-object v1, v0

    .line 300
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 303
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_775
    const/4 v1, 0x0

    .line 305
    .end local v25    # "buttonY":I
    .local v1, "buttonY":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    move v10, v1

    .end local v1    # "buttonY":I
    .local v3, "iSize":I
    .local v10, "buttonY":I
    :goto_77c
    if-ge v2, v3, :cond_7b4

    .line 306
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    if-ge v10, v1, :cond_7b1

    .line 307
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    move v10, v1

    .line 305
    :cond_7b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_77c

    .line 312
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_7b4
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v24, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    mul-int v11, v1, v2

    .line 316
    .local v11, "menuHeight":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v19

    move v6, v11

    move-object v7, v15

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 318
    const/4 v1, 0x0

    move-object/from16 v2, p0

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->drawScrollPositionAlways2:Z

    .line 320
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getPosY()I

    move-result v1

    const v3, 0xf1b30

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->setMenuPosY(I)V

    .line 321
    return-void

    nop

    :pswitch_data_7e0
    .packed-switch 0x1
        :pswitch_234
        :pswitch_1ce
    .end packed-switch

    :pswitch_data_7e8
    .packed-switch 0x1
        :pswitch_38c
        :pswitch_311
    .end packed-switch

    :pswitch_data_7f0
    .packed-switch 0x1
        :pswitch_532
        :pswitch_4bc
    .end packed-switch

    :pswitch_data_7f8
    .packed-switch 0x1
        :pswitch_6a0
        :pswitch_63f
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 325
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 326
    return-void
.end method

.method public getMenuPosY()I
    .registers 3

    .line 349
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getScrollableY()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 350
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    return v0

    .line 353
    :cond_b
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 359
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .line 338
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 330
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 331
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->lTime:J

    .line 333
    sput-boolean p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->stateVisible:Z

    .line 334
    return-void
.end method
