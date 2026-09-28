.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Event;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Event.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static eventID:I

.field public static eventType:I

.field public static lTime:J


# instance fields
.field public event:Laoc/kingdoms/lukasz/events/Event;

.field public imgHeight:I

.field public imgWidth:I

.field public madeDecision:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    .line 49
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    .line 50
    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/events/Event;II)V
    .registers 29
    .param p1, "nEvent"    # Laoc/kingdoms/lukasz/events/Event;
    .param p2, "nEventType"    # I
    .param p3, "nEventID"    # I

    .line 54
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 51
    const/4 v12, 0x1

    iput v12, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    .line 52
    iput v12, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    .line 53
    const/4 v13, 0x0

    iput-boolean v13, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->madeDecision:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 56
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object/from16 v15, p1

    iput-object v15, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    .line 57
    sput p2, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    .line 58
    sput p3, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    .line 59
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->super_event:Z

    if-eqz v0, :cond_35

    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->musicName:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 61
    :try_start_27
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget-object v1, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->musicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_31

    .line 64
    goto :goto_35

    .line 62
    :catch_31
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    :goto_35
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v9, v0, v1

    .line 67
    .local v9, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v16

    .line 68
    .local v16, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    .line 69
    .local v8, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v17, v0, v1

    .line 70
    .local v17, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v18, v0, v1

    .line 71
    .local v18, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v0, 0x2

    .line 72
    .local v1, "buttonY":I
    sget v19, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 73
    .local v19, "buttonX":I
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->image:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEventIMG(Ljava/lang/String;)V

    .line 76
    :try_start_83
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 77
    .local v0, "fScale":F
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v8, v2

    iput v2, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    .line 78
    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    .line 79
    iget v2, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a8} :catch_aa

    add-int/2addr v1, v2

    .line 83
    .end local v0    # "fScale":F
    goto :goto_af

    .line 80
    :catch_aa
    move-exception v0

    .line 81
    .local v0, "var16":Ljava/lang/Exception;
    move-object v2, v0

    .line 82
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 85
    .end local v0    # "var16":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_af
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    const/4 v7, 0x5

    if-eq v0, v10, :cond_cf

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    if-eq v0, v7, :cond_cf

    .line 86
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v3, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v9, 0x2

    sub-int v3, v8, v3

    invoke-direct {v0, v2, v9, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12d

    .line 88
    :cond_cf
    const-string v2, ""

    .line 89
    .local v2, "sResource":Ljava/lang/String;
    const-string v3, ""

    .line 92
    .local v3, "sPriceChange":Ljava/lang/String;
    :try_start_d3
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue1()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 93
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue2()F

    move-result v0

    const/16 v4, 0xa

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_10a} :catch_10c

    move-object v3, v0

    .line 97
    goto :goto_111

    .line 94
    :catch_10c
    move-exception v0

    .line 95
    .local v0, "var15":Ljava/lang/Exception;
    move-object v4, v0

    .line 96
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 98
    .end local v0    # "var15":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_111
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->no_text:Z

    if-nez v0, :cond_12d

    .line 99
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v5, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v9, 0x2

    sub-int v5, v8, v5

    invoke-direct {v0, v4, v9, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "sResource":Ljava/lang/String;
    .end local v3    # "sPriceChange":Ljava/lang/String;
    :cond_12d
    :goto_12d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 106
    const/4 v0, 0x0

    move/from16 v20, v1

    .end local v1    # "buttonY":I
    .local v0, "tMenuHeight":I
    .local v20, "buttonY":I
    :goto_145
    iget-object v1, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a4

    .line 107
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/EventOption;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v1, v9, 0x2

    sub-int v21, v8, v1

    const/16 v22, 0x1

    const/4 v5, -0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v13, v6

    move v6, v9

    const/16 v23, 0x5

    move/from16 v7, v20

    move/from16 v24, v8

    .end local v8    # "menuWidth":I
    .local v24, "menuWidth":I
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "paddingLeft":I
    .local v21, "paddingLeft":I
    move/from16 v9, v22

    const/16 v22, 0x2

    move v10, v0

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v20, v20, v1

    .line 106
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v21

    move/from16 v8, v24

    const/4 v7, 0x5

    const/4 v10, 0x2

    const/4 v13, 0x0

    goto :goto_145

    .line 164
    .end local v21    # "paddingLeft":I
    .end local v24    # "menuWidth":I
    .restart local v8    # "menuWidth":I
    .restart local v9    # "paddingLeft":I
    :cond_1a4
    move/from16 v24, v8

    move/from16 v21, v9

    const/16 v22, 0x2

    const/16 v23, 0x5

    .end local v8    # "menuWidth":I
    .end local v9    # "paddingLeft":I
    .restart local v21    # "paddingLeft":I
    .restart local v24    # "menuWidth":I
    const/4 v1, 0x0

    .line 165
    .end local v20    # "buttonY":I
    .restart local v1    # "buttonY":I
    const/4 v0, 0x0

    .line 168
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move v10, v1

    .end local v1    # "buttonY":I
    .local v2, "inProvinceID":I
    .local v10, "buttonY":I
    :goto_1b3
    if-ge v0, v2, :cond_1ef

    .line 169
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    if-ge v10, v1, :cond_1ec

    .line 170
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move v10, v1

    .line 168
    :cond_1ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b3

    .line 174
    :cond_1ef
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v18

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v12, v24

    const/4 v4, 0x0

    .end local v24    # "menuWidth":I
    .local v12, "menuWidth":I
    invoke-direct {v1, v4, v4, v12, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    .line 177
    .end local v2    # "inProvinceID":I
    .local v1, "inProvinceID":I
    if-gez v1, :cond_232

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    if-ltz v2, :cond_232

    .line 178
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    goto :goto_25e

    .line 179
    :cond_232
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_25e

    .line 180
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    .line 183
    :cond_25e
    :goto_25e
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 184
    .end local v1    # "inProvinceID":I
    .local v13, "inProvinceID":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EventInX"

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/4 v5, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v12, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v4, v1, 0x5

    const/4 v9, 0x0

    const/16 v20, 0x1

    move-object/from16 v1, p0

    move-object v2, v8

    move v5, v12

    move v6, v0

    move-object v7, v14

    move v8, v9

    move/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->drawScrollPositionAlways:Z

    .line 190
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 194
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    iget-object v0, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->important:Z

    if-eqz v0, :cond_f

    .line 195
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    .line 198
    :cond_f
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_31

    .line 199
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move/from16 v16, v0

    .end local p3    # "iTranslateY":I
    .local v0, "iTranslateY":I
    goto :goto_33

    .line 198
    .end local v0    # "iTranslateY":I
    .restart local p3    # "iTranslateY":I
    :cond_31
    move/from16 v16, p3

    .line 201
    .end local p3    # "iTranslateY":I
    .local v16, "iTranslateY":I
    :goto_33
    iget-object v0, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->no_background:Z

    if-nez v0, :cond_87

    .line 202
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v6, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v1

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v15}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 205
    :cond_87
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 208
    :try_start_8c
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    add-int v4, v0, v16

    iget v5, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    iget v0, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a1} :catch_126

    move-object/from16 v2, p1

    move-object v15, v6

    move v6, v0

    :try_start_a5
    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 209
    iget-object v0, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->no_background:Z

    if-nez v0, :cond_11c

    .line 210
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->eventCorner:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    add-int v10, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    add-int v11, v0, v16

    iget v12, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    iget v13, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 211
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 212
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    iget v2, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    add-int/2addr v0, v2

    add-int v4, v0, v16

    iget v5, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v0, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 213
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    add-int v10, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    iget v1, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    add-int/2addr v0, v1

    add-int v11, v0, v16

    iget v12, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_110} :catch_123

    mul-int/lit8 v13, v0, 0x2

    const/4 v14, 0x0

    const/4 v0, 0x1

    move-object/from16 v9, p1

    move-object v6, v15

    move v15, v0

    :try_start_118
    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_11d

    .line 209
    :cond_11c
    move-object v6, v15

    .line 215
    :goto_11d
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_122} :catch_126

    .line 217
    goto :goto_127

    .line 216
    :catch_123
    move-exception v0

    move-object v6, v15

    goto :goto_127

    :catch_126
    move-exception v0

    .line 218
    :goto_127
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 219
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 222
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->madeDecision:Z

    if-nez v0, :cond_14

    if-nez p1, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->important:Z

    if-eqz v0, :cond_14

    .line 223
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "NotAllowedToCloseBeforeDecide"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 224
    return-void

    .line 226
    :cond_14
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 227
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    .line 228
    return-void
.end method
