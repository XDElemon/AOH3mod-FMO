.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonMissionTree.java"


# instance fields
.field public iImageID:I

.field public iMissionID:I

.field public missionCanBeUnlocked:Z

.field public missionUnlocked:Z


# direct methods
.method public constructor <init>(IIIIZZ)V
    .registers 7
    .param p1, "iMissionID"    # I
    .param p2, "iImageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "missionUnlocked"    # Z
    .param p6, "missionCanBeUnlocked"    # Z

    .line 39
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->init(IIII)V

    .line 42
    iput-boolean p5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->missionUnlocked:Z

    .line 43
    iput-boolean p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->missionCanBeUnlocked:Z

    .line 44
    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 549
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission(II)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 550
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 551
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 553
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Mission"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 556
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_MissionTree(Z)V

    .line 558
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    .line 560
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->runMission(II)V

    goto :goto_8f

    .line 563
    :cond_48
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission_PreviousMissions(II)Z

    move-result v0

    if-nez v0, :cond_64

    .line 564
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CompleteThePreviousMissionFirst"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    goto :goto_8f

    .line 567
    :cond_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->haveUnlockedMission(II)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 568
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AlreadyUnlocked"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    goto :goto_8f

    .line 571
    :cond_80
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "RequirementsNotMet"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 575
    :goto_8f
    return-void
.end method

