.class public Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CivilizationAdvantages.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveCivID:I

.field public static iActiveSortID:I

.field public static iMenuWidth:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    .line 49
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime2:J

    .line 51
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iMenuWidth:I

    .line 53
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    .line 60
    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 46
    .param p1, "nActiveCivID"    # I

    .line 62
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    .line 67
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    .line 68
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v32, v1, v2

    .line 69
    .local v32, "paddingLeft2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v33

    .line 71
    .local v33, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    .line 72
    .local v2, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iMenuWidth:I

    .line 74
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v34

    .line 75
    .local v34, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int v35, v1, v4

    .line 77
    .local v35, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v4, v3

    add-int v36, v1, v4

    .line 78
    .local v36, "buttonYPadding":I
    const/4 v1, 0x0

    .line 79
    .local v1, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_68

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_6a

    :cond_68
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_6a
    move/from16 v20, v4

    .line 81
    .local v20, "buttonH":I
    const/4 v15, 0x0

    sput-boolean v15, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    .line 83
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const-string v14, "CivilizationAdvantages"

    const-string v13, ": "

    const/4 v11, 0x1

    if-ne v4, v5, :cond_2a1

    .line 84
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GroupsOfAdvantages"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v16, v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int v17, v4, v6

    const/4 v6, -0x1

    move-object v4, v10

    move v9, v1

    move-object v15, v10

    move/from16 v10, v16

    const/4 v3, 0x1

    move/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 87
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$1;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Administrative"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->government:I

    mul-int/lit8 v5, v32, 0x2

    sub-int v5, v2, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/lit8 v19, v5, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v21

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-nez v5, :cond_e1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_e3

    :cond_e1
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_e3
    move/from16 v23, v5

    const/16 v22, 0x0

    move-object v11, v13

    move-object v13, v4

    move-object v10, v14

    move-object/from16 v14, p0

    const/4 v9, 0x0

    move/from16 v17, v32

    move/from16 v18, v1

    invoke-direct/range {v13 .. v23}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Economic"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    mul-int/lit8 v5, v32, 0x2

    sub-int v5, v2, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/2addr v5, v6

    add-int v5, v32, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v5, v7

    mul-int/lit8 v5, v32, 0x2

    sub-int v5, v2, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v7

    div-int/lit8 v27, v5, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v29

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-ne v5, v3, :cond_12c

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_12e

    :cond_12c
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_12e
    move/from16 v31, v5

    const/16 v30, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v26, v1

    move/from16 v28, v20

    invoke-direct/range {v21 .. v31}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 197
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$3;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Military"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v5, v32, 0x2

    sub-int v5, v2, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/lit8 v27, v5, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v29

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-ne v5, v6, :cond_17a

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_17c

    :cond_17a
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_17c
    move/from16 v31, v5

    const/16 v30, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v25, v32

    move/from16 v26, v1

    move/from16 v28, v20

    invoke-direct/range {v21 .. v31}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$4;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "All"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v5, v32, 0x2

    sub-int v5, v2, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/2addr v5, v6

    add-int v5, v32, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v5, v7

    mul-int/lit8 v5, v32, 0x2

    sub-int v5, v2, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v7

    div-int/lit8 v27, v5, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v29

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1c6

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1c8

    :cond_1c6
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1c8
    move/from16 v31, v5

    const/16 v30, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v26, v1

    move/from16 v28, v20

    invoke-direct/range {v21 .. v31}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 303
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v4

    if-lez v4, :cond_302

    .line 304
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Advantages"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v23, v5, 0x4

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v26, v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v27, v5, v6

    const-string v28, ""

    move-object/from16 v21, v4

    move/from16 v25, v1

    invoke-direct/range {v21 .. v28}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 307
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$5;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "UnlockAdvantage"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Random"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v5, v32, 0x2

    sub-int v27, v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v29

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-nez v5, :cond_277

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_279

    :cond_277
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_279
    move/from16 v31, v5

    const/16 v30, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v25, v32

    move/from16 v26, v1

    move/from16 v28, v20

    invoke-direct/range {v21 .. v31}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    goto :goto_302

    .line 343
    :cond_2a1
    move-object v11, v13

    move-object v10, v14

    const/4 v3, 0x1

    const/4 v9, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    .line 345
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$6;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v5, v32, 0x2

    sub-int v27, v2, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v25, v32

    move/from16 v26, v1

    move/from16 v28, v20

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 367
    :cond_302
    :goto_302
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x5

    add-int v8, v4, v5

    .line 368
    .local v8, "tTitleH":I
    const/4 v4, 0x0

    .line 370
    .local v4, "startPosX":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    .line 372
    .local v7, "toSort":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;>;"
    const/4 v5, 0x0

    move v13, v4

    .end local v4    # "startPosX":I
    .local v5, "i":I
    .local v13, "startPosX":I
    :goto_313
    sget v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v5, v4, :cond_3f01

    .line 373
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v6, :cond_355

    .line 374
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-ltz v4, :cond_332

    .line 375
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GroupID:I

    if-eq v4, v6, :cond_332

    .line 376
    goto :goto_362

    .line 380
    :cond_332
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-nez v4, :cond_36c

    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v5, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v4

    if-nez v4, :cond_36c

    .line 381
    goto :goto_362

    .line 385
    :cond_355
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v5, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v4

    if-nez v4, :cond_36c

    .line 386
    nop

    .line 372
    :goto_362
    move/from16 v39, v1

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v40, v12

    goto/16 :goto_3ef3

    .line 390
    :cond_36c
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x2

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v14, v2, 0x2

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length v15, v15

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v16

    mul-int v15, v15, v16

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x2

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length v9, v9

    sub-int/2addr v9, v3

    mul-int v16, v16, v9

    add-int v15, v15, v16

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 392
    .end local v13    # "startPosX":I
    .restart local v4    # "startPosX":I
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    const-string v15, "%"

    const-string v13, ""

    if-eqz v6, :cond_484

    .line 393
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v6, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v16, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 395
    move-object/from16 v38, v11

    const-string v11, "ConstructionCost"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v18, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/4 v10, 0x0

    move-object/from16 v39, v13

    move-object v13, v3

    move-object/from16 v41, v15

    move-object v15, v9

    move/from16 v17, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 394
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3f8
    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    array-length v9, v9

    if-ge v3, v9, :cond_463

    .line 398
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$7;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int v10, v10, v3

    add-int/2addr v10, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v10, v13

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 399
    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v39

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 400
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v13, v41

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object/from16 v21, v9

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 398
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f8

    .line 404
    .end local v3    # "j":I
    :cond_463
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v9, v2, v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    invoke-direct {v3, v9, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v6    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v39, v1

    move/from16 v40, v12

    goto/16 :goto_3ef2

    .line 407
    :cond_484
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    const/16 v14, 0xa

    move-object/from16 v43, v15

    move-object v15, v13

    move-object/from16 v13, v43

    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    if-eqz v3, :cond_567

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v3, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 410
    move/from16 v39, v1

    .end local v1    # "buttonY":I
    .local v39, "buttonY":I
    const-string v1, "AdministrationBuildingsCost"

    invoke-virtual {v11, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v17, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v18, v2, v11

    const/16 v17, 0x0

    move-object v11, v13

    move-object v13, v6

    move/from16 v40, v12

    const/16 v12, 0xa

    .end local v12    # "paddingLeft":I
    .local v40, "paddingLeft":I
    move v14, v9

    move-object v9, v15

    move-object v15, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 409
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4e5
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    array-length v10, v10

    if-ge v6, v10, :cond_54a

    .line 413
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$8;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v6

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v6

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 414
    invoke-virtual {v13, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 415
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    aget v14, v14, v6

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 413
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e5

    .line 419
    .end local v6    # "j":I
    :cond_54a
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v1, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v3    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 422
    .end local v39    # "buttonY":I
    .end local v40    # "paddingLeft":I
    .restart local v1    # "buttonY":I
    .restart local v12    # "paddingLeft":I
    :cond_567
    move/from16 v39, v1

    move/from16 v40, v12

    move-object v11, v13

    move-object v9, v15

    const/16 v12, 0xa

    .end local v1    # "buttonY":I
    .end local v12    # "paddingLeft":I
    .restart local v39    # "buttonY":I
    .restart local v40    # "paddingLeft":I
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    if-eqz v1, :cond_63e

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 425
    const-string v15, "MilitaryBuildingsCost"

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move-object v10, v15

    move-object v15, v6

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 424
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5bc
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    array-length v6, v6

    if-ge v3, v6, :cond_621

    .line 428
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$9;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v3

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v3

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 429
    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 430
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    aget v14, v14, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object/from16 v21, v6

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 428
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_5bc

    .line 434
    .end local v3    # "j":I
    :cond_621
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 437
    :cond_63e
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    if-eqz v1, :cond_70d

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 440
    const-string v15, "EconomyBuildingsCost"

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move-object v10, v15

    move-object v15, v6

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 439
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_68b
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    array-length v6, v6

    if-ge v3, v6, :cond_6f0

    .line 443
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$10;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v3

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v3

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 444
    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 445
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    aget v14, v14, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object/from16 v21, v6

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 443
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_68b

    .line 449
    .end local v3    # "j":I
    :cond_6f0
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 452
    :cond_70d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    if-eqz v1, :cond_7dc

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 455
    const-string v15, "ConstructionTime"

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move-object v10, v15

    move-object v15, v6

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 454
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_75a
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    array-length v6, v6

    if-ge v3, v6, :cond_7bf

    .line 458
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$11;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v3

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v3

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 459
    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 460
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    aget v14, v14, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    move-object/from16 v21, v6

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 458
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_75a

    .line 464
    .end local v3    # "j":I
    :cond_7bf
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 467
    :cond_7dc
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    if-eqz v1, :cond_8ab

    .line 468
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 470
    const-string v15, "WonderConstructionCost"

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move-object v10, v15

    move-object v15, v6

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 469
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_829
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    array-length v6, v6

    if-ge v3, v6, :cond_88e

    .line 473
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$12;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v3

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v3

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 474
    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 475
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    aget v14, v14, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    move-object/from16 v21, v6

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 473
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_829

    .line 479
    .end local v3    # "j":I
    :cond_88e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 482
    :cond_8ab
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    const/4 v3, 0x0

    const-string v6, "+"

    if-eqz v1, :cond_98f

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 485
    const-string v12, "TaxEfficiency"

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v17, 0x2

    mul-int/lit8 v13, v13, 0x2

    sub-int v18, v2, v13

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 484
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8fa
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    array-length v13, v13

    if-ge v10, v13, :cond_972

    .line 488
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$13;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v14

    mul-int v14, v14, v10

    add-int/2addr v14, v4

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    mul-int v15, v15, v10

    add-int v23, v14, v15

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v14

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 489
    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v15, v15, v10

    cmpl-float v15, v15, v3

    if-lez v15, :cond_93b

    move-object v15, v6

    goto :goto_93c

    :cond_93b
    move-object v15, v9

    :goto_93c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v15, v15, v10

    const/16 v3, 0xa

    invoke-static {v15, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object/from16 v21, v13

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 488
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_8fa

    .line 494
    .end local v10    # "j":I
    :cond_972
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 497
    :cond_98f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    if-eqz v1, :cond_a70

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 500
    const-string v15, "ProvinceMaintenance"

    invoke-virtual {v12, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v18, v2, v12

    const/16 v17, 0x0

    move-object v13, v3

    move-object v12, v15

    move-object v15, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 499
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_9dc
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    array-length v10, v10

    if-ge v3, v10, :cond_a53

    .line 503
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$14;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v3

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v3

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 504
    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v14, v14, v3

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_a1d

    move-object v14, v6

    goto :goto_a1e

    :cond_a1d
    move-object v14, v9

    :goto_a1e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v14, v14, v3

    const/16 v15, 0xa

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 503
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_9dc

    .line 509
    .end local v3    # "j":I
    :cond_a53
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 512
    :cond_a70
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    if-eqz v1, :cond_b55

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 515
    const-string v13, "BuildingsMaintenanceCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 514
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_abb
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_b38

    .line 518
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$15;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 519
    const-string v13, "BuildingsMaintenanceCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_afe

    move-object v13, v6

    goto :goto_aff

    :cond_afe
    move-object v13, v9

    :goto_aff
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 518
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto :goto_abb

    .line 524
    .end local v3    # "j":I
    :cond_b38
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 527
    :cond_b55
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    if-eqz v1, :cond_c3a

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 530
    const-string v13, "ManpowerRecoverySpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 529
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_ba0
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    array-length v10, v10

    if-ge v3, v10, :cond_c1d

    .line 533
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$16;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 534
    const-string v13, "ManpowerRecoverySpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_be3

    move-object v13, v6

    goto :goto_be4

    :cond_be3
    move-object v13, v9

    :goto_be4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 533
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba0

    .line 539
    .end local v3    # "j":I
    :cond_c1d
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 542
    :cond_c3a
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    if-eqz v1, :cond_d1f

    .line 543
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 545
    const-string v13, "ArmyMoraleRecovery"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 544
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_c85
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    array-length v10, v10

    if-ge v3, v10, :cond_d02

    .line 548
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$17;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 549
    const-string v13, "ArmyMoraleRecovery"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_cc8

    move-object v13, v6

    goto :goto_cc9

    :cond_cc8
    move-object v13, v9

    :goto_cc9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 548
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_c85

    .line 554
    .end local v3    # "j":I
    :cond_d02
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 557
    :cond_d1f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    if-eqz v1, :cond_e04

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 560
    const-string v13, "WarScoreCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 559
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_d6a
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_de7

    .line 563
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$18;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 564
    const-string v13, "WarScoreCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_dad

    move-object v13, v6

    goto :goto_dae

    :cond_dad
    move-object v13, v9

    :goto_dae
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 563
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6a

    .line 569
    .end local v3    # "j":I
    :cond_de7
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 572
    :cond_e04
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    if-eqz v1, :cond_ee9

    .line 573
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 575
    const-string v13, "ReinforcementSpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 574
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_e4f
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    array-length v10, v10

    if-ge v3, v10, :cond_ecc

    .line 578
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$19;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 579
    const-string v13, "ReinforcementSpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_e92

    move-object v13, v6

    goto :goto_e93

    :cond_e92
    move-object v13, v9

    :goto_e93
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 578
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v3, v3, 0x1

    goto :goto_e4f

    .line 584
    .end local v3    # "j":I
    :cond_ecc
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 587
    :cond_ee9
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    if-eqz v1, :cond_fd3

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 590
    const-string v12, "MaximumManpower"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 589
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_f34
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    array-length v10, v10

    if-ge v3, v10, :cond_fb6

    .line 593
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$20;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 594
    const-string v12, "MaximumManpower"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v12, v12, v3

    if-lez v12, :cond_f74

    move-object v13, v6

    goto :goto_f75

    :cond_f74
    move-object v13, v9

    :goto_f75
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 593
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f34

    .line 599
    .end local v3    # "j":I
    :cond_fb6
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 602
    :cond_fd3
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    if-eqz v1, :cond_10b4

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 605
    const-string v13, "Research"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 604
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_101e
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1097

    .line 608
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$21;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 609
    const-string v13, "Research"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1061

    move-object v13, v6

    goto :goto_1062

    :cond_1061
    move-object v13, v9

    :goto_1062
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 608
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_101e

    .line 614
    .end local v3    # "j":I
    :cond_1097
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 617
    :cond_10b4
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    const/16 v3, 0x64

    if-eqz v1, :cond_1191

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 620
    const-string v13, "ResearchPerMonth"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v18, v2, v11

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 619
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_1101
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    array-length v11, v11

    if-ge v10, v11, :cond_1174

    .line 623
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$22;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v10

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v10

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 624
    const-string v13, "ResearchPerMonth"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v13, v13, v10

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1144

    move-object v13, v6

    goto :goto_1145

    :cond_1144
    move-object v13, v9

    :goto_1145
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v13, v13, v10

    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object/from16 v21, v11

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 623
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v10, v10, 0x1

    goto :goto_1101

    .line 629
    .end local v10    # "j":I
    :cond_1174
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 632
    :cond_1191
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    if-eqz v1, :cond_126b

    .line 633
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 635
    const-string v12, "AdditionalBuildingsInProvince"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 634
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_11dc
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    array-length v10, v10

    if-ge v3, v10, :cond_124e

    .line 638
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$23;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 639
    const-string v12, "AdditionalBuildingsInProvince"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v12, v12, v3

    if-lez v12, :cond_121c

    move-object v13, v6

    goto :goto_121d

    :cond_121c
    move-object v13, v9

    :goto_121d
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->build:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 638
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v3, v3, 0x1

    goto :goto_11dc

    .line 644
    .end local v3    # "j":I
    :cond_124e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 647
    :cond_126b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    if-eqz v1, :cond_1345

    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 650
    const-string v12, "MaximumInfrastructureLevel"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 649
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_12b6
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    array-length v10, v10

    if-ge v3, v10, :cond_1328

    .line 653
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$24;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 654
    const-string v12, "MaximumInfrastructureLevel"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v12, v12, v3

    if-lez v12, :cond_12f6

    move-object v13, v6

    goto :goto_12f7

    :cond_12f6
    move-object v13, v9

    :goto_12f7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 653
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_12b6

    .line 659
    .end local v3    # "j":I
    :cond_1328
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 662
    :cond_1345
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    if-eqz v1, :cond_142a

    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 665
    const-string v13, "Devastation"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 664
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1390
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    array-length v10, v10

    if-ge v3, v10, :cond_140d

    .line 668
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$25;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 669
    const-string v13, "Devastation"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_13d3

    move-object v13, v6

    goto :goto_13d4

    :cond_13d3
    move-object v13, v9

    :goto_13d4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 668
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_1390

    .line 674
    .end local v3    # "j":I
    :cond_140d
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 677
    :cond_142a
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    if-eqz v1, :cond_150b

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 680
    const-string v13, "GrowthRate"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 679
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1475
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    array-length v10, v10

    if-ge v3, v10, :cond_14ee

    .line 683
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$26;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 684
    const-string v13, "GrowthRate"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_14b8

    move-object v13, v6

    goto :goto_14b9

    :cond_14b8
    move-object v13, v9

    :goto_14b9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$26;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 683
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v3, v3, 0x1

    goto :goto_1475

    .line 689
    .end local v3    # "j":I
    :cond_14ee
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 692
    :cond_150b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    if-eqz v1, :cond_15e6

    .line 693
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 695
    const-string v13, "MonthlyIncome"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v18, v2, v11

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 694
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_1556
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    array-length v11, v11

    if-ge v10, v11, :cond_15c9

    .line 698
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$27;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v10

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v10

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 699
    const-string v13, "MonthlyIncome"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v13, v13, v10

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1599

    move-object v13, v6

    goto :goto_159a

    :cond_1599
    move-object v13, v9

    :goto_159a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v13, v13, v10

    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    move-object/from16 v21, v11

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$27;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 698
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v10, v10, 0x1

    goto :goto_1556

    .line 704
    .end local v10    # "j":I
    :cond_15c9
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 707
    :cond_15e6
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    if-eqz v1, :cond_16c1

    .line 708
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 710
    const-string v13, "Gold"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v18, v2, v11

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 709
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_1631
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    array-length v11, v11

    if-ge v10, v11, :cond_16a4

    .line 713
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$28;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v10

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v10

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 714
    const-string v13, "Gold"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v13, v13, v10

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1674

    move-object v13, v6

    goto :goto_1675

    :cond_1674
    move-object v13, v9

    :goto_1675
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v13, v13, v10

    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v11

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$28;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 713
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    add-int/lit8 v10, v10, 0x1

    goto :goto_1631

    .line 719
    .end local v10    # "j":I
    :cond_16a4
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 722
    :cond_16c1
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    if-eqz v1, :cond_179c

    .line 723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 725
    const-string v13, "MonthlyLegacy"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v18, v2, v11

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 724
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_170c
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    array-length v11, v11

    if-ge v10, v11, :cond_177f

    .line 728
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$29;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v10

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v10

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 729
    const-string v13, "MonthlyLegacy"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v13, v13, v10

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_174f

    move-object v13, v6

    goto :goto_1750

    :cond_174f
    move-object v13, v9

    :goto_1750
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v13, v13, v10

    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    move-object/from16 v21, v11

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$29;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 728
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v10, v10, 0x1

    goto :goto_170c

    .line 734
    .end local v10    # "j":I
    :cond_177f
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 737
    :cond_179c
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    if-eqz v1, :cond_187d

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 740
    const-string v13, "IncomeProduction"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 739
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_17e7
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1860

    .line 743
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$30;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 744
    const-string v13, "IncomeProduction"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_182a

    move-object v13, v6

    goto :goto_182b

    :cond_182a
    move-object v13, v9

    :goto_182b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$30;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 743
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v3, v3, 0x1

    goto :goto_17e7

    .line 749
    .end local v3    # "j":I
    :cond_1860
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 752
    :cond_187d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    if-eqz v1, :cond_195e

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 755
    const-string v13, "ProductionEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 754
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_18c8
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1941

    .line 758
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$31;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 759
    const-string v13, "ProductionEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_190b

    move-object v13, v6

    goto :goto_190c

    :cond_190b
    move-object v13, v9

    :goto_190c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$31;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 758
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v3, v3, 0x1

    goto :goto_18c8

    .line 764
    .end local v3    # "j":I
    :cond_1941
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 767
    :cond_195e
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    if-eqz v1, :cond_1a43

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 770
    const-string v13, "InvestInEconomyCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 769
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_19a9
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1a26

    .line 773
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$32;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 774
    const-string v13, "InvestInEconomyCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_19ec

    move-object v13, v6

    goto :goto_19ed

    :cond_19ec
    move-object v13, v9

    :goto_19ed
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$32;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 773
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_19a9

    .line 779
    .end local v3    # "j":I
    :cond_1a26
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 782
    :cond_1a43
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    if-eqz v1, :cond_1b24

    .line 783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 785
    const-string v13, "IncreaseManpowerCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 784
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1a8e
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1b07

    .line 788
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$33;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 789
    const-string v13, "IncreaseManpowerCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1ad1

    move-object v13, v6

    goto :goto_1ad2

    :cond_1ad1
    move-object v13, v9

    :goto_1ad2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$33;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 788
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a8e

    .line 794
    .end local v3    # "j":I
    :cond_1b07
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 797
    :cond_1b24
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    if-eqz v1, :cond_1c09

    .line 798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 800
    const-string v13, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 799
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1b6f
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1bec

    .line 803
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$34;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 804
    const-string v13, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1bb2

    move-object v13, v6

    goto :goto_1bb3

    :cond_1bb2
    move-object v13, v9

    :goto_1bb3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$34;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 803
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b6f

    .line 809
    .end local v3    # "j":I
    :cond_1bec
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 812
    :cond_1c09
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    if-eqz v1, :cond_1cee

    .line 813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 815
    const-string v13, "IncreaseGrowthRateCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 814
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1c54
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1cd1

    .line 818
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$35;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 819
    const-string v13, "IncreaseGrowthRateCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1c97

    move-object v13, v6

    goto :goto_1c98

    :cond_1c97
    move-object v13, v9

    :goto_1c98
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$35;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 818
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c54

    .line 824
    .end local v3    # "j":I
    :cond_1cd1
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 827
    :cond_1cee
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    if-eqz v1, :cond_1dd3

    .line 828
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 830
    const-string v13, "DevelopInfrastructureCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 829
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1d39
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_1db6

    .line 833
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$36;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 834
    const-string v13, "DevelopInfrastructureCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1d7c

    move-object v13, v6

    goto :goto_1d7d

    :cond_1d7c
    move-object v13, v9

    :goto_1d7d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$36;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 833
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d39

    .line 839
    .end local v3    # "j":I
    :cond_1db6
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 842
    :cond_1dd3
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    if-eqz v1, :cond_1ead

    .line 843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 845
    const-string v12, "GeneralsAttack"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 844
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1e1e
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    array-length v10, v10

    if-ge v3, v10, :cond_1e90

    .line 848
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$37;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 849
    const-string v12, "GeneralsAttack"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v12, v12, v3

    if-lez v12, :cond_1e5e

    move-object v13, v6

    goto :goto_1e5f

    :cond_1e5e
    move-object v13, v9

    :goto_1e5f
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$37;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 848
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e1e

    .line 854
    .end local v3    # "j":I
    :cond_1e90
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 857
    :cond_1ead
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    if-eqz v1, :cond_1f87

    .line 858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 860
    const-string v12, "GeneralsDefense"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 859
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1ef8
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    array-length v10, v10

    if-ge v3, v10, :cond_1f6a

    .line 863
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$38;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 864
    const-string v12, "GeneralsDefense"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v12, v12, v3

    if-lez v12, :cond_1f38

    move-object v13, v6

    goto :goto_1f39

    :cond_1f38
    move-object v13, v9

    :goto_1f39
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$38;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 863
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ef8

    .line 869
    .end local v3    # "j":I
    :cond_1f6a
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 872
    :cond_1f87
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    if-eqz v1, :cond_2061

    .line 873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 875
    const-string v12, "UnitsAttack"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 874
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1fd2
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    array-length v10, v10

    if-ge v3, v10, :cond_2044

    .line 878
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$39;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 879
    const-string v12, "UnitsAttack"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v12, v12, v3

    if-lez v12, :cond_2012

    move-object v13, v6

    goto :goto_2013

    :cond_2012
    move-object v13, v9

    :goto_2013
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$39;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 878
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v3, v3, 0x1

    goto :goto_1fd2

    .line 884
    .end local v3    # "j":I
    :cond_2044
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 887
    :cond_2061
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    if-eqz v1, :cond_213b

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 890
    const-string v12, "UnitsDefense"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 889
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_20ac
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    array-length v10, v10

    if-ge v3, v10, :cond_211e

    .line 893
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$40;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 894
    const-string v12, "UnitsDefense"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v12, v12, v3

    if-lez v12, :cond_20ec

    move-object v13, v6

    goto :goto_20ed

    :cond_20ec
    move-object v13, v9

    :goto_20ed
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$40;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 893
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    add-int/lit8 v3, v3, 0x1

    goto :goto_20ac

    .line 899
    .end local v3    # "j":I
    :cond_211e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 902
    :cond_213b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    if-eqz v1, :cond_2220

    .line 903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 905
    const-string v13, "MaxMorale"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 904
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2186
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2203

    .line 908
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$41;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 909
    const-string v13, "MaxMorale"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_21c9

    move-object v13, v6

    goto :goto_21ca

    :cond_21c9
    move-object v13, v9

    :goto_21ca
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$41;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 908
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    add-int/lit8 v3, v3, 0x1

    goto :goto_2186

    .line 914
    .end local v3    # "j":I
    :cond_2203
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 917
    :cond_2220
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    if-eqz v1, :cond_2301

    .line 918
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 920
    const-string v13, "ArmyMovementSpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 919
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_226b
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    array-length v10, v10

    if-ge v3, v10, :cond_22e4

    .line 923
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$42;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 924
    const-string v13, "ArmyMovementSpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_22ae

    move-object v13, v6

    goto :goto_22af

    :cond_22ae
    move-object v13, v9

    :goto_22af
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$42;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 923
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_226b

    .line 929
    .end local v3    # "j":I
    :cond_22e4
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 932
    :cond_2301
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    if-eqz v1, :cond_23e6

    .line 933
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 935
    const-string v13, "SiegeEffectiveness"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 934
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_234c
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    array-length v10, v10

    if-ge v3, v10, :cond_23c9

    .line 938
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$43;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 939
    const-string v13, "SiegeEffectiveness"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_238f

    move-object v13, v6

    goto :goto_2390

    :cond_238f
    move-object v13, v9

    :goto_2390
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$43;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 938
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v3, v3, 0x1

    goto :goto_234c

    .line 944
    .end local v3    # "j":I
    :cond_23c9
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 947
    :cond_23e6
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    if-eqz v1, :cond_24c7

    .line 948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 950
    const-string v13, "ImproveRelationsModifier"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 949
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2431
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    array-length v10, v10

    if-ge v3, v10, :cond_24aa

    .line 953
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$44;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 954
    const-string v13, "ImproveRelationsModifier"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2474

    move-object v13, v6

    goto :goto_2475

    :cond_2474
    move-object v13, v9

    :goto_2475
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$44;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 953
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_2431

    .line 959
    .end local v3    # "j":I
    :cond_24aa
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 962
    :cond_24c7
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    if-eqz v1, :cond_25ac

    .line 963
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 965
    const-string v13, "IncomeFromVassals"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 964
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2512
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    array-length v10, v10

    if-ge v3, v10, :cond_258f

    .line 968
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$45;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 969
    const-string v13, "IncomeFromVassals"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2555

    move-object v13, v6

    goto :goto_2556

    :cond_2555
    move-object v13, v9

    :goto_2556
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$45;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 968
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    add-int/lit8 v3, v3, 0x1

    goto :goto_2512

    .line 974
    .end local v3    # "j":I
    :cond_258f
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 977
    :cond_25ac
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    if-eqz v1, :cond_268d

    .line 978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 980
    const-string v13, "LoanInterest"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 979
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_25f7
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2670

    .line 983
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$46;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 984
    const-string v13, "LoanInterest"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_263a

    move-object v13, v6

    goto :goto_263b

    :cond_263a
    move-object v13, v9

    :goto_263b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$46;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 983
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v3, v3, 0x1

    goto :goto_25f7

    .line 989
    .end local v3    # "j":I
    :cond_2670
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 992
    :cond_268d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    if-eqz v1, :cond_2772

    .line 993
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 995
    const-string v13, "DiplomacyPoints"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 994
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_26d8
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2755

    .line 998
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$47;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 999
    const-string v13, "DiplomacyPoints"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_271b

    move-object v13, v6

    goto :goto_271c

    :cond_271b
    move-object v13, v9

    :goto_271c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$47;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 998
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    add-int/lit8 v3, v3, 0x1

    goto :goto_26d8

    .line 1004
    .end local v3    # "j":I
    :cond_2755
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1007
    :cond_2772
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    if-eqz v1, :cond_2853

    .line 1008
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1010
    const-string v13, "RecruitmentTime"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1009
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_27bd
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2836

    .line 1013
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$48;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1014
    const-string v13, "RecruitmentTime"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2800

    move-object v13, v6

    goto :goto_2801

    :cond_2800
    move-object v13, v9

    :goto_2801
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$48;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1013
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    add-int/lit8 v3, v3, 0x1

    goto :goto_27bd

    .line 1019
    .end local v3    # "j":I
    :cond_2836
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1022
    :cond_2853
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    if-eqz v1, :cond_2934

    .line 1023
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1025
    const-string v13, "ArmyRecruitmentCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1024
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_289e
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2917

    .line 1028
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$49;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1029
    const-string v13, "ArmyRecruitmentCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_28e1

    move-object v13, v6

    goto :goto_28e2

    :cond_28e1
    move-object v13, v9

    :goto_28e2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$49;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1028
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v3, v3, 0x1

    goto :goto_289e

    .line 1034
    .end local v3    # "j":I
    :cond_2917
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1037
    :cond_2934
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    if-eqz v1, :cond_2a15

    .line 1038
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1040
    const-string v13, "FirstLineArmyRecruitmentCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1039
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_297f
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_29f8

    .line 1043
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$50;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1044
    const-string v13, "FirstLineArmyRecruitmentCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_29c2

    move-object v13, v6

    goto :goto_29c3

    :cond_29c2
    move-object v13, v9

    :goto_29c3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$50;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1043
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    add-int/lit8 v3, v3, 0x1

    goto :goto_297f

    .line 1049
    .end local v3    # "j":I
    :cond_29f8
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1052
    :cond_2a15
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    if-eqz v1, :cond_2af6

    .line 1053
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1055
    const-string v13, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1054
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2a60
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2ad9

    .line 1058
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$51;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1059
    const-string v13, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2aa3

    move-object v13, v6

    goto :goto_2aa4

    :cond_2aa3
    move-object v13, v9

    :goto_2aa4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$51;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1058
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a60

    .line 1064
    .end local v3    # "j":I
    :cond_2ad9
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1067
    :cond_2af6
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    if-eqz v1, :cond_2bd7

    .line 1068
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1070
    const-string v13, "ArmyMaintenance"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1069
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2b41
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2bba

    .line 1073
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$52;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1074
    const-string v13, "ArmyMaintenance"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2b84

    move-object v13, v6

    goto :goto_2b85

    :cond_2b84
    move-object v13, v9

    :goto_2b85
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$52;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1073
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b41

    .line 1079
    .end local v3    # "j":I
    :cond_2bba
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1082
    :cond_2bd7
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    if-eqz v1, :cond_2cb8

    .line 1083
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1085
    const-string v13, "CoreConstruction"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1084
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2c22
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2c9b

    .line 1088
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$53;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1089
    const-string v13, "CoreConstruction"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2c65

    move-object v13, v6

    goto :goto_2c66

    :cond_2c65
    move-object v13, v9

    :goto_2c66
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->core:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$53;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1088
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c22

    .line 1094
    .end local v3    # "j":I
    :cond_2c9b
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1097
    :cond_2cb8
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    if-eqz v1, :cond_2d99

    .line 1098
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1100
    const-string v13, "ReligionConversionCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1099
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2d03
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_2d7c

    .line 1103
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$54;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1104
    const-string v13, "ReligionConversionCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2d46

    move-object v13, v6

    goto :goto_2d47

    :cond_2d46
    move-object v13, v9

    :goto_2d47
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$54;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1103
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d03

    .line 1109
    .end local v3    # "j":I
    :cond_2d7c
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1112
    :cond_2d99
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    if-eqz v1, :cond_2e73

    .line 1113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1115
    const-string v12, "MaxNumOfAlliances"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1114
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2de4
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    array-length v10, v10

    if-ge v3, v10, :cond_2e56

    .line 1118
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$55;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1119
    const-string v12, "MaxNumOfAlliances"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v12, v12, v3

    if-lez v12, :cond_2e24

    move-object v13, v6

    goto :goto_2e25

    :cond_2e24
    move-object v13, v9

    :goto_2e25
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$55;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1118
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    add-int/lit8 v3, v3, 0x1

    goto :goto_2de4

    .line 1124
    .end local v3    # "j":I
    :cond_2e56
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1127
    :cond_2e73
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    if-eqz v1, :cond_2f4d

    .line 1128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1130
    const-string v12, "MaximumAdvisorSkillLevel"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1129
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2ebe
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    array-length v10, v10

    if-ge v3, v10, :cond_2f30

    .line 1133
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$56;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1134
    const-string v12, "MaximumAdvisorSkillLevel"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v12, v12, v3

    if-lez v12, :cond_2efe

    move-object v13, v6

    goto :goto_2eff

    :cond_2efe
    move-object v13, v9

    :goto_2eff
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$56;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1133
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ebe

    .line 1139
    .end local v3    # "j":I
    :cond_2f30
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1142
    :cond_2f4d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    if-eqz v1, :cond_3027

    .line 1143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1145
    const-string v12, "AdvisorPool"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1144
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2f98
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    array-length v10, v10

    if-ge v3, v10, :cond_300a

    .line 1148
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$57;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1149
    const-string v12, "AdvisorPool"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v12, v12, v3

    if-lez v12, :cond_2fd8

    move-object v13, v6

    goto :goto_2fd9

    :cond_2fd8
    move-object v13, v9

    :goto_2fd9
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$57;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1148
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f98

    .line 1154
    .end local v3    # "j":I
    :cond_300a
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1157
    :cond_3027
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    if-eqz v1, :cond_3101

    .line 1158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1160
    const-string v12, "MaximumNumberOfLoans"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3072
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    array-length v10, v10

    if-ge v3, v10, :cond_30e4

    .line 1163
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$58;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1164
    const-string v12, "MaximumNumberOfLoans"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v12, v12, v3

    if-lez v12, :cond_30b2

    move-object v13, v6

    goto :goto_30b3

    :cond_30b2
    move-object v13, v9

    :goto_30b3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$58;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1163
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    add-int/lit8 v3, v3, 0x1

    goto :goto_3072

    .line 1169
    .end local v3    # "j":I
    :cond_30e4
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1172
    :cond_3101
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v1, :cond_31db

    .line 1173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1175
    const-string v12, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1174
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_314c
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    array-length v10, v10

    if-ge v3, v10, :cond_31be

    .line 1178
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1179
    const-string v12, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v12, v12, v3

    if-lez v12, :cond_318c

    move-object v13, v6

    goto :goto_318d

    :cond_318c
    move-object v13, v9

    :goto_318d
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1178
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    add-int/lit8 v3, v3, 0x1

    goto :goto_314c

    .line 1184
    .end local v3    # "j":I
    :cond_31be
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1187
    :cond_31db
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v1, :cond_32b5

    .line 1188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1190
    const-string v12, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1189
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3226
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    array-length v10, v10

    if-ge v3, v10, :cond_3298

    .line 1193
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$60;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1194
    const-string v12, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1195
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v12, v12, v3

    if-lez v12, :cond_3266

    move-object v13, v6

    goto :goto_3267

    :cond_3266
    move-object v13, v9

    :goto_3267
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$60;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1193
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v3, v3, 0x1

    goto :goto_3226

    .line 1199
    .end local v3    # "j":I
    :cond_3298
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1202
    :cond_32b5
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v1, :cond_338f

    .line 1203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1205
    const-string v12, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1204
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3300
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    array-length v10, v10

    if-ge v3, v10, :cond_3372

    .line 1208
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$61;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1209
    const-string v12, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v12, v12, v3

    if-lez v12, :cond_3340

    move-object v13, v6

    goto :goto_3341

    :cond_3340
    move-object v13, v9

    :goto_3341
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$61;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1208
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v3, v3, 0x1

    goto :goto_3300

    .line 1214
    .end local v3    # "j":I
    :cond_3372
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1217
    :cond_338f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    if-eqz v1, :cond_3469

    .line 1218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1220
    const-string v12, "MaximumLevelOfCapitalCity"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1219
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_33da
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    array-length v10, v10

    if-ge v3, v10, :cond_344c

    .line 1223
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$62;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1224
    const-string v12, "MaximumLevelOfCapitalCity"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v12, v12, v3

    if-lez v12, :cond_341a

    move-object v13, v6

    goto :goto_341b

    :cond_341a
    move-object v13, v9

    :goto_341b
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$62;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1223
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    add-int/lit8 v3, v3, 0x1

    goto :goto_33da

    .line 1229
    .end local v3    # "j":I
    :cond_344c
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1232
    :cond_3469
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    if-eqz v1, :cond_354a

    .line 1233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1235
    const-string v13, "AggressiveExpansion"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1234
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_34b4
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    array-length v10, v10

    if-ge v3, v10, :cond_352d

    .line 1238
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$63;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1239
    const-string v13, "AggressiveExpansion"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_34f7

    move-object v13, v6

    goto :goto_34f8

    :cond_34f7
    move-object v13, v9

    :goto_34f8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v13, v13, v3

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->war:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$63;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1238
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v3, v3, 0x1

    goto :goto_34b4

    .line 1244
    .end local v3    # "j":I
    :cond_352d
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1247
    :cond_354a
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    if-eqz v1, :cond_362f

    .line 1248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1250
    const-string v13, "DiseasesDeathRate"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1249
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3595
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    array-length v10, v10

    if-ge v3, v10, :cond_3612

    .line 1253
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$64;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1254
    const-string v13, "DiseasesDeathRate"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1255
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_35d8

    move-object v13, v6

    goto :goto_35d9

    :cond_35d8
    move-object v13, v9

    :goto_35d9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$64;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1253
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    add-int/lit8 v3, v3, 0x1

    goto :goto_3595

    .line 1259
    .end local v3    # "j":I
    :cond_3612
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1262
    :cond_362f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v1, :cond_3714

    .line 1263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1265
    const-string v13, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1264
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_367a
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    array-length v10, v10

    if-ge v3, v10, :cond_36f7

    .line 1268
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$65;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1269
    const-string v13, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1270
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_36bd

    move-object v13, v6

    goto :goto_36be

    :cond_36bd
    move-object v13, v9

    :goto_36be
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_DISBAND:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$65;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1268
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v3, v3, 0x1

    goto :goto_367a

    .line 1274
    .end local v3    # "j":I
    :cond_36f7
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1277
    :cond_3714
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    if-eqz v1, :cond_37f9

    .line 1278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1280
    const-string v13, "AdvisorCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1279
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_375f
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_37dc

    .line 1283
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$66;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1284
    const-string v13, "AdvisorCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_37a2

    move-object v13, v6

    goto :goto_37a3

    :cond_37a2
    move-object v13, v9

    :goto_37a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$66;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1283
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    add-int/lit8 v3, v3, 0x1

    goto :goto_375f

    .line 1289
    .end local v3    # "j":I
    :cond_37dc
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1292
    :cond_37f9
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    if-eqz v1, :cond_38de

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1295
    const-string v13, "GeneralCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1294
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3844
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    array-length v10, v10

    if-ge v3, v10, :cond_38c1

    .line 1298
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$67;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1299
    const-string v13, "GeneralCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1300
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3887

    move-object v13, v6

    goto :goto_3888

    :cond_3887
    move-object v13, v9

    :goto_3888
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$67;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1298
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v3, v3, 0x1

    goto :goto_3844

    .line 1304
    .end local v3    # "j":I
    :cond_38c1
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1307
    :cond_38de
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    if-eqz v1, :cond_39c3

    .line 1308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1310
    const-string v13, "Discipline"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1309
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3929
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    array-length v10, v10

    if-ge v3, v10, :cond_39a6

    .line 1313
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$68;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1314
    const-string v13, "Discipline"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_396c

    move-object v13, v6

    goto :goto_396d

    :cond_396c
    move-object v13, v9

    :goto_396d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v13, v13, v3

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$68;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1313
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    add-int/lit8 v3, v3, 0x1

    goto :goto_3929

    .line 1319
    .end local v3    # "j":I
    :cond_39a6
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1322
    :cond_39c3
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    const-string v3, "MaximumAmountOfGold"

    if-eqz v1, :cond_3a9e

    .line 1323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1325
    invoke-virtual {v12, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v18, v2, v11

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1324
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_3a0e
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    array-length v11, v11

    if-ge v10, v11, :cond_3a81

    .line 1328
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$69;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v10

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v10

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1329
    invoke-virtual {v12, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1330
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v13, v13, v10

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3a4f

    move-object v13, v6

    goto :goto_3a50

    :cond_3a4f
    move-object v13, v9

    :goto_3a50
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v13, v13, v10

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v11

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$69;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1328
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a0e

    .line 1334
    .end local v10    # "j":I
    :cond_3a81
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1337
    :cond_3a9e
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    if-eqz v1, :cond_3b7f

    .line 1338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1340
    invoke-virtual {v13, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v18, v2, v12

    const/16 v17, 0x0

    move-object v13, v10

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1339
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1342
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_3ae7
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    array-length v12, v12

    if-ge v10, v12, :cond_3b62

    .line 1343
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$70;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v13

    mul-int v13, v13, v10

    add-int/2addr v13, v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    mul-int v14, v14, v10

    add-int v23, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1344
    invoke-virtual {v13, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1345
    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v14, v14, v10

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3b28

    move-object v14, v6

    goto :goto_3b29

    :cond_3b28
    move-object v14, v9

    :goto_3b29
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v14, v14, v10

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v14, v14, v15

    const/16 v15, 0xa

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v12

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$70;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1343
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1342
    add-int/lit8 v10, v10, 0x1

    goto :goto_3ae7

    .line 1349
    .end local v10    # "j":I
    :cond_3b62
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1352
    :cond_3b7f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    if-eqz v1, :cond_3c64

    .line 1353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1355
    const-string v13, "Loot"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1354
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3bca
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    array-length v10, v10

    if-ge v3, v10, :cond_3c47

    .line 1358
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$71;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int v12, v12, v3

    add-int/2addr v12, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    mul-int v13, v13, v3

    add-int v23, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1359
    const-string v13, "Loot"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v13, v13, v3

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3c0d

    move-object v13, v6

    goto :goto_3c0e

    :cond_3c0d
    move-object v13, v9

    :goto_3c0e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v13, v13, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v13, v13, v15

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$71;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1358
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v3, v3, 0x1

    goto :goto_3bca

    .line 1364
    .end local v3    # "j":I
    :cond_3c47
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1367
    :cond_3c64
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    if-eqz v1, :cond_3d3e

    .line 1368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1370
    const-string v12, "BattleWidth"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1369
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3caf
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    array-length v10, v10

    if-ge v3, v10, :cond_3d21

    .line 1373
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$72;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1374
    const-string v12, "BattleWidth"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1375
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v12, v12, v3

    if-lez v12, :cond_3cef

    move-object v13, v6

    goto :goto_3cf0

    :cond_3cef
    move-object v13, v9

    :goto_3cf0
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$72;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1373
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    add-int/lit8 v3, v3, 0x1

    goto :goto_3caf

    .line 1379
    .end local v3    # "j":I
    :cond_3d21
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1381
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1382
    :cond_3d3e
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    if-eqz v1, :cond_3e18

    .line 1383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1385
    const-string v12, "RegimentsLimit"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1384
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1387
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3d89
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    array-length v10, v10

    if-ge v3, v10, :cond_3dfb

    .line 1388
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$73;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1389
    const-string v12, "RegimentsLimit"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1390
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v12, v12, v3

    if-lez v12, :cond_3dc9

    move-object v13, v6

    goto :goto_3dca

    :cond_3dc9
    move-object v13, v9

    :goto_3dca
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v12, v12, v3

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$73;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1388
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1387
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d89

    .line 1394
    .end local v3    # "j":I
    :cond_3dfb
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    .end local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_3ef2

    .line 1397
    :cond_3e18
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    if-eqz v1, :cond_3ef2

    .line 1398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .restart local v1    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1400
    const-string v12, "AllCharactersLifeExpectancy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v18, v2, v10

    const/16 v17, 0x0

    move-object v13, v3

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    .line 1399
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3e63
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    array-length v10, v10

    if-ge v3, v10, :cond_3ed7

    .line 1403
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$74;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int v11, v11, v3

    add-int/2addr v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    mul-int v12, v12, v3

    add-int v23, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v8, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1404
    const-string v12, "AllCharactersLifeExpectancy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1405
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v12, v12, v3

    if-lez v12, :cond_3ea3

    move-object v13, v6

    goto :goto_3ea4

    :cond_3ea3
    move-object v13, v9

    :goto_3ea4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v13, v13, v3

    const-string v14, "YearsX"

    invoke-virtual {v12, v14, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object/from16 v21, v10

    move-object/from16 v22, p0

    move/from16 v25, v5

    move/from16 v26, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$74;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1403
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e63

    .line 1409
    .end local v3    # "j":I
    :cond_3ed7
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v6, v2, v6

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v3, v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v39    # "buttonY":I
    .end local v40    # "paddingLeft":I
    .local v1, "buttonY":I
    .restart local v12    # "paddingLeft":I
    :cond_3ef2
    :goto_3ef2
    move v13, v4

    .end local v1    # "buttonY":I
    .end local v4    # "startPosX":I
    .end local v12    # "paddingLeft":I
    .restart local v13    # "startPosX":I
    .restart local v39    # "buttonY":I
    .restart local v40    # "paddingLeft":I
    :goto_3ef3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    move/from16 v1, v39

    move/from16 v12, v40

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_313

    .end local v39    # "buttonY":I
    .end local v40    # "paddingLeft":I
    .restart local v1    # "buttonY":I
    .restart local v12    # "paddingLeft":I
    :cond_3f01
    move/from16 v39, v1

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v40, v12

    .line 1416
    .end local v1    # "buttonY":I
    .end local v5    # "i":I
    .end local v12    # "paddingLeft":I
    .restart local v39    # "buttonY":I
    .restart local v40    # "paddingLeft":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3fa7

    move/from16 v1, v39

    .line 1417
    .end local v39    # "buttonY":I
    .restart local v1    # "buttonY":I
    :goto_3f11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f9d

    .line 1418
    const/4 v3, 0x0

    .line 1420
    .local v3, "bestID":I
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_3f1d
    if-ge v4, v5, :cond_3f4a

    .line 1421
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f47

    .line 1422
    move v3, v4

    .line 1420
    :cond_3f47
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f1d

    :cond_3f4a
    const/4 v9, 0x0

    .line 1426
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .restart local v5    # "iSize":I
    :goto_3f56
    if-ge v4, v5, :cond_3f8a

    .line 1427
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v6, v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 1428
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f56

    .line 1431
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_3f8a
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v6

    add-int/2addr v4, v6

    add-int v4, v4, v36

    add-int/2addr v1, v4

    .line 1432
    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1433
    .end local v3    # "bestID":I
    goto/16 :goto_3f11

    .line 1417
    :cond_3f9d
    const/4 v9, 0x0

    move v10, v1

    move-object v12, v7

    move v14, v8

    move-object/from16 v3, v37

    move-object/from16 v42, v38

    const/4 v15, 0x0

    goto :goto_3fe4

    .line 1436
    .end local v1    # "buttonY":I
    .restart local v39    # "buttonY":I
    :cond_3fa7
    const/4 v9, 0x0

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "None"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v12, v40, 0x2

    sub-int v10, v2, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v3, -0x1

    move-object v4, v1

    move-object v12, v7

    .end local v7    # "toSort":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;>;"
    .local v12, "toSort":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;>;"
    move v7, v3

    move v14, v8

    .end local v8    # "tTitleH":I
    .local v14, "tTitleH":I
    move/from16 v8, v40

    const/4 v15, 0x0

    move/from16 v9, v39

    move-object/from16 v3, v37

    move-object/from16 v42, v38

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int v1, v39, v1

    move v10, v1

    .line 1440
    .end local v39    # "buttonY":I
    .local v10, "buttonY":I
    :goto_3fe4
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v35

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1442
    .local v11, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v15, v15, v2, v4}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$75;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AdvantagePoints"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v42

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v25, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    invoke-direct/range {v21 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$75;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move/from16 v16, v2

    .end local v2    # "menuWidth":I
    .local v16, "menuWidth":I
    move-object v2, v4

    move/from16 v3, v34

    move/from16 v4, v35

    move/from16 v5, v16

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 1456
    iput-boolean v15, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->drawScrollPositionAlways:Z

    .line 1457
    return-void
.end method

.method public static final getAdvantagesSmall(I)Ljava/util/List;
    .registers 16
    .param p0, "iCivID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;"
        }
    .end annotation

    .line 1520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v0, "toSort":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v1, v2, :cond_26bd

    .line 1523
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_26b9

    .line 1525
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    const/high16 v5, 0x42c80000    # 100.0f

    const-string v6, "%"

    const/16 v7, 0xa

    const-string v8, ""

    if-eqz v3, :cond_a2

    .line 1526
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1527
    const-string v4, "ConstructionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 1528
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v9

    move v7, v2

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1526
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1532
    :cond_a2
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    if-eqz v3, :cond_11b

    .line 1533
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1534
    const-string v4, "AdministrationBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 1535
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v9

    move v7, v2

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1533
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1539
    :cond_11b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    if-eqz v3, :cond_194

    .line 1540
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1541
    const-string v4, "MilitaryBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 1542
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v9

    move v7, v2

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1540
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1546
    :cond_194
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    if-eqz v3, :cond_20d

    .line 1547
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1548
    const-string v4, "EconomyBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 1549
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v9

    move v7, v2

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1547
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1553
    :cond_20d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    if-eqz v3, :cond_286

    .line 1554
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1555
    const-string v4, "ConstructionTime"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 1556
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v9

    move v7, v2

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1554
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1560
    :cond_286
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    if-eqz v3, :cond_2ff

    .line 1561
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1562
    const-string v4, "WonderConstructionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    .line 1563
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v9

    move v7, v2

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1561
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1567
    :cond_2ff
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    const/4 v9, 0x0

    const-string v10, "+"

    if-eqz v3, :cond_396

    .line 1568
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1569
    const-string v4, "TaxEfficiency"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1570
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_358

    move-object v8, v10

    :cond_358
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1568
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1574
    :cond_396
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    if-eqz v3, :cond_42a

    .line 1575
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1576
    const-string v4, "ProvinceMaintenance"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1577
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3ec

    move-object v8, v10

    :cond_3ec
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1575
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1581
    :cond_42a
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    if-eqz v3, :cond_4c0

    .line 1582
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1583
    const-string v4, "BuildingsMaintenanceCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1584
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_480

    move-object v8, v10

    :cond_480
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1582
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1588
    :cond_4c0
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    if-eqz v3, :cond_556

    .line 1589
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1590
    const-string v4, "ManpowerRecoverySpeed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1591
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_516

    move-object v8, v10

    :cond_516
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1589
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1595
    :cond_556
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    if-eqz v3, :cond_5ec

    .line 1596
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1597
    const-string v4, "ArmyMoraleRecovery"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1598
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_5ac

    move-object v8, v10

    :cond_5ac
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1596
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1602
    :cond_5ec
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    if-eqz v3, :cond_682

    .line 1603
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1604
    const-string v4, "WarScoreCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1605
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_642

    move-object v8, v10

    :cond_642
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1603
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1609
    :cond_682
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    if-eqz v3, :cond_718

    .line 1610
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1611
    const-string v4, "ReinforcementSpeed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1612
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_6d8

    move-object v8, v10

    :cond_6d8
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1610
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1616
    :cond_718
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    if-eqz v3, :cond_7b9

    .line 1617
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1618
    const-string v4, "MaximumManpower"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1619
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v4, v4, v2

    if-lez v4, :cond_76c

    goto :goto_76d

    :cond_76c
    move-object v10, v8

    :goto_76d
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1617
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1623
    :cond_7b9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    if-eqz v3, :cond_84d

    .line 1624
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1625
    const-string v4, "Research"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1626
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_80f

    move-object v8, v10

    :cond_80f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1624
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1630
    :cond_84d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    const/16 v11, 0x64

    if-eqz v3, :cond_8de

    .line 1631
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1632
    const-string v4, "ResearchPerMonth"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1633
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_8a5

    move-object v8, v10

    :cond_8a5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v4, v4, v2

    invoke-static {v4, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1631
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1637
    :cond_8de
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    if-eqz v3, :cond_96e

    .line 1638
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1639
    const-string v5, "AdditionalBuildingsInProvince"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1640
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v5, v5, v2

    if-lez v5, :cond_932

    move-object v8, v10

    :cond_932
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->build:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1638
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1644
    :cond_96e
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    if-eqz v3, :cond_9fe

    .line 1645
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1646
    const-string v5, "MaximumInfrastructureLevel"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1647
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v5, v5, v2

    if-lez v5, :cond_9c2

    move-object v8, v10

    :cond_9c2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1645
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1651
    :cond_9fe
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    if-eqz v3, :cond_a94

    .line 1652
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1653
    const-string v4, "Devastation"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_a54

    move-object v8, v10

    :cond_a54
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1652
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1658
    :cond_a94
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    if-eqz v3, :cond_b28

    .line 1659
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1660
    const-string v4, "GrowthRate"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1661
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_aea

    move-object v8, v10

    :cond_aea
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1659
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1665
    :cond_b28
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    if-eqz v3, :cond_bb7

    .line 1666
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1667
    const-string v4, "MonthlyIncome"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1668
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_b7e

    move-object v8, v10

    :cond_b7e
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v4, v4, v2

    invoke-static {v4, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1666
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1672
    :cond_bb7
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    if-eqz v3, :cond_c46

    .line 1673
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1674
    const-string v4, "Gold"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1675
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_c0d

    move-object v8, v10

    :cond_c0d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v4, v4, v2

    invoke-static {v4, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1673
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1679
    :cond_c46
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    if-eqz v3, :cond_cd5

    .line 1680
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1681
    const-string v4, "MonthlyLegacy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1682
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_c9c

    move-object v8, v10

    :cond_c9c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v4, v4, v2

    invoke-static {v4, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1680
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1686
    :cond_cd5
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    if-eqz v3, :cond_d69

    .line 1687
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1688
    const-string v4, "IncomeProduction"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1689
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_d2b

    move-object v8, v10

    :cond_d2b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1687
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1693
    :cond_d69
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    if-eqz v3, :cond_dfd

    .line 1694
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1695
    const-string v4, "ProductionEfficiency"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1696
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_dbf

    move-object v8, v10

    :cond_dbf
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1694
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1700
    :cond_dfd
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    if-eqz v3, :cond_e93

    .line 1701
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1702
    const-string v4, "InvestInEconomyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1703
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_e53

    move-object v8, v10

    :cond_e53
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1701
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1707
    :cond_e93
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    if-eqz v3, :cond_f27

    .line 1708
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1709
    const-string v4, "IncreaseManpowerCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1710
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_ee9

    move-object v8, v10

    :cond_ee9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1708
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1714
    :cond_f27
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    if-eqz v3, :cond_fbd

    .line 1715
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1716
    const-string v4, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1717
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_f7d

    move-object v8, v10

    :cond_f7d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1715
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1721
    :cond_fbd
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    if-eqz v3, :cond_1053

    .line 1722
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1723
    const-string v4, "IncreaseGrowthRateCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1724
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1013

    move-object v8, v10

    :cond_1013
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1722
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1728
    :cond_1053
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    if-eqz v3, :cond_10e9

    .line 1729
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1730
    const-string v4, "DevelopInfrastructureCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1731
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_10a9

    move-object v8, v10

    :cond_10a9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1729
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1735
    :cond_10e9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    if-eqz v3, :cond_1179

    .line 1736
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1737
    const-string v5, "GeneralsAttack"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1738
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v5, v5, v2

    if-lez v5, :cond_113d

    move-object v8, v10

    :cond_113d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1736
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1742
    :cond_1179
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    if-eqz v3, :cond_1209

    .line 1743
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1744
    const-string v5, "GeneralsDefense"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v5, v5, v2

    if-lez v5, :cond_11cd

    move-object v8, v10

    :cond_11cd
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1743
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1749
    :cond_1209
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    if-eqz v3, :cond_1299

    .line 1750
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1751
    const-string v5, "UnitsAttack"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1752
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v5, v5, v2

    if-lez v5, :cond_125d

    move-object v8, v10

    :cond_125d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1750
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1756
    :cond_1299
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    if-eqz v3, :cond_1329

    .line 1757
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1758
    const-string v5, "UnitsDefense"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1759
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v5, v5, v2

    if-lez v5, :cond_12ed

    move-object v8, v10

    :cond_12ed
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1757
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1763
    :cond_1329
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    if-eqz v3, :cond_13bf

    .line 1764
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1765
    const-string v4, "MaxMorale"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1766
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_137f

    move-object v8, v10

    :cond_137f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1764
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1770
    :cond_13bf
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    if-eqz v3, :cond_1453

    .line 1771
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1772
    const-string v4, "ArmyMovementSpeed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1773
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1415

    move-object v8, v10

    :cond_1415
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1771
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1777
    :cond_1453
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    if-eqz v3, :cond_14e9

    .line 1778
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1779
    const-string v4, "SiegeEffectiveness"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1780
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_14a9

    move-object v8, v10

    :cond_14a9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1778
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1784
    :cond_14e9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    if-eqz v3, :cond_157d

    .line 1785
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1786
    const-string v4, "ImproveRelationsModifier"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1787
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_153f

    move-object v8, v10

    :cond_153f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1785
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1791
    :cond_157d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    if-eqz v3, :cond_1613

    .line 1792
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1793
    const-string v4, "IncomeFromVassals"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1794
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_15d3

    move-object v8, v10

    :cond_15d3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1792
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1798
    :cond_1613
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    if-eqz v3, :cond_16a7

    .line 1799
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1800
    const-string v4, "LoanInterest"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1669

    move-object v8, v10

    :cond_1669
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1799
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1805
    :cond_16a7
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    if-eqz v3, :cond_173d

    .line 1806
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1807
    const-string v4, "DiplomacyPoints"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1808
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_16fd

    move-object v8, v10

    :cond_16fd
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1806
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1812
    :cond_173d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    if-eqz v3, :cond_17d1

    .line 1813
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1814
    const-string v4, "RecruitmentTime"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1815
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1793

    move-object v8, v10

    :cond_1793
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1813
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1819
    :cond_17d1
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    if-eqz v3, :cond_1865

    .line 1820
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1821
    const-string v4, "ArmyRecruitmentCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1822
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1827

    move-object v8, v10

    :cond_1827
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1820
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1826
    :cond_1865
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    if-eqz v3, :cond_18f9

    .line 1827
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1828
    const-string v4, "FirstLineArmyRecruitmentCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1829
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_18bb

    move-object v8, v10

    :cond_18bb
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1827
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1833
    :cond_18f9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    if-eqz v3, :cond_198d

    .line 1834
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1835
    const-string v4, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1836
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_194f

    move-object v8, v10

    :cond_194f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1834
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1840
    :cond_198d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    if-eqz v3, :cond_1a21

    .line 1841
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1842
    const-string v4, "ArmyMaintenance"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1843
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_19e3

    move-object v8, v10

    :cond_19e3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1841
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1847
    :cond_1a21
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    if-eqz v3, :cond_1ab5

    .line 1848
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1849
    const-string v4, "CoreConstruction"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1850
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1a77

    move-object v8, v10

    :cond_1a77
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->core:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1848
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1854
    :cond_1ab5
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    if-eqz v3, :cond_1b49

    .line 1855
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1856
    const-string v4, "ReligionConversionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1857
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1b0b

    move-object v8, v10

    :cond_1b0b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1855
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1861
    :cond_1b49
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    if-eqz v3, :cond_1bd9

    .line 1862
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1863
    const-string v5, "MaxNumOfAlliances"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v5, v5, v2

    if-lez v5, :cond_1b9d

    move-object v8, v10

    :cond_1b9d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1862
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1868
    :cond_1bd9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    if-eqz v3, :cond_1c69

    .line 1869
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1870
    const-string v5, "MaximumAdvisorSkillLevel"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1871
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v5, v5, v2

    if-lez v5, :cond_1c2d

    move-object v8, v10

    :cond_1c2d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1869
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1875
    :cond_1c69
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    if-eqz v3, :cond_1cf9

    .line 1876
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1877
    const-string v5, "AdvisorPool"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1878
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v5, v5, v2

    if-lez v5, :cond_1cbd

    move-object v8, v10

    :cond_1cbd
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->council:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1876
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1882
    :cond_1cf9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    if-eqz v3, :cond_1d89

    .line 1883
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1884
    const-string v5, "MaximumNumberOfLoans"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1885
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v5, v5, v2

    if-lez v5, :cond_1d4d

    move-object v8, v10

    :cond_1d4d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1883
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1889
    :cond_1d89
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v3, :cond_1e19

    .line 1890
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1891
    const-string v5, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1892
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v5, v5, v2

    if-lez v5, :cond_1ddd

    move-object v8, v10

    :cond_1ddd
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->general:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1890
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1896
    :cond_1e19
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v3, :cond_1ea9

    .line 1897
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1898
    const-string v5, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1899
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v5, v5, v2

    if-lez v5, :cond_1e6d

    move-object v8, v10

    :cond_1e6d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1897
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1903
    :cond_1ea9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v3, :cond_1f39

    .line 1904
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1905
    const-string v5, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v5, v5, v2

    if-lez v5, :cond_1efd

    move-object v8, v10

    :cond_1efd
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1904
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1910
    :cond_1f39
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    if-eqz v3, :cond_1fc9

    .line 1911
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1912
    const-string v5, "MaximumLevelOfCapitalCity"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1913
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v5, v5, v2

    if-lez v5, :cond_1f8d

    move-object v8, v10

    :cond_1f8d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1911
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1917
    :cond_1fc9
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    if-eqz v3, :cond_205d

    .line 1918
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1919
    const-string v4, "AggressiveExpansion"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1920
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_201f

    move-object v8, v10

    :cond_201f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->war:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1918
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1924
    :cond_205d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    if-eqz v3, :cond_20f3

    .line 1925
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1926
    const-string v4, "DiseasesDeathRate"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1927
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_20b3

    move-object v8, v10

    :cond_20b3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1925
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1931
    :cond_20f3
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v3, :cond_2189

    .line 1932
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1933
    const-string v4, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1934
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2149

    move-object v8, v10

    :cond_2149
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_DISBAND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1932
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1938
    :cond_2189
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    if-eqz v3, :cond_221f

    .line 1939
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1940
    const-string v4, "AdvisorCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1941
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_21df

    move-object v8, v10

    :cond_21df
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->council:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1939
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1945
    :cond_221f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    if-eqz v3, :cond_22b5

    .line 1946
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1947
    const-string v4, "GeneralCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1948
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2275

    move-object v8, v10

    :cond_2275
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->general:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1946
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1952
    :cond_22b5
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    if-eqz v3, :cond_234b

    .line 1953
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1954
    const-string v4, "Discipline"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1955
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_230b

    move-object v8, v10

    :cond_230b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1953
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1959
    :cond_234b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    const-string v11, "MaximumAmountOfGold"

    if-eqz v3, :cond_23da

    .line 1960
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1961
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1962
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_23a1

    move-object v8, v10

    :cond_23a1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v4, v4, v2

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v12

    move v7, v2

    move-object v8, v11

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1960
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1966
    :cond_23da
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    if-eqz v3, :cond_246e

    .line 1967
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1968
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1969
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_242e

    move-object v8, v10

    :cond_242e
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v12

    move v6, v13

    move v7, v2

    move-object v8, v11

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1967
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1973
    :cond_246e
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    if-eqz v3, :cond_2504

    .line 1974
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1975
    const-string v4, "Loot"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1976
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v4, v4, v2

    cmpl-float v4, v4, v9

    if-lez v4, :cond_24c4

    move-object v8, v10

    :cond_24c4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v4, v4, v2

    mul-float v4, v4, v5

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v6, v12

    move v7, v2

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1974
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1980
    :cond_2504
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    if-eqz v3, :cond_2594

    .line 1981
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1982
    const-string v5, "BattleWidth"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1983
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v5, v5, v2

    if-lez v5, :cond_2558

    move-object v8, v10

    :cond_2558
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1981
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1987
    :cond_2594
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    if-eqz v3, :cond_2624

    .line 1988
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1989
    const-string v5, "RegimentsLimit"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1990
    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v5, v5, v2

    if-lez v5, :cond_25e8

    move-object v8, v10

    :cond_25e8
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1988
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26b5

    .line 1994
    :cond_2624
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    if-eqz v3, :cond_26b5

    .line 1995
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1996
    const-string v4, "AllCharactersLifeExpectancy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v4, v4, v2

    if-lez v4, :cond_2678

    move-object v8, v10

    :cond_2678
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v5, v5, v2

    const-string v7, "YearsX"

    invoke-virtual {v4, v7, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->council:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    move v7, v2

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 1995
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_26b5
    :goto_26b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 1522
    .end local v2    # "j":I
    :cond_26b9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 2004
    .end local v1    # "i":I
    :cond_26bd
    return-object v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 2009
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 2010
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 2011
    return-void
.end method

.method public final actionUnlock(IILjava/lang/String;)V
    .registers 9
    .param p1, "iAdvantage"    # I
    .param p2, "iLevel"    # I
    .param p3, "sBonus"    # Ljava/lang/String;

    .line 1480
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_115

    .line 1481
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1482
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AlreadyUnlocked"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 1483
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto/16 :goto_120

    .line 1485
    :cond_30
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    if-gtz v0, :cond_88

    .line 1486
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "AdvantagePoints"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1487
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto/16 :goto_120

    .line 1489
    :cond_88
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canUnlockAdvantage(II)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1491
    if-lez p2, :cond_120

    .line 1492
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, p1, v0, p3}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->actionUnlock(IILjava/lang/String;)V

    goto/16 :goto_120

    .line 1496
    :cond_9d
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0, p1, p2}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(III)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1497
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    if-nez p2, :cond_ac

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE0:I

    goto :goto_b4

    :cond_ac
    const/4 v1, 0x1

    if-ne p2, v1, :cond_b2

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE1:I

    goto :goto_b4

    :cond_b2
    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE2:I

    :goto_b4
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 1499
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 1500
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 1502
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CivilizationAdvantage"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Unlocked"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoAdvantage:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 1505
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivilizationAdvantages_SavePos(I)V

    .line 1506
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    goto :goto_120

    .line 1509
    :cond_fa
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NotAvailable"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 1510
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_120

    .line 1514
    :cond_115
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 1516
    :cond_120
    :goto_120
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 1461
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 1462
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 1465
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1466
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 1467
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1469
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 1470
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1474
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 1475
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    .line 1476
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime2:J

    .line 1477
    return-void
.end method
