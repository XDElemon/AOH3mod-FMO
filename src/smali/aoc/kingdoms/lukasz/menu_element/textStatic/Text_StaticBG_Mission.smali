.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;
.source "Text_StaticBG_Mission.java"


# instance fields
.field public eventType:I

.field public missionImage:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIII)V
    .registers 21
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "eventType"    # I
    .param p8, "id"    # I
    .param p9, "missionImage"    # I

    .line 32
    move-object v9, p0

    move/from16 v10, p9

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    .line 27
    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    .line 29
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    .line 34
    move/from16 v0, p7

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    .line 35
    iput v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    .line 36
    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 20

    .line 108
    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getText()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Mission"

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 115
    const-string v4, "- "

    .line 117
    .local v4, "sInner":Ljava/lang/String;
    const/4 v5, 0x1

    .line 119
    .local v5, "addType":Z
    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_83

    .line 120
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 124
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 131
    :cond_83
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_84
    :try_start_84
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_92} :catch_1a25

    const-string v8, "and"

    const-string v9, "orNot"

    const-string v10, "or"

    const-string v11, "andNot"

    const-string v13, ")"

    const-string v14, " ("

    const-string v15, ""

    if-ge v6, v7, :cond_663

    .line 132
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_a3
    :try_start_a3
    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move-object/from16 v16, v9

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v12, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_223

    .line 133
    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_dd} :catch_65d

    if-lez v9, :cond_219

    .line 134
    if-eqz v5, :cond_e2

    .line 135
    const/4 v5, 0x0

    .line 142
    :cond_e2
    :try_start_e2
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ed} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .local v17, "addType":Z
    :try_start_ef
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move-object/from16 v18, v11

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 143
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v11

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

    .line 144
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v11

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

    .line 146
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_1d4

    .line 147
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 149
    :cond_1d4
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_206} :catch_209

    move/from16 v5, v17

    goto :goto_21b

    .line 509
    .end local v6    # "i":I
    .end local v7    # "j":I
    :catch_209
    move-exception v0

    move/from16 v5, v17

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_1a29

    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :catch_211
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v17, v4

    move-object v4, v0

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    goto/16 :goto_1a29

    .line 133
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_219
    move-object/from16 v18, v11

    .line 132
    :goto_21b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v16

    move-object/from16 v11, v18

    goto/16 :goto_a3

    :cond_223
    move-object/from16 v18, v11

    .line 155
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_226
    :try_start_226
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_387

    .line 156
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    if-lez v8, :cond_383

    .line 157
    if-eqz v5, :cond_263

    .line 158
    const/4 v5, 0x0

    .line 165
    :cond_263
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v11

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

    .line 166
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v11

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

    .line 167
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v11

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

    .line 169
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    if-lez v8, :cond_351

    .line 170
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 172
    :cond_351
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 155
    :cond_383
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_226

    .line 178
    .end local v7    # "j":I
    :cond_387
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_388
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4f0

    .line 179
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    if-lez v8, :cond_4e8

    .line 180
    if-eqz v5, :cond_3c5

    .line 181
    const/4 v5, 0x0

    .line 188
    :cond_3c5
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 189
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 190
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 192
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    if-lez v8, :cond_4b3

    .line 193
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 195
    :cond_4b3
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v18

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4ea

    .line 179
    :cond_4e8
    move-object/from16 v11, v18

    .line 178
    :goto_4ea
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v11

    goto/16 :goto_388

    .line 201
    .end local v7    # "j":I
    :cond_4f0
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4f1
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_659

    .line 202
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    if-lez v8, :cond_651

    .line 203
    if-eqz v5, :cond_52e

    .line 204
    const/4 v5, 0x0

    .line 211
    :cond_52e
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 212
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 213
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 215
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    if-lez v8, :cond_61c

    .line 216
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 218
    :cond_61c
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v16

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_650
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_650} :catch_65d

    goto :goto_653

    .line 202
    :cond_651
    move-object/from16 v12, v16

    .line 201
    :goto_653
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v12

    goto/16 :goto_4f1

    .line 131
    .end local v7    # "j":I
    :cond_659
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_84

    .line 509
    .end local v6    # "i":I
    :catch_65d
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_1a29

    .line 131
    .restart local v6    # "i":I
    :cond_663
    move-object v12, v9

    .line 225
    .end local v6    # "i":I
    const/4 v5, 0x1

    .line 226
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_666
    :try_start_666
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_674
    .catch Ljava/lang/Exception; {:try_start_666 .. :try_end_674} :catch_1a25

    if-ge v6, v7, :cond_d04

    .line 227
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_677
    :try_start_677
    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move-object/from16 v16, v12

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_81c

    .line 228
    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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
    :try_end_6b1
    .catch Ljava/lang/Exception; {:try_start_677 .. :try_end_6b1} :catch_65d

    if-lez v9, :cond_812

    .line 229
    if-eqz v5, :cond_6eb

    .line 230
    const/4 v5, 0x0

    .line 232
    :try_start_6b6
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12
    :try_end_6c1
    .catch Ljava/lang/Exception; {:try_start_6b6 .. :try_end_6c1} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_6c3
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

    .line 233
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_6e8
    .catch Ljava/lang/Exception; {:try_start_6c3 .. :try_end_6e8} :catch_209

    move/from16 v5, v17

    goto :goto_6ed

    .line 229
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_6eb
    move-object/from16 v18, v10

    .line 237
    :goto_6ed
    :try_start_6ed
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_6fa
    .catch Ljava/lang/Exception; {:try_start_6ed .. :try_end_6fa} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_6fc
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 238
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 239
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 241
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_7dd

    .line 242
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 244
    :cond_7dd
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_80f
    .catch Ljava/lang/Exception; {:try_start_6fc .. :try_end_80f} :catch_209

    move/from16 v5, v17

    goto :goto_814

    .line 228
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_812
    move-object/from16 v18, v10

    .line 227
    :goto_814
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v12, v16

    move-object/from16 v10, v18

    goto/16 :goto_677

    :cond_81c
    move-object/from16 v18, v10

    .line 250
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_81f
    :try_start_81f
    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_9c3

    .line 251
    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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
    :try_end_857
    .catch Ljava/lang/Exception; {:try_start_81f .. :try_end_857} :catch_65d

    if-lez v9, :cond_9b7

    .line 252
    if-eqz v5, :cond_88e

    .line 253
    const/4 v5, 0x0

    .line 255
    :try_start_85c
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_877
    .catch Ljava/lang/Exception; {:try_start_85c .. :try_end_877} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_879
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v12, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_88c
    .catch Ljava/lang/Exception; {:try_start_879 .. :try_end_88c} :catch_209

    move/from16 v5, v17

    .line 260
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_88e
    :try_start_88e
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_89b
    .catch Ljava/lang/Exception; {:try_start_88e .. :try_end_89b} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_89d
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 261
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 262
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

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

    .line 264
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_97e

    .line 265
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 267
    :cond_97e
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v18

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v8

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v10, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_9b4
    .catch Ljava/lang/Exception; {:try_start_89d .. :try_end_9b4} :catch_209

    move/from16 v5, v17

    goto :goto_9bb

    .line 251
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_9b7
    move-object/from16 v12, v18

    move-object/from16 v18, v8

    .line 250
    :goto_9bb
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v18

    move-object/from16 v18, v12

    goto/16 :goto_81f

    :cond_9c3
    move-object/from16 v12, v18

    move-object/from16 v18, v8

    .line 273
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_9c8
    :try_start_9c8
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b5f

    .line 274
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_a00
    .catch Ljava/lang/Exception; {:try_start_9c8 .. :try_end_a00} :catch_65d

    if-lez v8, :cond_b5b

    .line 275
    if-eqz v5, :cond_a37

    .line 276
    const/4 v5, 0x0

    .line 278
    :try_start_a05
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_a20
    .catch Ljava/lang/Exception; {:try_start_a05 .. :try_end_a20} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_a22
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_a35
    .catch Ljava/lang/Exception; {:try_start_a22 .. :try_end_a35} :catch_209

    move/from16 v5, v17

    .line 283
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_a37
    :try_start_a37
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_a44
    .catch Ljava/lang/Exception; {:try_start_a37 .. :try_end_a44} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_a46
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 284
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 285
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 287
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_b27

    .line 288
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 290
    :cond_b27
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_b59
    .catch Ljava/lang/Exception; {:try_start_a46 .. :try_end_b59} :catch_209

    move/from16 v5, v17

    .line 273
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_b5b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9c8

    .line 296
    .end local v7    # "j":I
    :cond_b5f
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_b60
    :try_start_b60
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_cfb

    .line 297
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_b98
    .catch Ljava/lang/Exception; {:try_start_b60 .. :try_end_b98} :catch_65d

    if-lez v8, :cond_cf7

    .line 298
    if-eqz v5, :cond_bcf

    .line 299
    const/4 v5, 0x0

    .line 301
    :try_start_b9d
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_bb8
    .catch Ljava/lang/Exception; {:try_start_b9d .. :try_end_bb8} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_bba
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_bcd
    .catch Ljava/lang/Exception; {:try_start_bba .. :try_end_bcd} :catch_209

    move/from16 v5, v17

    .line 306
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_bcf
    :try_start_bcf
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_bdc
    .catch Ljava/lang/Exception; {:try_start_bcf .. :try_end_bdc} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_bde
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 307
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 308
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 310
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_cbf

    .line 311
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 313
    :cond_cbf
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v16

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_cf5
    .catch Ljava/lang/Exception; {:try_start_bde .. :try_end_cf5} :catch_209

    move/from16 v5, v17

    .line 296
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_cf7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b60

    .line 226
    .end local v7    # "j":I
    :cond_cfb
    add-int/lit8 v6, v6, 0x1

    move-object v10, v12

    move-object/from16 v12, v16

    move-object/from16 v8, v18

    goto/16 :goto_666

    :cond_d04
    move-object/from16 v18, v8

    move-object/from16 v16, v12

    move-object v12, v10

    .line 320
    .end local v6    # "i":I
    const/4 v5, 0x1

    .line 321
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d0b
    :try_start_d0b
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_d19
    .catch Ljava/lang/Exception; {:try_start_d0b .. :try_end_d19} :catch_1a25

    if-ge v6, v7, :cond_1396

    .line 322
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_d1c
    :try_start_d1c
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_eb7

    .line 323
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_d54
    .catch Ljava/lang/Exception; {:try_start_d1c .. :try_end_d54} :catch_65d

    if-lez v8, :cond_eb3

    .line 324
    if-eqz v5, :cond_d8b

    .line 325
    const/4 v5, 0x0

    .line 327
    :try_start_d59
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_d74
    .catch Ljava/lang/Exception; {:try_start_d59 .. :try_end_d74} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_d76
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_d89
    .catch Ljava/lang/Exception; {:try_start_d76 .. :try_end_d89} :catch_209

    move/from16 v5, v17

    .line 332
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_d8b
    :try_start_d8b
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_d98
    .catch Ljava/lang/Exception; {:try_start_d8b .. :try_end_d98} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_d9a
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 333
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 334
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 336
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_e7b

    .line 337
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 339
    :cond_e7b
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v18

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_eb1
    .catch Ljava/lang/Exception; {:try_start_d9a .. :try_end_eb1} :catch_209

    move/from16 v5, v17

    .line 322
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_eb3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d1c

    .line 345
    .end local v7    # "j":I
    :cond_eb7
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_eb8
    :try_start_eb8
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_104f

    .line 346
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_ef0
    .catch Ljava/lang/Exception; {:try_start_eb8 .. :try_end_ef0} :catch_65d

    if-lez v8, :cond_104b

    .line 347
    if-eqz v5, :cond_f27

    .line 348
    const/4 v5, 0x0

    .line 350
    :try_start_ef5
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_f10
    .catch Ljava/lang/Exception; {:try_start_ef5 .. :try_end_f10} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_f12
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_f25
    .catch Ljava/lang/Exception; {:try_start_f12 .. :try_end_f25} :catch_209

    move/from16 v5, v17

    .line 355
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_f27
    :try_start_f27
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_f34
    .catch Ljava/lang/Exception; {:try_start_f27 .. :try_end_f34} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_f36
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 356
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 357
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 359
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_1017

    .line 360
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 362
    :cond_1017
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1049
    .catch Ljava/lang/Exception; {:try_start_f36 .. :try_end_1049} :catch_209

    move/from16 v5, v17

    .line 345
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_104b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_eb8

    .line 368
    .end local v7    # "j":I
    :cond_104f
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1050
    :try_start_1050
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_11e7

    .line 369
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_1088
    .catch Ljava/lang/Exception; {:try_start_1050 .. :try_end_1088} :catch_65d

    if-lez v8, :cond_11e3

    .line 370
    if-eqz v5, :cond_10bf

    .line 371
    const/4 v5, 0x0

    .line 373
    :try_start_108d
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_10a8
    .catch Ljava/lang/Exception; {:try_start_108d .. :try_end_10a8} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_10aa
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_10bd
    .catch Ljava/lang/Exception; {:try_start_10aa .. :try_end_10bd} :catch_209

    move/from16 v5, v17

    .line 378
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_10bf
    :try_start_10bf
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_10cc
    .catch Ljava/lang/Exception; {:try_start_10bf .. :try_end_10cc} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_10ce
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 379
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 380
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 382
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_11af

    .line 383
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 385
    :cond_11af
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_11e1
    .catch Ljava/lang/Exception; {:try_start_10ce .. :try_end_11e1} :catch_209

    move/from16 v5, v17

    .line 368
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_11e3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1050

    .line 391
    .end local v7    # "j":I
    :cond_11e7
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_11e8
    :try_start_11e8
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_138c

    .line 392
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_1220
    .catch Ljava/lang/Exception; {:try_start_11e8 .. :try_end_1220} :catch_65d

    if-lez v8, :cond_1380

    .line 393
    if-eqz v5, :cond_1257

    .line 394
    const/4 v5, 0x0

    .line 396
    :try_start_1225
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1240
    .catch Ljava/lang/Exception; {:try_start_1225 .. :try_end_1240} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1242
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1255
    .catch Ljava/lang/Exception; {:try_start_1242 .. :try_end_1255} :catch_209

    move/from16 v5, v17

    .line 401
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1257
    :try_start_1257
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_1264
    .catch Ljava/lang/Exception; {:try_start_1257 .. :try_end_1264} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1266
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 402
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 403
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 405
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_1347

    .line 406
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 408
    :cond_1347
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v16

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_137d
    .catch Ljava/lang/Exception; {:try_start_1266 .. :try_end_137d} :catch_209

    move/from16 v5, v17

    goto :goto_1384

    .line 392
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1380
    move-object/from16 v10, v16

    move-object/from16 v16, v11

    .line 391
    :goto_1384
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v16

    move-object/from16 v16, v10

    goto/16 :goto_11e8

    :cond_138c
    move-object/from16 v10, v16

    move-object/from16 v16, v11

    .line 321
    .end local v7    # "j":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v10

    goto/16 :goto_d0b

    :cond_1396
    move-object/from16 v10, v16

    move-object/from16 v16, v11

    .line 415
    .end local v6    # "i":I
    const/4 v5, 0x1

    .line 416
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_139c
    :try_start_139c
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a22

    .line 417
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_13ad
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_13c3
    .catch Ljava/lang/Exception; {:try_start_139c .. :try_end_13c3} :catch_1a25

    if-ge v7, v8, :cond_1548

    .line 418
    :try_start_13c5
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_13e5
    .catch Ljava/lang/Exception; {:try_start_13c5 .. :try_end_13e5} :catch_65d

    if-lez v8, :cond_1544

    .line 419
    if-eqz v5, :cond_141c

    .line 420
    const/4 v5, 0x0

    .line 422
    :try_start_13ea
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1405
    .catch Ljava/lang/Exception; {:try_start_13ea .. :try_end_1405} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_1407
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_141a
    .catch Ljava/lang/Exception; {:try_start_1407 .. :try_end_141a} :catch_209

    move/from16 v5, v17

    .line 427
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_141c
    :try_start_141c
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_1429
    .catch Ljava/lang/Exception; {:try_start_141c .. :try_end_1429} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_142b
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 428
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 429
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 431
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_150c

    .line 432
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 434
    :cond_150c
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v18

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1542
    .catch Ljava/lang/Exception; {:try_start_142b .. :try_end_1542} :catch_209

    move/from16 v5, v17

    .line 417
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1544
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13ad

    .line 440
    .end local v7    # "j":I
    :cond_1548
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1549
    :try_start_1549
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_155f
    .catch Ljava/lang/Exception; {:try_start_1549 .. :try_end_155f} :catch_1a25

    if-ge v7, v8, :cond_16e0

    .line 441
    :try_start_1561
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_1581
    .catch Ljava/lang/Exception; {:try_start_1561 .. :try_end_1581} :catch_65d

    if-lez v8, :cond_16dc

    .line 442
    if-eqz v5, :cond_15b8

    .line 443
    const/4 v5, 0x0

    .line 445
    :try_start_1586
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_15a1
    .catch Ljava/lang/Exception; {:try_start_1586 .. :try_end_15a1} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_15a3
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_15b6
    .catch Ljava/lang/Exception; {:try_start_15a3 .. :try_end_15b6} :catch_209

    move/from16 v5, v17

    .line 450
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_15b8
    :try_start_15b8
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_15c5
    .catch Ljava/lang/Exception; {:try_start_15b8 .. :try_end_15c5} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_15c7
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 451
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 452
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 454
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_16a8

    .line 455
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 457
    :cond_16a8
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_16da
    .catch Ljava/lang/Exception; {:try_start_15c7 .. :try_end_16da} :catch_209

    move/from16 v5, v17

    .line 440
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_16dc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1549

    .line 463
    .end local v7    # "j":I
    :cond_16e0
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_16e1
    :try_start_16e1
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_16f7
    .catch Ljava/lang/Exception; {:try_start_16e1 .. :try_end_16f7} :catch_1a25

    if-ge v7, v8, :cond_187c

    .line 464
    :try_start_16f9
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_1719
    .catch Ljava/lang/Exception; {:try_start_16f9 .. :try_end_1719} :catch_65d

    if-lez v8, :cond_1878

    .line 465
    if-eqz v5, :cond_1750

    .line 466
    const/4 v5, 0x0

    .line 468
    :try_start_171e
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_1739
    .catch Ljava/lang/Exception; {:try_start_171e .. :try_end_1739} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_173b
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_174e
    .catch Ljava/lang/Exception; {:try_start_173b .. :try_end_174e} :catch_209

    move/from16 v5, v17

    .line 473
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1750
    :try_start_1750
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_175d
    .catch Ljava/lang/Exception; {:try_start_1750 .. :try_end_175d} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_175f
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    .line 474
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 475
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 477
    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v5

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

    if-lez v5, :cond_1840

    .line 478
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    .line 480
    :cond_1840
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v16

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1876
    .catch Ljava/lang/Exception; {:try_start_175f .. :try_end_1876} :catch_209

    move/from16 v5, v17

    .line 463
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_1878
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_16e1

    .line 486
    .end local v7    # "j":I
    :cond_187c
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_187d
    :try_start_187d
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1a1c

    .line 487
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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
    :try_end_18b5
    .catch Ljava/lang/Exception; {:try_start_187d .. :try_end_18b5} :catch_1a25

    if-lez v8, :cond_1a14

    .line 488
    if-eqz v5, :cond_18ec

    .line 489
    const/4 v5, 0x0

    .line 491
    :try_start_18ba
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_18d5
    .catch Ljava/lang/Exception; {:try_start_18ba .. :try_end_18d5} :catch_211

    move/from16 v17, v5

    .end local v5    # "addType":Z
    .restart local v17    # "addType":Z
    :try_start_18d7
    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_18ea
    .catch Ljava/lang/Exception; {:try_start_18d7 .. :try_end_18ea} :catch_209

    move/from16 v5, v17

    .line 496
    .end local v17    # "addType":Z
    .restart local v5    # "addType":Z
    :cond_18ec
    :try_start_18ec
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I
    :try_end_18f9
    .catch Ljava/lang/Exception; {:try_start_18ec .. :try_end_18f9} :catch_1a25

    move-object/from16 v17, v4

    .end local v4    # "sInner":Ljava/lang/String;
    .local v17, "sInner":Ljava/lang/String;
    :try_start_18fb
    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

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

    .line 497
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 498
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

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

    .line 500
    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

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

    if-lez v4, :cond_19dd

    .line 501
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

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

    goto :goto_19de

    .line 500
    :cond_19dd
    const/4 v11, 0x0

    .line 503
    :goto_19de
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v9, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1a10
    .catch Ljava/lang/Exception; {:try_start_18fb .. :try_end_1a10} :catch_1a11

    goto :goto_1a16

    .line 509
    .end local v6    # "i":I
    .end local v7    # "j":I
    :catch_1a11
    move-exception v0

    move-object v4, v0

    goto :goto_1a29

    .line 487
    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_1a14
    move-object/from16 v17, v4

    .line 486
    .end local v4    # "sInner":Ljava/lang/String;
    .restart local v17    # "sInner":Ljava/lang/String;
    :goto_1a16
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    goto/16 :goto_187d

    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    :cond_1a1c
    move-object/from16 v17, v4

    .line 416
    .end local v4    # "sInner":Ljava/lang/String;
    .end local v7    # "j":I
    .restart local v17    # "sInner":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_139c

    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    :cond_1a22
    move-object/from16 v17, v4

    .line 511
    .end local v4    # "sInner":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v17    # "sInner":Ljava/lang/String;
    goto :goto_1a2c

    .line 509
    .end local v17    # "sInner":Ljava/lang/String;
    .restart local v4    # "sInner":Ljava/lang/String;
    :catch_1a25
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    .line 510
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v17    # "sInner":Ljava/lang/String;
    :goto_1a29
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 514
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1a2c
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 515
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 46
    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p4

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getIsHovered()Z

    move-result v5

    const v9, 0x3eb33333    # 0.35f

    if-nez v5, :cond_25

    if-eqz v11, :cond_21

    goto :goto_25

    :cond_21
    const v5, 0x3eb33333    # 0.35f

    goto :goto_28

    :cond_25
    :goto_25
    const v5, 0x3f266666    # 0.65f

    :goto_28
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 49
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 50
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 53
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 59
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v0, v12, v12, v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 64
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 67
    :try_start_126
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_158} :catch_159

    .line 72
    goto :goto_15d

    .line 70
    :catch_159
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_15d
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v12, v12, v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 75
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 79
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 83
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 88
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 92
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 94
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 96
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 97
    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 40
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 41
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 42
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 102
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats4(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getValue1()I
    .registers 2

    .line 519
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    return v0
.end method
