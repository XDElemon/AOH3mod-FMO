.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Right.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static outlinerInView:Z

.field public static posY:I

.field public static stateVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->lTime:J

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->outlinerInView:Z

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->stateVisible:Z

    .line 41
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->posY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 35

    .line 43
    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 46
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/16 v25, 0x1

    .line 47
    .local v25, "paddingLeft":I
    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 48
    .local v26, "paddingRight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v27

    .line 50
    .local v27, "titleHeight":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v28, v0, v2

    .line 52
    .local v28, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v29, v0, v28

    .line 53
    .local v29, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v30

    .line 55
    .local v30, "menuY":I
    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 56
    .local v31, "buttonYPadding":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 57
    .local v0, "buttonY":I
    move/from16 v8, v25

    .line 59
    .local v8, "buttonX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 62
    .local v32, "buttonH":I
    const/4 v2, 0x0

    move/from16 v33, v2

    move v2, v0

    move/from16 v0, v33

    .local v0, "i":I
    .local v2, "buttonY":I
    :goto_58
    :try_start_58
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    if-ge v0, v3, :cond_25a

    .line 63
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_f3

    .line 64
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v14, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v4, 0x2

    sub-int v4, v28, v25

    sub-int v19, v4, v26

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget v6, v6, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int v23, v7, v9

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v12 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_242

    .line 81
    :cond_f3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_198

    .line 82
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v14, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v4, 0x2

    sub-int v4, v28, v25

    sub-int v19, v4, v26

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget v6, v6, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int v23, v7, v9

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v12 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_242

    .line 100
    :cond_198
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v4, 0x2

    sub-int v4, v28, v25

    sub-int v19, v4, v26

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int v23, v7, v9

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v12 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_242
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_254} :catch_25b

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_58

    .line 123
    .end local v0    # "i":I
    :cond_25a
    goto :goto_25f

    .line 121
    :catch_25b
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 125
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25f
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->outlinerInView:Z

    if-eqz v0, :cond_472

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_264
    :try_start_264
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v3, :cond_30b

    .line 128
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-le v3, v4, :cond_307

    .line 129
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Progress"

    .line 130
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "%"

    sub-int v4, v28, v26

    sub-int v18, v4, v25

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->spy:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 133
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 134
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v7, v7, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v6

    sub-int v22, v5, v6

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 135
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    const/16 v24, 0x1

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v25

    move/from16 v17, v2

    move/from16 v19, v32

    move/from16 v21, v4

    move/from16 v23, v5

    invoke-direct/range {v12 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V

    .line 129
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_305
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_305} :catch_30c

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 127
    :cond_307
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_264

    .line 148
    .end local v0    # "i":I
    :cond_30b
    goto :goto_310

    .line 146
    :catch_30c
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_311
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    if-ge v0, v3, :cond_3c1

    .line 152
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$5;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 153
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    float-to-int v4, v4

    .line 152
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_String(I)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 154
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sub-int v4, v28, v26

    sub-int v18, v4, v25

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->relationsUp:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 155
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    const/16 v22, 0x1

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v25

    move/from16 v17, v2

    move/from16 v19, v32

    move/from16 v21, v4

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIZ)V

    .line 152
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_311

    .line 191
    .end local v0    # "i":I
    :cond_3c1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3c2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    if-ge v0, v3, :cond_472

    .line 192
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$6;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 193
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    float-to-int v4, v4

    .line 192
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_String(I)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 194
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sub-int v4, v28, v26

    sub-int v18, v4, v25

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->relationsDown:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 195
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    const/16 v22, 0x0

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v25

    move/from16 v17, v2

    move/from16 v19, v32

    move/from16 v21, v4

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIZ)V

    .line 192
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3c2

    .line 232
    .end local v0    # "i":I
    :cond_472
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v0, :cond_4dd

    .line 233
    const/4 v0, 0x0

    .restart local v0    # "i":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v9, v2

    .end local v2    # "buttonY":I
    .local v1, "iSize":I
    .local v9, "buttonY":I
    :goto_488
    if-ge v0, v1, :cond_4dc

    .line 234
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    .line 236
    .local v10, "battle":Laoc/kingdoms/lukasz/map/battles/Battle;
    if-eqz v10, :cond_4d9

    .line 237
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    sub-int v2, v28, v26

    sub-int v6, v2, v25

    move-object v2, v12

    move/from16 v4, v25

    move v5, v9

    move/from16 v7, v32

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 233
    .end local v10    # "battle":Laoc/kingdoms/lukasz/map/battles/Battle;
    :cond_4d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_488

    :cond_4dc
    move v2, v9

    .line 243
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    .end local v9    # "buttonY":I
    .restart local v2    # "buttonY":I
    :cond_4dd
    sub-int v0, v28, v25

    sub-int v0, v0, v26

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 246
    .end local v8    # "buttonX":I
    .local v1, "buttonX":I
    sub-int v0, v28, v25

    sub-int v0, v0, v26

    :try_start_4f1
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 248
    .local v0, "paddingGenerals":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_504
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    if-ge v3, v4, :cond_561

    .line 249
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy;-><init>(Ljava/lang/String;II)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    add-int/2addr v4, v0

    if-gez v4, :cond_552

    .line 252
    sub-int v4, v28, v25

    sub-int v4, v4, v26

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v1, v4, v5

    .line 253
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    goto :goto_55e

    .line 256
    :cond_552
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4
    :try_end_55c
    .catch Ljava/lang/Exception; {:try_start_4f1 .. :try_end_55c} :catch_562

    add-int/2addr v4, v0

    sub-int/2addr v1, v4

    .line 248
    :goto_55e
    add-int/lit8 v3, v3, 0x1

    goto :goto_504

    .line 261
    .end local v0    # "paddingGenerals":I
    .end local v3    # "i":I
    :cond_561
    goto :goto_566

    .line 259
    :catch_562
    move-exception v0

    .line 260
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_566
    const/4 v0, 0x0

    .line 265
    .end local v2    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_56c
    if-ge v2, v3, :cond_59e

    .line 266
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_59b

    .line 267
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    move v0, v4

    .line 265
    :cond_59b
    add-int/lit8 v2, v2, 0x1

    goto :goto_56c

    .line 271
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_59e
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    .line 273
    add-int v2, v30, v0

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->posY:I

    .line 275
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, v30

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v32, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 279
    .local v12, "menuHeight":I
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move/from16 v4, v29

    move/from16 v5, v30

    move/from16 v6, v28

    move v7, v12

    move-object v8, v11

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 280
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 297
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 298
    return-void
.end method

.method public getMenuPosY()I
    .registers 3

    .line 320
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightQueue;->extraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 315
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightQueue;->extraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .line 310
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

    .line 302
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 303
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->lTime:J

    .line 305
    sput-boolean p1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->stateVisible:Z

    .line 306
    return-void
.end method