.method public buildElementHover()V
    .registers 20

    .line 145
    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v7, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Mission"

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->missionUnlocked:Z

    const-string v13, ""

    if-eqz v6, :cond_51

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Completed"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_52

    :cond_51
    move-object v6, v13

    :goto_52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 152
    const-string v4, "- "

    .line 154
    .local v4, "sInner":Ljava/lang/String;
    const/4 v5, 0x1

    .line 156
    .local v5, "addType":Z
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c7

    .line 157
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 161
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 168
    :cond_c7
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c8
    :try_start_c8
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_da} :catch_1c37

    const-string v8, "and"

    const-string v9, "orNot"

    const-string v10, "or"

    const-string v11, "andNot"

    const-string v14, ")"

    const-string v15, " ("

    if-ge v6, v7, :cond_719

    .line 169
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_e9
    :try_start_e9
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    move-object/from16 v16, v9

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_285

    .line 170
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_12b} :catch_713

    if-lez v9, :cond_27b

    .line 171
    if-eqz v5, :cond_130

    .line 172
    const/4 v5, 0x0

    .line 175
    :cond_130
    :try_start_130
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13b} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .local v17, "addType":Z
    :try_start_13d
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    move-object/from16 v18, v11

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v9, v5, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_236

    .line 180
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v5, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_236
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_268} :catch_26b

    move/from16 v5, v17

    goto :goto_27d

    .line 530
    .end local v6    # "i":I
    .end local v7    # "j":I
    :catch_26b
    move-exception v0

    move/from16 v5, v17

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_1c3b

    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :catch_273
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v17, v4

    move-object v4, v0

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    goto/16 :goto_1c3b

    .line 170
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_27b
    move-object/from16 v18, v11

    .line 169
    :goto_27d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v16

    move-object/from16 v11, v18

    goto/16 :goto_e9

    :cond_285
    move-object/from16 v18, v11

    .line 188
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_288
    :try_start_288
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_405

    .line 189
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_401

    .line 190
    if-eqz v5, :cond_2cd

    .line 191
    const/4 v5, 0x0

    .line 194
    :cond_2cd
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    if-lez v8, :cond_3cf

    .line 199
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v8, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_3cf
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 188
    :cond_401
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_288

    .line 207
    .end local v7    # "j":I
    :cond_405
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_406
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_58a

    .line 208
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_582

    .line 209
    if-eqz v5, :cond_44b

    .line 210
    const/4 v5, 0x0

    .line 213
    :cond_44b
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    if-lez v8, :cond_54d

    .line 218
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_54d
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v18

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_584

    .line 208
    :cond_582
    move-object/from16 v11, v18

    .line 207
    :goto_584
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v11

    goto/16 :goto_406

    .line 226
    .end local v7    # "j":I
    :cond_58a
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_58b
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_70f

    .line 227
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_707

    .line 228
    if-eqz v5, :cond_5d0

    .line 229
    const/4 v5, 0x0

    .line 232
    :cond_5d0
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    if-lez v8, :cond_6d2

    .line 237
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_6d2
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v16

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_706
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_706} :catch_713

    goto :goto_709

    .line 227
    :cond_707
    move-object/from16 v12, v16

    .line 226
    :goto_709
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v12

    goto/16 :goto_58b

    .line 168
    .end local v7    # "j":I
    :cond_70f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c8

    .line 530
    .end local v6    # "i":I
    :catch_713
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_1c3b

    .line 168
    .restart local v6    # "i":I
    :cond_719
    move-object v12, v9

    .line 246
    .end local v6    # "i":I
    const/4 v5, 0x1

    .line 247
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_71c
    :try_start_71c
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_72e
    .catch Ljava/lang/Exception; {:try_start_71c .. :try_end_72e} :catch_1c37

    if-ge v6, v7, :cond_e2e

    .line 248
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_731
    :try_start_731
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    move-object/from16 v16, v12

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_8f2

    .line 249
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_773
    .catch Ljava/lang/Exception; {:try_start_731 .. :try_end_773} :catch_713

    if-lez v9, :cond_8e8

    .line 250
    if-eqz v5, :cond_7ad

    .line 251
    const/4 v5, 0x0

    .line 253
    :try_start_778
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12
    :try_end_783
    .catch Ljava/lang/Exception; {:try_start_778 .. :try_end_783} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_785
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v5, v12, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_7aa
    .catch Ljava/lang/Exception; {:try_start_785 .. :try_end_7aa} :catch_26b

    move/from16 v5, v17

    goto :goto_7af

    .line 250
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_7ad
    move-object/from16 v18, v10

    .line 258
    :goto_7af
    :try_start_7af
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_7bc
    .catch Ljava/lang/Exception; {:try_start_7af .. :try_end_7bc} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_7be
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v9, v5, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_8b3

    .line 263
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_8b3
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_8e5
    .catch Ljava/lang/Exception; {:try_start_7be .. :try_end_8e5} :catch_26b

    move/from16 v5, v17

    goto :goto_8ea

    .line 249
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_8e8
    move-object/from16 v18, v10

    .line 248
    :goto_8ea
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v12, v16

    move-object/from16 v10, v18

    goto/16 :goto_731

    :cond_8f2
    move-object/from16 v18, v10

    .line 271
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_8f5
    :try_start_8f5
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_ab5

    .line 272
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_935
    .catch Ljava/lang/Exception; {:try_start_8f5 .. :try_end_935} :catch_713

    if-lez v9, :cond_aa9

    .line 273
    if-eqz v5, :cond_96c

    .line 274
    const/4 v5, 0x0

    .line 276
    :try_start_93a
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_955
    .catch Ljava/lang/Exception; {:try_start_93a .. :try_end_955} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_957
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v12, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_96a
    .catch Ljava/lang/Exception; {:try_start_957 .. :try_end_96a} :catch_26b

    move/from16 v5, v17

    .line 281
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_96c
    :try_start_96c
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_979
    .catch Ljava/lang/Exception; {:try_start_96c .. :try_end_979} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_97b
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v9, v5, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_a70

    .line 286
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_a70
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v18

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v8

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_aa6
    .catch Ljava/lang/Exception; {:try_start_97b .. :try_end_aa6} :catch_26b

    move/from16 v5, v17

    goto :goto_aad

    .line 272
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_aa9
    move-object/from16 v12, v18

    move-object/from16 v18, v8

    .line 271
    :goto_aad
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v18

    move-object/from16 v18, v12

    goto/16 :goto_8f5

    :cond_ab5
    move-object/from16 v12, v18

    move-object/from16 v18, v8

    .line 294
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_aba
    :try_start_aba
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c6d

    .line 295
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_afa
    .catch Ljava/lang/Exception; {:try_start_aba .. :try_end_afa} :catch_713

    if-lez v8, :cond_c69

    .line 296
    if-eqz v5, :cond_b31

    .line 297
    const/4 v5, 0x0

    .line 299
    :try_start_aff
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_b1a
    .catch Ljava/lang/Exception; {:try_start_aff .. :try_end_b1a} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_b1c
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_b2f
    .catch Ljava/lang/Exception; {:try_start_b1c .. :try_end_b2f} :catch_26b

    move/from16 v5, v17

    .line 304
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_b31
    :try_start_b31
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_b3e
    .catch Ljava/lang/Exception; {:try_start_b31 .. :try_end_b3e} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_b40
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_c35

    .line 309
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_c35
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_c67
    .catch Ljava/lang/Exception; {:try_start_b40 .. :try_end_c67} :catch_26b

    move/from16 v5, v17

    .line 294
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_c69
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_aba

    .line 317
    .end local v7    # "j":I
    :cond_c6d
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_c6e
    :try_start_c6e
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e25

    .line 318
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_cae
    .catch Ljava/lang/Exception; {:try_start_c6e .. :try_end_cae} :catch_713

    if-lez v8, :cond_e21

    .line 319
    if-eqz v5, :cond_ce5

    .line 320
    const/4 v5, 0x0

    .line 322
    :try_start_cb3
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_cce
    .catch Ljava/lang/Exception; {:try_start_cb3 .. :try_end_cce} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_cd0
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_ce3
    .catch Ljava/lang/Exception; {:try_start_cd0 .. :try_end_ce3} :catch_26b

    move/from16 v5, v17

    .line 327
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_ce5
    :try_start_ce5
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_cf2
    .catch Ljava/lang/Exception; {:try_start_ce5 .. :try_end_cf2} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_cf4
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_de9

    .line 332
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_de9
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v16

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_e1f
    .catch Ljava/lang/Exception; {:try_start_cf4 .. :try_end_e1f} :catch_26b

    move/from16 v5, v17

    .line 317
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_e21
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c6e

    .line 247
    .end local v7    # "j":I
    :cond_e25
    add-int/lit8 v6, v6, 0x1

    move-object v10, v12

    move-object/from16 v12, v16

    move-object/from16 v8, v18

    goto/16 :goto_71c

    :cond_e2e
    move-object/from16 v18, v8

    move-object/from16 v16, v12

    move-object v12, v10

    .line 341
    .end local v6    # "i":I
    const/4 v5, 0x1

    .line 342
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_e35
    :try_start_e35
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_e47
    .catch Ljava/lang/Exception; {:try_start_e35 .. :try_end_e47} :catch_1c37

    if-ge v6, v7, :cond_1534

    .line 343
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_e4a
    :try_start_e4a
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1001

    .line 344
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_e8a
    .catch Ljava/lang/Exception; {:try_start_e4a .. :try_end_e8a} :catch_713

    if-lez v8, :cond_ffd

    .line 345
    if-eqz v5, :cond_ec1

    .line 346
    const/4 v5, 0x0

    .line 348
    :try_start_e8f
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_eaa
    .catch Ljava/lang/Exception; {:try_start_e8f .. :try_end_eaa} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_eac
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_ebf
    .catch Ljava/lang/Exception; {:try_start_eac .. :try_end_ebf} :catch_26b

    move/from16 v5, v17

    .line 353
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_ec1
    :try_start_ec1
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_ece
    .catch Ljava/lang/Exception; {:try_start_ec1 .. :try_end_ece} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_ed0
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_fc5

    .line 358
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_fc5
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v18

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_ffb
    .catch Ljava/lang/Exception; {:try_start_ed0 .. :try_end_ffb} :catch_26b

    move/from16 v5, v17

    .line 343
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_ffd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_e4a

    .line 366
    .end local v7    # "j":I
    :cond_1001
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1002
    :try_start_1002
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_11b5

    .line 367
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_1042
    .catch Ljava/lang/Exception; {:try_start_1002 .. :try_end_1042} :catch_713

    if-lez v8, :cond_11b1

    .line 368
    if-eqz v5, :cond_1079

    .line 369
    const/4 v5, 0x0

    .line 371
    :try_start_1047
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1062
    .catch Ljava/lang/Exception; {:try_start_1047 .. :try_end_1062} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1064
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1077
    .catch Ljava/lang/Exception; {:try_start_1064 .. :try_end_1077} :catch_26b

    move/from16 v5, v17

    .line 376
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1079
    :try_start_1079
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_1086
    .catch Ljava/lang/Exception; {:try_start_1079 .. :try_end_1086} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1088
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_117d

    .line 381
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_117d
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_11af
    .catch Ljava/lang/Exception; {:try_start_1088 .. :try_end_11af} :catch_26b

    move/from16 v5, v17

    .line 366
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_11b1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1002

    .line 389
    .end local v7    # "j":I
    :cond_11b5
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_11b6
    :try_start_11b6
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1369

    .line 390
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_11f6
    .catch Ljava/lang/Exception; {:try_start_11b6 .. :try_end_11f6} :catch_713

    if-lez v8, :cond_1365

    .line 391
    if-eqz v5, :cond_122d

    .line 392
    const/4 v5, 0x0

    .line 394
    :try_start_11fb
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1216
    .catch Ljava/lang/Exception; {:try_start_11fb .. :try_end_1216} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1218
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_122b
    .catch Ljava/lang/Exception; {:try_start_1218 .. :try_end_122b} :catch_26b

    move/from16 v5, v17

    .line 399
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_122d
    :try_start_122d
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_123a
    .catch Ljava/lang/Exception; {:try_start_122d .. :try_end_123a} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_123c
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_1331

    .line 404
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_1331
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1363
    .catch Ljava/lang/Exception; {:try_start_123c .. :try_end_1363} :catch_26b

    move/from16 v5, v17

    .line 389
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1365
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11b6

    .line 412
    .end local v7    # "j":I
    :cond_1369
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_136a
    :try_start_136a
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_152a

    .line 413
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_13aa
    .catch Ljava/lang/Exception; {:try_start_136a .. :try_end_13aa} :catch_713

    if-lez v8, :cond_151e

    .line 414
    if-eqz v5, :cond_13e1

    .line 415
    const/4 v5, 0x0

    .line 417
    :try_start_13af
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_13ca
    .catch Ljava/lang/Exception; {:try_start_13af .. :try_end_13ca} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_13cc
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_13df
    .catch Ljava/lang/Exception; {:try_start_13cc .. :try_end_13df} :catch_26b

    move/from16 v5, v17

    .line 422
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_13e1
    :try_start_13e1
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_13ee
    .catch Ljava/lang/Exception; {:try_start_13e1 .. :try_end_13ee} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_13f0
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_14e5

    .line 427
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_14e5
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v16

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_151b
    .catch Ljava/lang/Exception; {:try_start_13f0 .. :try_end_151b} :catch_26b

    move/from16 v5, v17

    goto :goto_1522

    .line 413
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_151e
    move-object/from16 v10, v16

    move-object/from16 v16, v11

    .line 412
    :goto_1522
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v16

    move-object/from16 v16, v10

    goto/16 :goto_136a

    :cond_152a
    move-object/from16 v10, v16

    move-object/from16 v16, v11

    .line 342
    .end local v7    # "j":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v10

    goto/16 :goto_e35

    :cond_1534
    move-object/from16 v10, v16

    move-object/from16 v16, v11

    .line 436
    .end local v6    # "i":I
    const/4 v5, 0x1

    .line 437
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_153a
    :try_start_153a
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1c34

    .line 438
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_154f
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_1569
    .catch Ljava/lang/Exception; {:try_start_153a .. :try_end_1569} :catch_1c37

    if-ge v7, v8, :cond_1706

    .line 439
    :try_start_156b
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_158f
    .catch Ljava/lang/Exception; {:try_start_156b .. :try_end_158f} :catch_713

    if-lez v8, :cond_1702

    .line 440
    if-eqz v5, :cond_15c6

    .line 441
    const/4 v5, 0x0

    .line 443
    :try_start_1594
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_15af
    .catch Ljava/lang/Exception; {:try_start_1594 .. :try_end_15af} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_15b1
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_15c4
    .catch Ljava/lang/Exception; {:try_start_15b1 .. :try_end_15c4} :catch_26b

    move/from16 v5, v17

    .line 448
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_15c6
    :try_start_15c6
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_15d3
    .catch Ljava/lang/Exception; {:try_start_15c6 .. :try_end_15d3} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_15d5
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_16ca

    .line 453
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_16ca
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v18

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1700
    .catch Ljava/lang/Exception; {:try_start_15d5 .. :try_end_1700} :catch_26b

    move/from16 v5, v17

    .line 438
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1702
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_154f

    .line 461
    .end local v7    # "j":I
    :cond_1706
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1707
    :try_start_1707
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_1721
    .catch Ljava/lang/Exception; {:try_start_1707 .. :try_end_1721} :catch_1c37

    if-ge v7, v8, :cond_18ba

    .line 462
    :try_start_1723
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_1747
    .catch Ljava/lang/Exception; {:try_start_1723 .. :try_end_1747} :catch_713

    if-lez v8, :cond_18b6

    .line 463
    if-eqz v5, :cond_177e

    .line 464
    const/4 v5, 0x0

    .line 466
    :try_start_174c
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1767
    .catch Ljava/lang/Exception; {:try_start_174c .. :try_end_1767} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1769
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_177c
    .catch Ljava/lang/Exception; {:try_start_1769 .. :try_end_177c} :catch_26b

    move/from16 v5, v17

    .line 471
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_177e
    :try_start_177e
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_178b
    .catch Ljava/lang/Exception; {:try_start_177e .. :try_end_178b} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_178d
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_1882

    .line 476
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1882
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_18b4
    .catch Ljava/lang/Exception; {:try_start_178d .. :try_end_18b4} :catch_26b

    move/from16 v5, v17

    .line 461
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_18b6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1707

    .line 484
    .end local v7    # "j":I
    :cond_18ba
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_18bb
    :try_start_18bb
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_18d5
    .catch Ljava/lang/Exception; {:try_start_18bb .. :try_end_18d5} :catch_1c37

    if-ge v7, v8, :cond_1a72

    .line 485
    :try_start_18d7
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_18fb
    .catch Ljava/lang/Exception; {:try_start_18d7 .. :try_end_18fb} :catch_713

    if-lez v8, :cond_1a6e

    .line 486
    if-eqz v5, :cond_1932

    .line 487
    const/4 v5, 0x0

    .line 489
    :try_start_1900
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_191b
    .catch Ljava/lang/Exception; {:try_start_1900 .. :try_end_191b} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_191d
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1930
    .catch Ljava/lang/Exception; {:try_start_191d .. :try_end_1930} :catch_26b

    move/from16 v5, v17

    .line 494
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1932
    :try_start_1932
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_193f
    .catch Ljava/lang/Exception; {:try_start_1932 .. :try_end_193f} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1941
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v5, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v5

    if-lez v5, :cond_1a36

    .line 499
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_1a36
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v16

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1a6c
    .catch Ljava/lang/Exception; {:try_start_1941 .. :try_end_1a6c} :catch_26b

    move/from16 v5, v17

    .line 484
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1a6e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18bb

    .line 507
    .end local v7    # "j":I
    :cond_1a72
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1a73
    :try_start_1a73
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1c2e

    .line 508
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_1ab3
    .catch Ljava/lang/Exception; {:try_start_1a73 .. :try_end_1ab3} :catch_1c37

    if-lez v8, :cond_1c26

    .line 509
    if-eqz v5, :cond_1aea

    .line 510
    const/4 v5, 0x0

    .line 512
    :try_start_1ab8
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1ad3
    .catch Ljava/lang/Exception; {:try_start_1ab8 .. :try_end_1ad3} :catch_273

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1ad5
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1ae8
    .catch Ljava/lang/Exception; {:try_start_1ad5 .. :try_end_1ae8} :catch_26b

    move/from16 v5, v17

    .line 517
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1aea
    :try_start_1aea
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;
    :try_end_1af7
    .catch Ljava/lang/Exception; {:try_start_1aea .. :try_end_1af7} :catch_1c37

    move-object/from16 v17, v4

    .end local v4    # "sInner":Ljava/lang/String;
    .local v17, "sInner":Ljava/lang/String;
    :try_start_1af9
    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v4, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v4

    if-lez v4, :cond_1bef

    .line 522
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v4, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bf0

    .line 521
    :cond_1bef
    const/4 v11, 0x0

    .line 524
    :goto_1bf0
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1c22
    .catch Ljava/lang/Exception; {:try_start_1af9 .. :try_end_1c22} :catch_1c23

    goto :goto_1c28

    .line 530
    .end local v6    # "i":I
    .end local v7    # "j":I
    :catch_1c23
    move-exception v0

    move-object v4, v0

    goto :goto_1c3b

    .line 508
    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_1c26
    move-object/from16 v17, v4

    .line 507
    .end local v4    # "sInner":Ljava/lang/String;
    .restart local v17    # "sInner":Ljava/lang/String;
    :goto_1c28
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    goto/16 :goto_1a73

    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    :cond_1c2e
    move-object/from16 v17, v4

    .line 437
    .end local v4    # "sInner":Ljava/lang/String;
    .end local v7    # "j":I
    .restart local v17    # "sInner":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_153a

    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    :cond_1c34
    move-object/from16 v17, v4

    .line 532
    .end local v4    # "sInner":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v17    # "sInner":Ljava/lang/String;
    goto :goto_1c3e

    .line 530
    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    :catch_1c37
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    .line 531
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v17    # "sInner":Ljava/lang/String;
    :goto_1c3b
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 534
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1c3e
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 535
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 61
    move-object v0, p0

    move-object v9, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 63
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->missionImages:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 64
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 66
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->missionMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 68
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 69
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 72
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getTextHeight()I

    move-result v2

    add-int v11, v1, v2

    .line 74
    .local v11, "nH":I
    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->missionUnlocked:Z

    const/high16 v12, 0x3f400000    # 0.75f

    const v13, 0x3f0ccccd    # 0.55f

    const/high16 v7, 0x3f000000    # 0.5f

    const v2, 0x3f333333    # 0.7f

    if-eqz v1, :cond_15f

    .line 75
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 76
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    move-object v2, p1

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 78
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 79
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 81
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 84
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 85
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 87
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_25b

    .line 91
    :cond_15f
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 92
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    move-object v2, p1

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 94
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 97
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 98
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 100
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 101
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 103
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 107
    :goto_25b
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 108
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    add-int/2addr v2, v10

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 111
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 113
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->missionOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 114
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 115
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 140
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getTextHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 141
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 123
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->missionUnlocked:Z

    if-eqz v0, :cond_d

    .line 124
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorPositive(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0

    .line 126
    :cond_d
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->missionCanBeUnlocked:Z

    if-eqz v0, :cond_26

    .line 127
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1a

    goto :goto_1d

    .line 131
    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 128
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0

    .line 135
    :cond_26
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()I
    .registers 2

    .line 544
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 539
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    return v0
.end method

.method public init(IIII)V
    .registers 20
    .param p1, "iMissionID"    # I
    .param p2, "iImageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 47
    move-object v12, p0

    move/from16 v13, p1

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iMissionID:I

    .line 48
    move/from16 v14, p2

    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iImageID:I

    .line 50
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->fontID:I

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iTextPositionX:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "tWMax":I
    :goto_2c
    iget v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_79

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_79

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_79

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;->setText(Ljava/lang/String;)V

    goto :goto_2c

    .line 57
    :cond_79
    return-void
.end method

.method public titleH()I
    .registers 3

    .line 118
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method
