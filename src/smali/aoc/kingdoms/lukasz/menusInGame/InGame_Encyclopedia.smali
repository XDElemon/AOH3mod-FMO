.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Encyclopedia.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static sSearch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    .line 50
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 45

    .line 52
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v1

    .line 57
    .local v2, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    .line 59
    .local v1, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v23

    .line 60
    .local v23, "menuX":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int v24, v3, v4

    .line 62
    .local v24, "menuY":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v25, v3, 0x2

    .line 63
    .local v25, "buttonYPadding":I
    move v13, v2

    .line 64
    .local v13, "buttonX":I
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 66
    .local v12, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x6

    mul-int/lit8 v4, v4, 0x6

    add-int v35, v3, v4

    .line 67
    .local v35, "tTitleH":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int v36, v3, v4

    .line 69
    .local v36, "tTitleH_Inner":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v37

    .line 71
    .local v37, "tMaxInconWidth":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v3

    const-string v10, ": "

    const/4 v9, 0x1

    if-eqz v3, :cond_b6

    .line 72
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Search"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v3, 0x2

    mul-int/lit8 v3, v2, 0x2

    sub-int v16, v1, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v3, v8

    move-object/from16 v4, p0

    move-object v14, v8

    move v8, v2

    move/from16 v19, v13

    const/4 v13, 0x1

    .end local v13    # "buttonX":I
    .local v19, "buttonX":I
    move v9, v12

    move-object/from16 v38, v10

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v12, v3

    goto :goto_bf

    .line 86
    .end local v19    # "buttonX":I
    .restart local v13    # "buttonX":I
    :cond_b6
    move-object/from16 v38, v10

    move/from16 v19, v13

    const/4 v13, 0x1

    .end local v13    # "buttonX":I
    .restart local v19    # "buttonX":I
    const-string v3, ""

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    .line 89
    :goto_bf
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_ca

    const/4 v9, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v9, 0x0

    :goto_cb
    move/from16 v39, v9

    .line 90
    .local v39, "showAll":Z
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "innerSearch":Ljava/lang/String;
    const-string v10, "SecondLine1"

    const-string v9, "ArmyComposition0"

    const-string v3, "ArmyComposition"

    const/4 v8, 0x5

    const/4 v7, 0x3

    if-nez v39, :cond_f9

    new-array v4, v8, [Ljava/lang/String;

    aput-object v3, v4, v14

    aput-object v9, v4, v13

    aput-object v10, v4, v15

    const-string v5, "SecondLine2"

    aput-object v5, v4, v7

    const-string v5, "SecondLine3"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {v11, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f5

    goto :goto_fa

    :cond_f5
    move-object/from16 v40, v11

    goto/16 :goto_27a

    :cond_f9
    const/4 v6, 0x4

    .line 93
    :goto_fa
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Armies"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v29, v5, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v32, v1, v5

    move-object/from16 v26, v4

    move/from16 v31, v12

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v17, v12, v4

    .line 95
    .end local v12    # "buttonY":I
    .local v17, "buttonY":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v20, v1, v3

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move-object/from16 v4, p0

    move v6, v7

    const/4 v14, 0x3

    move v7, v2

    move/from16 v8, v17

    move-object v14, v9

    move/from16 v9, v20

    move-object v15, v10

    move/from16 v10, v36

    move-object/from16 v40, v11

    .end local v11    # "innerSearch":Ljava/lang/String;
    .local v40, "innerSearch":Ljava/lang/String;
    move/from16 v11, v37

    move-object v13, v12

    move/from16 v12, v21

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v17, v17, v3

    .line 131
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move/from16 v7, v17

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v17, v3

    .line 145
    .end local v17    # "buttonY":I
    .local v3, "buttonY":I
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 147
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "SecondLine2"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 149
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "SecondLine3"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 152
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 153
    .local v4, "textTitleH":I
    invoke-static {v3, v1, v4}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 156
    invoke-static {v3, v1, v4}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 159
    invoke-static {v3, v1, v4}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int v12, v3, v5

    .line 163
    .end local v3    # "buttonY":I
    .end local v4    # "textTitleH":I
    .restart local v12    # "buttonY":I
    :goto_27a
    const-string v13, "Manpower"

    if-nez v39, :cond_2a4

    const/4 v14, 0x5

    new-array v3, v14, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const-string v4, "Manpower0"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Manpower1"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "Manpower2"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Manpower3"

    const/4 v15, 0x4

    aput-object v4, v3, v15

    move-object/from16 v11, v40

    .end local v40    # "innerSearch":Ljava/lang/String;
    .restart local v11    # "innerSearch":Ljava/lang/String;
    invoke-static {v11, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a1

    goto :goto_2a8

    :cond_2a1
    move-object v14, v11

    goto/16 :goto_3f7

    .end local v11    # "innerSearch":Ljava/lang/String;
    .restart local v40    # "innerSearch":Ljava/lang/String;
    :cond_2a4
    move-object/from16 v11, v40

    const/4 v14, 0x5

    const/4 v15, 0x4

    .line 164
    .end local v40    # "innerSearch":Ljava/lang/String;
    .restart local v11    # "innerSearch":Ljava/lang/String;
    :goto_2a8
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v12

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v17, v12, v3

    .line 179
    .end local v12    # "buttonY":I
    .restart local v17    # "buttonY":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$5;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move-object/from16 v4, p0

    move v7, v2

    move/from16 v8, v17

    move/from16 v10, v36

    move-object v14, v11

    .end local v11    # "innerSearch":Ljava/lang/String;
    .local v14, "innerSearch":Ljava/lang/String;
    move/from16 v11, v37

    move-object v15, v12

    move/from16 v12, v21

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v17, v3

    .line 200
    .end local v17    # "buttonY":I
    .restart local v3    # "buttonY":I
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Manpower0"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 202
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Manpower1"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 204
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Manpower2"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 206
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Manpower3"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 208
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": 0% -> 100%: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    float-to-int v7, v7

    const-string v8, "MonthsX"

    invoke-virtual {v6, v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    invoke-direct {v4, v5, v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v12, v3, v4

    .line 212
    .end local v3    # "buttonY":I
    .restart local v12    # "buttonY":I
    :goto_3f7
    const-string v13, "%"

    if-nez v39, :cond_412

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "ReinforceArmyCost"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "ReinforceCostEncy"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40f

    goto :goto_412

    :cond_40f
    move v15, v12

    goto/16 :goto_492

    .line 213
    :cond_412
    :goto_412
    new-instance v15, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ReinforceArmyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v15

    move v6, v2

    move v7, v12

    move/from16 v9, v36

    move/from16 v10, v37

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v12, v3

    .line 216
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ReinforceCostEncy"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_ARMY_COST_MODIFIER:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    const/4 v6, 0x1

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v12, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v12, v3

    move v15, v12

    .line 220
    .end local v12    # "buttonY":I
    .local v15, "buttonY":I
    :goto_492
    if-nez v39, :cond_4ab

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "ProvinceContribution"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "ProvinceContribution0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a8

    goto :goto_4ab

    :cond_4a8
    move-object/from16 v21, v13

    goto :goto_50a

    .line 221
    :cond_4ab
    :goto_4ab
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$6;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ProvinceContribution"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    move-object/from16 v21, v13

    move-object v13, v12

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 236
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ProvinceContribution0"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 240
    :goto_50a
    if-nez v39, :cond_529

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "IncreasingMaximumManpower"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "IncreasingMaximumManpower0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "IncreasingMaximumManpower1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5da

    .line 241
    :cond_529
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$7;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "IncreasingMaximumManpower"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 256
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$8;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "IncreasingMaximumManpower0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 270
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$9;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "IncreasingMaximumManpower1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 285
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$10;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 301
    :cond_5da
    const-string v12, "RegimentsLimit"

    if-nez v39, :cond_602

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v4, v3

    const-string v3, "RegimnetsLimit0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "Regiments3"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5fa

    goto :goto_602

    :cond_5fa
    move-object/from16 v41, v14

    move-object/from16 v12, v21

    move-object/from16 v13, v38

    goto/16 :goto_801

    .line 302
    :cond_602
    :goto_602
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$11;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 317
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$12;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v11

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move-object v13, v11

    move/from16 v11, v37

    move-object/from16 v41, v14

    move-object v14, v12

    .end local v14    # "innerSearch":Ljava/lang/String;
    .local v41, "innerSearch":Ljava/lang/String;
    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 337
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "RegimnetsLimit0"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 339
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENTS_LIMIT_BASE_VALUE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "LocalManpower"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_MANPOWER_LEVEL:F

    const/16 v6, 0x64

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "CivilizationBonuses"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 342
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v13, v38

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    const/16 v6, 0xa

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v12, v21

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 345
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Regiments3"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 348
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Regiments"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ArmyMaintenance"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Regiments"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 353
    :goto_801
    if-nez v39, :cond_82e

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Battles"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "DeploymentPhase"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "DeploymentPhase0"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "DeploymentPhase1"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const-string v3, "DeploymentPhase2"

    const/4 v5, 0x4

    aput-object v3, v4, v5

    move-object/from16 v14, v41

    .end local v41    # "innerSearch":Ljava/lang/String;
    .restart local v14    # "innerSearch":Ljava/lang/String;
    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_828

    goto :goto_830

    :cond_828
    move-object/from16 v42, v12

    move-object/from16 v38, v13

    goto/16 :goto_998

    .end local v14    # "innerSearch":Ljava/lang/String;
    .restart local v41    # "innerSearch":Ljava/lang/String;
    :cond_82e
    move-object/from16 v14, v41

    .line 354
    .end local v41    # "innerSearch":Ljava/lang/String;
    .restart local v14    # "innerSearch":Ljava/lang/String;
    :goto_830
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$13;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Battles"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 369
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$14;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DeploymentPhase"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v11

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move-object/from16 v38, v13

    move-object v13, v11

    move/from16 v11, v37

    move-object/from16 v42, v12

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 384
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$15;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DeploymentPhase0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 398
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$16;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DeploymentPhase1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 413
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 414
    .local v9, "textTitleH":I
    invoke-static {v15, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 417
    invoke-static {v15, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 420
    invoke-static {v15, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 423
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$17;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DeploymentPhase2"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v10

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 440
    .end local v9    # "textTitleH":I
    :goto_998
    if-nez v39, :cond_9b2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "RoleOfGenerals"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "RoleOfGenerals0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "RoleOfGenerals1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3a

    .line 441
    :cond_9b2
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$18;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "RoleOfGenerals"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 456
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$19;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "RoleOfGenerals0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 470
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$20;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "RoleOfGenerals1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 486
    :cond_a3a
    if-nez v39, :cond_a54

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Generals"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "CombatExperience"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "CombatExperienceDesc"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_acd

    .line 487
    :cond_a54
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$21;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Generals"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v38

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "CombatExperience"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 502
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "CombatExperienceDesc"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 506
    :cond_acd
    if-nez v39, :cond_aec

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "BattlePhase"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "BattlePhase0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "BattlePhase1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "BattlePhase2"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b9d

    .line 507
    :cond_aec
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$22;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "BattlePhase"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 522
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$23;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "BattlePhase0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 536
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$24;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "BattlePhase1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 550
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$25;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "BattlePhase2"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 568
    :cond_b9d
    if-nez v39, :cond_bb7

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "MoraleAndRetreatMechanics"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "MoraleAndRetreatMechanics0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "MoraleAndRetreatMechanics1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c3f

    .line 569
    :cond_bb7
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$26;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "MoraleAndRetreatMechanics"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$26;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 584
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$27;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "MoraleAndRetreatMechanics0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$27;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 598
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$28;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "MoraleAndRetreatMechanics1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$28;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 615
    :cond_c3f
    if-nez v39, :cond_c54

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Discipline"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cb3

    .line 616
    :cond_c54
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$29;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Discipline"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$29;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 631
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$30;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$30;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 648
    :cond_cb3
    if-nez v39, :cond_cc8

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "DestructionOrSurvival"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "DestructionOrSurvival0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d26

    .line 649
    :cond_cc8
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$31;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DestructionOrSurvival"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v13

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$31;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 664
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_ROUND_ID:I

    const-string v6, "DestructionOrSurvival0"

    invoke-virtual {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 668
    :cond_d26
    const-string v12, "WithAWarScoreOfXTheWinningSideCanMakeDemands"

    const-string v13, "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace"

    if-nez v39, :cond_d56

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "War"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object v13, v4, v3

    const/4 v3, 0x3

    aput-object v12, v4, v3

    const-string v3, "EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces"

    const/4 v5, 0x4

    aput-object v3, v4, v5

    const-string v3, "AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"

    const/4 v5, 0x5

    aput-object v3, v4, v5

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d50

    goto :goto_d56

    :cond_d50
    move-object/from16 v41, v14

    move-object/from16 v14, v42

    goto/16 :goto_eb8

    .line 669
    :cond_d56
    :goto_d56
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Wars"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v29, v4, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v32, v1, v4

    move-object/from16 v26, v3

    move/from16 v31, v15

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 672
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "War"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->war:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v11

    move v6, v2

    move v7, v15

    move/from16 v9, v36

    move/from16 v10, v37

    move-object/from16 v41, v14

    move-object v14, v11

    .end local v14    # "innerSearch":Ljava/lang/String;
    .restart local v41    # "innerSearch":Ljava/lang/String;
    move/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 675
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->RELATIONS_TO_DECLARE_WAR:I

    const-string v6, "ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX"

    invoke-virtual {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 678
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_WHITE_PEACE_MIN_WAR_SCORE:F

    const/16 v7, 0x64

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v14, v42

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 681
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_MAKE_DEMANDS_MIN_WAR_SCORE:F

    const/16 v7, 0x64

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 684
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces"

    const-string v6, "X"

    invoke-virtual {v4, v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 687
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 691
    :goto_eb8
    if-nez v39, :cond_ee4

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "PeaceTreaty"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "PeaceNegotiations"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "PeaceAnnex"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "PeaceDemands"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v3, 0x4

    aput-object v12, v4, v3

    const/4 v3, 0x5

    aput-object v13, v4, v3

    move-object/from16 v11, v41

    .end local v41    # "innerSearch":Ljava/lang/String;
    .restart local v11    # "innerSearch":Ljava/lang/String;
    invoke-static {v11, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee0

    goto :goto_ee6

    :cond_ee0
    move-object/from16 v43, v11

    goto/16 :goto_101f

    .end local v11    # "innerSearch":Ljava/lang/String;
    .restart local v41    # "innerSearch":Ljava/lang/String;
    :cond_ee4
    move-object/from16 v11, v41

    .line 692
    .end local v41    # "innerSearch":Ljava/lang/String;
    .restart local v11    # "innerSearch":Ljava/lang/String;
    :goto_ee6
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "PeaceNegotiations"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v29, v4, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v32, v1, v4

    move-object/from16 v26, v3

    move/from16 v31, v15

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 695
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "PeaceTreaty"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->peace:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v10

    move v6, v2

    move v7, v15

    move/from16 v9, v36

    move-object/from16 v21, v13

    move-object v13, v10

    move/from16 v10, v37

    move-object/from16 v43, v11

    .end local v11    # "innerSearch":Ljava/lang/String;
    .local v43, "innerSearch":Ljava/lang/String;
    move/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 698
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_MAKE_DEMANDS_MIN_WAR_SCORE:F

    const/16 v7, 0x64

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 701
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_WHITE_PEACE_MIN_WAR_SCORE:F

    const/16 v7, 0x64

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v21

    invoke-virtual {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 704
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "PeaceDemands"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 707
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "PeaceAnnex"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 711
    :goto_101f
    if-nez v39, :cond_104b

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Siege"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "SiegeProgress"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string v4, "MinimumArmyRequiredToSiegeProvinceX"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    move-object/from16 v13, v43

    .end local v43    # "innerSearch":Ljava/lang/String;
    .local v13, "innerSearch":Ljava/lang/String;
    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1178

    goto :goto_104d

    .end local v13    # "innerSearch":Ljava/lang/String;
    .restart local v43    # "innerSearch":Ljava/lang/String;
    :cond_104b
    move-object/from16 v13, v43

    .line 712
    .end local v43    # "innerSearch":Ljava/lang/String;
    .restart local v13    # "innerSearch":Ljava/lang/String;
    :goto_104d
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$32;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Siege"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$32;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 727
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$33;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "SiegeProgress"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$33;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 742
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$34;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$34;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 756
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$35;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$35;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 770
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$36;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$36;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 784
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v5, v5, v6

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    const-string v7, "MinimumArmyRequiredToSiegeProvinceX"

    invoke-virtual {v4, v7, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 788
    :cond_1178
    const-string v3, "Fogofwar"

    if-nez v39, :cond_118d

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v4, "FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121c

    .line 789
    :cond_118d
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$37;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v6, 0x4

    div-int/lit8 v30, v5, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v33, v1, v5

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$37;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v15, v4

    .line 804
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$38;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$38;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 819
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 824
    :cond_121c
    const-string v3, "WarWeariness"

    if-nez v39, :cond_1236

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v4, "WarWearinessH1"

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "WarWearinessH2"

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12eb

    .line 825
    :cond_1236
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v6, 0x4

    div-int/lit8 v29, v5, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v32, v1, v5

    move-object/from16 v26, v4

    move/from16 v31, v15

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v15, v4

    .line 828
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$39;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->weariness:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$39;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 843
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "WarWearinessH1"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 846
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "WarWearinessH2"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 851
    :cond_12eb
    const-string v3, "Diplomacy"

    if-nez v39, :cond_1300

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v4, "DifferentGovReligion"

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_138b

    .line 852
    :cond_1300
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v6, 0x4

    div-int/lit8 v29, v5, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v32, v1, v5

    move-object/from16 v26, v4

    move/from16 v31, v15

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v15, v4

    .line 855
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move v6, v2

    move v7, v15

    move/from16 v9, v36

    move/from16 v10, v37

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 858
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "DifferentGovReligion"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 862
    :cond_138b
    const-string v3, "CivilizationStability"

    if-nez v39, :cond_13a0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v4, "CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1434

    .line 863
    :cond_13a0
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$40;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v6, 0x4

    div-int/lit8 v30, v5, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v33, v1, v5

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$40;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v15, v4

    .line 878
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$41;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->civStability:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$41;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 893
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$42;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$42;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 910
    :cond_1434
    if-nez v39, :cond_1453

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Province"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "ProvinceMonthlyIncome"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Income0"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "Income1"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1517

    .line 911
    :cond_1453
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$43;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Province"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$43;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 926
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$44;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ProvinceMonthlyIncome"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$44;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 941
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$45;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Income0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$45;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 955
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$46;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Income1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$46;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 972
    :cond_1517
    if-nez v39, :cond_152c

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "TaxEfficiency"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "TaxEfficiency0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158b

    .line 973
    :cond_152c
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$47;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "TaxEfficiency"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$47;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 988
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$48;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "TaxEfficiency0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$48;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1004
    :cond_158b
    if-nez v39, :cond_15a5

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "EconomyOfProvince"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "Economy0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Economy1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_162d

    .line 1005
    :cond_15a5
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$49;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "EconomyOfProvince"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$49;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1020
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$50;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Economy0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$50;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1034
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$51;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Economy1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$51;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1051
    :cond_162d
    if-nez v39, :cond_164c

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "ProducedGoods"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "Production0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Production1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "Production2"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16fd

    .line 1052
    :cond_164c
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$52;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ProducedGoods"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$52;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1067
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$53;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Production0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$53;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1081
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$54;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Production1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$54;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1095
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$55;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Production2"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$55;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1118
    :cond_16fd
    if-nez v39, :cond_1717

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Population"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "Population0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_179f

    .line 1119
    :cond_1717
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$56;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Population"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->population:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$56;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1134
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$57;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Population0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$57;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1148
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$58;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$58;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1164
    :cond_179f
    if-nez v39, :cond_17b4

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "GrowthRate"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "GrowthRate0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1813

    .line 1165
    :cond_17b4
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$59;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "GrowthRate"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$59;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1180
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$60;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "GrowthRate0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$60;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1197
    :cond_1813
    if-nez v39, :cond_182d

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Diseases"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "Plague0"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Plague1"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18b1

    .line 1198
    :cond_182d
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$61;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Diseases"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$61;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1213
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$62;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Plague0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$62;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1227
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Plague1"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1231
    :cond_18b1
    if-nez v39, :cond_18d5

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "LegacyPoints"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Legacy"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Legacy0"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "Legacy1"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Legacy2"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19ba

    .line 1232
    :cond_18d5
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$63;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "LegacyPoints"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$63;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1247
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$64;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Legacy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$64;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1262
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Legacy0"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1264
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$65;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Legacy1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$65;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1278
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Legacy2"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1283
    :cond_19ba
    if-nez v39, :cond_19d6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v3, "Advisors"

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const-string v3, "Advisor0"

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a73

    .line 1284
    :cond_19d6
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$66;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$66;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1299
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$67;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Advisors"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$67;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1314
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$68;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Advisor0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v2

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$68;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1330
    :cond_1a73
    if-nez v39, :cond_1a8d

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Corruption"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "SupremeCourt"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Corruption0"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b23

    .line 1331
    :cond_1a8d
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$69;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Corruption"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$69;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1346
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$70;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "SupremeCourt"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->corruption:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v14

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$70;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1361
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Corruption0"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1366
    :cond_1b23
    if-nez v39, :cond_1b43

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "Technologies"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "Research"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "Technology0"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "Technology1"

    const/4 v14, 0x3

    aput-object v3, v4, v14

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c01

    goto :goto_1b44

    :cond_1b43
    const/4 v14, 0x3

    .line 1367
    :goto_1b44
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$71;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Technologies"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v30, v4, 0x4

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v1, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v15

    move/from16 v34, v35

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$71;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1382
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Research"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move v6, v2

    move v7, v15

    move/from16 v9, v36

    move/from16 v10, v37

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1385
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Technology0"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1387
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$72;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Technology1"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v7, v15

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$72;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1404
    :cond_1c01
    if-nez v39, :cond_1c16

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "CivilizationAdvantages"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c73

    .line 1405
    :cond_1c16
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$73;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "CivilizationAdvantages"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v10, v36

    move/from16 v11, v37

    move-object v14, v12

    move/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$73;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v15, v3

    .line 1420
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    invoke-direct {v3, v4, v2, v15, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1424
    :cond_1c73
    const-string v3, "CivilizationRank"

    if-nez v39, :cond_1c88

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v5, v14

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c84

    goto :goto_1c89

    :cond_1c84
    move/from16 v34, v19

    goto/16 :goto_1db4

    :cond_1c88
    const/4 v14, 0x0

    .line 1425
    :goto_1c89
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v6, 0x4

    div-int/lit8 v29, v5, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v32, v1, v5

    move-object/from16 v26, v4

    move/from16 v31, v15

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v15, v4

    .line 1428
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_IMG(I)I

    move-result v5

    mul-int/lit8 v3, v2, 0x2

    sub-int v8, v1, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v3, v12

    move v6, v2

    move v7, v15

    move/from16 v9, v36

    move/from16 v10, v37

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1431
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1432
    .local v3, "maxIconWidth":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v1, v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    .line 1434
    .local v4, "buttonW_Rank":I
    const/4 v5, 0x0

    .local v5, "i":I
    :cond_1d17
    :goto_1d17
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MANPOWER_MAX:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1d74

    .line 1435
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_1d26

    .line 1436
    move v6, v2

    move/from16 v19, v6

    .end local v19    # "buttonX":I
    .local v6, "buttonX":I
    goto :goto_1d2c

    .line 1439
    .end local v6    # "buttonX":I
    .restart local v19    # "buttonX":I
    :cond_1d26
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    move/from16 v19, v6

    .line 1442
    :goto_1d2c
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;

    .line 1443
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_Name(I)Ljava/lang/String;

    move-result-object v28

    .line 1444
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_IMG(I)I

    move-result v29

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    move-object/from16 v26, v6

    move-object/from16 v27, p0

    move/from16 v30, v19

    move/from16 v31, v15

    move/from16 v32, v4

    move/from16 v34, v3

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    .line 1442
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 1459
    add-int/lit8 v5, v5, 0x1

    .line 1460
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_1d17

    .line 1461
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v15, v6

    goto :goto_1d17

    .line 1465
    .end local v5    # "i":I
    :cond_1d74
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_1d79
    if-ge v5, v6, :cond_1db1

    .line 1466
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    if-ge v15, v7, :cond_1dae

    .line 1467
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v8

    .line 1465
    :cond_1dae
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d79

    .line 1471
    .end local v5    # "i":I
    .end local v6    # "iSize":I
    :cond_1db1
    move v5, v2

    move/from16 v34, v5

    .line 1474
    .end local v3    # "maxIconWidth":I
    .end local v4    # "buttonW_Rank":I
    .end local v19    # "buttonX":I
    .local v34, "buttonX":I
    :goto_1db4
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v3

    if-eqz v3, :cond_1ea0

    .line 1475
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "More"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v5, 0x4

    div-int/lit8 v29, v4, 0x4

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v32, v1, v4

    move-object/from16 v26, v3

    move/from16 v31, v15

    move/from16 v33, v35

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v15, v3

    .line 1478
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_1e02

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_1e04

    :cond_1e02
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    :goto_1e04
    move v10, v3

    .line 1480
    .local v10, "buttonH":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$75;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ListOfUnits"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v9, v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int v11, v3, v4

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object v3, v12

    move-object/from16 v4, p0

    move v7, v2

    move v8, v15

    move/from16 v26, v1

    move-object v1, v12

    .end local v1    # "menuWidth":I
    .local v26, "menuWidth":I
    move/from16 v12, v19

    move-object/from16 v27, v13

    const/16 v28, 0x3

    const/16 v29, 0x1

    .end local v13    # "innerSearch":Ljava/lang/String;
    .local v27, "innerSearch":Ljava/lang/String;
    move-wide/from16 v13, v20

    invoke-direct/range {v3 .. v14}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$75;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIIIJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v1, v15

    .line 1512
    .end local v15    # "buttonY":I
    .local v1, "buttonY":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$76;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ListOfBuildings"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    mul-int/lit8 v4, v2, 0x2

    sub-int v17, v26, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    add-int v19, v4, v5

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move-object v11, v3

    move-object/from16 v12, p0

    const/4 v4, 0x2

    move v15, v2

    move/from16 v16, v1

    move/from16 v18, v10

    invoke-direct/range {v11 .. v22}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$76;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIIIJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int v15, v1, v3

    .end local v1    # "buttonY":I
    .restart local v15    # "buttonY":I
    goto :goto_1ea7

    .line 1474
    .end local v10    # "buttonH":I
    .end local v26    # "menuWidth":I
    .end local v27    # "innerSearch":Ljava/lang/String;
    .local v1, "menuWidth":I
    .restart local v13    # "innerSearch":Ljava/lang/String;
    :cond_1ea0
    move/from16 v26, v1

    move-object/from16 v27, v13

    const/4 v4, 0x2

    const/16 v28, 0x3

    .line 1546
    .end local v1    # "menuWidth":I
    .end local v13    # "innerSearch":Ljava/lang/String;
    .restart local v26    # "menuWidth":I
    .restart local v27    # "innerSearch":Ljava/lang/String;
    :goto_1ea7
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v15, v1

    .line 1547
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v24

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v3

    if-eqz v3, :cond_1ec0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v3, v5

    goto :goto_1eca

    :cond_1ec0
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    :goto_1eca
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    sub-int/2addr v1, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1549
    .local v10, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v5, v26

    const/4 v11, 0x0

    .end local v26    # "menuWidth":I
    .local v5, "menuWidth":I
    invoke-direct {v1, v11, v11, v5, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$77;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Encyclopedia"

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v19, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$77;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;ZZI)V

    .line 1556
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v1

    if-eqz v1, :cond_1f0b

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    goto :goto_1f0f

    :cond_1f0b
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    :goto_1f0f
    move v4, v1

    .line 1551
    const/4 v8, 0x0

    const/4 v9, 0x1

    move v12, v5

    .end local v5    # "menuWidth":I
    .local v12, "menuWidth":I
    move-object/from16 v1, p0

    move v13, v2

    .end local v2    # "paddingLeft":I
    .local v13, "paddingLeft":I
    move-object v2, v3

    move v3, v4

    move/from16 v4, v24

    move v6, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 1558
    iput-boolean v11, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->drawScrollPositionAlways:Z

    .line 1559
    return-void
.end method

.method public static searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p0, "innerSearch"    # Ljava/lang/String;
    .param p1, "toCheck"    # [Ljava/lang/String;

    .line 1597
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_1c

    .line 1598
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 1599
    return v1

    .line 1597
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1603
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 2

    .line 1581
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 1583
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 1584
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 1563
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3b

    .line 1564
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    if-eqz v0, :cond_28

    .line 1565
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int p2, v0, v1

    goto :goto_3b

    .line 1568
    :cond_28
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    add-int p2, v0, v1

    .line 1572
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1573
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 1574
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1576
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 1577
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1588
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 1589
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    .line 1591
    if-nez p1, :cond_e

    .line 1592
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 1594
    :cond_e
    return-void
.end method
