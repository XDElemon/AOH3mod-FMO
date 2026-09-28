.class Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;
.source "InGame_Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Event;-><init>(Laoc/kingdoms/lukasz/events/Event;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;IIIIIZI)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Event;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Z
    .param p9, "x7"    # I

    .line 107
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 5

    .line 109
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeActiveEvent(II)V

    .line 110
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->madeDecision:Z

    .line 111
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_22

    .line 112
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision(III)V

    goto :goto_53

    .line 113
    :cond_22
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3d

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision_Civ(III)V

    .line 115
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    goto :goto_53

    .line 117
    :cond_3d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/events/EventsManager;->takeEventDecision(IIII)V

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    .line 121
    :goto_53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    .line 123
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->EVENT_RES:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public buildElementHover()V
    .registers 11

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getText()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    const/4 v3, 0x0

    :try_start_27
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1ba

    .line 135
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringLeft()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b6

    .line 136
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringLeft()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c9

    .line 138
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_c9
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getImage()I

    move-result v4

    if-ltz v4, :cond_141

    .line 142
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getImage()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight2(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13a

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_13b

    :cond_13a
    const/4 v7, 0x0

    :goto_13b
    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_141
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight2(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1ab

    .line 146
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight2(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1ab
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_1b6} :catch_1bb

    .line 134
    :cond_1b6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    .line 156
    .end local v2    # "i":I
    :cond_1ba
    goto :goto_1c0

    .line 153
    :catch_1bb
    move-exception v2

    .line 154
    .local v2, "var4":Ljava/lang/Exception;
    move-object v4, v2

    .line 155
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 158
    .end local v2    # "var4":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1c0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1ca

    const/4 v3, 0x1

    :cond_1ca
    invoke-direct {v2, v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 159
    return-void
.end method
