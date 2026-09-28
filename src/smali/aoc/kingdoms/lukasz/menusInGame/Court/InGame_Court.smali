.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static FIRE_ID:I

.field public static UPDATE_INCOME_MANPOWER_FROM_VASSAL:Z

.field public static iActiveCivID:I

.field public static inCourt:Z

.field public static inSearchProvinces:Z

.field public static lTime:J

.field public static lTime2:J

.field public static modeID:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 96
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 97
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 99
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 101
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->FIRE_ID:I

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inCourt:Z

    .line 104
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inSearchProvinces:Z

    .line 106
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    .line 108
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->UPDATE_INCOME_MANPOWER_FROM_VASSAL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 93

    .line 110
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 113
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v23, v1, v2

    .line 114
    .local v23, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v1, v2

    .line 116
    .local v12, "paddingLeft2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 118
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v24

    .line 119
    .local v24, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v1, v2

    .line 121
    .local v25, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v26, v1, 0x2

    .line 122
    .local v26, "buttonYPadding":I
    move/from16 v1, v23

    .line 123
    .local v1, "buttonX":I
    const/4 v9, 0x0

    .line 125
    .local v9, "buttonY":I
    const/4 v10, 0x1

    sput-boolean v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inCourt:Z

    .line 126
    const/4 v8, 0x0

    sput-boolean v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inSearchProvinces:Z

    .line 128
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, v3, :cond_50

    .line 129
    sput v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    .line 132
    :cond_50
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG(I)V

    .line 134
    move/from16 v1, v23

    .line 136
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->RulerTitle:Ljava/lang/String;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v16, v11, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int v17, v2, v4

    const/4 v4, -0x1

    move-object v2, v7

    move v6, v9

    move-object v13, v7

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 139
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v9, v2

    .line 141
    .local v13, "rulerBGY":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$1;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-direct {v2, v15, v3, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;III)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v16, v1, v2

    .line 154
    .end local v1    # "buttonX":I
    .local v16, "buttonX":I
    const/4 v8, 0x0

    .line 156
    .local v8, "statsH":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$2;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    sub-int v1, v11, v16

    sub-int v6, v1, v23

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v17, v1, v2

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v4, v16

    move v5, v9

    move-object v10, v7

    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v9, v1

    .line 191
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v10, v8, v1

    .line 193
    .end local v8    # "statsH":I
    .local v10, "statsH":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->BornDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->BornMonth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v4, v4, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    sub-int/2addr v2, v4

    const/16 v6, 0x63

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v5, "XYearsOld"

    invoke-virtual {v1, v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v11, v16

    sub-int v17, v1, v23

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v20, v1, v2

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v15, v5

    move/from16 v5, v16

    move-object/from16 v21, v15

    const/16 v15, 0x63

    move v6, v9

    move-object v15, v7

    move/from16 v7, v17

    move/from16 v17, v12

    move-object v12, v8

    .end local v12    # "paddingLeft2":I
    .local v17, "paddingLeft2":I
    move/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v9, v1

    .line 217
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 219
    sub-int v1, v11, v16

    sub-int v1, v1, v23

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    .line 220
    .local v1, "tWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler2;->getButtonHeight()I

    move-result v2

    sub-int v27, v2, v10

    .line 222
    .end local v10    # "statsH":I
    .local v27, "statsH":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-nez v2, :cond_211

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-nez v2, :cond_211

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-nez v2, :cond_211

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-eqz v2, :cond_20e

    goto :goto_211

    :cond_20e
    move/from16 v28, v1

    goto :goto_21e

    .line 223
    :cond_211
    :goto_211
    sub-int v2, v11, v16

    sub-int v2, v2, v23

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x4

    move/from16 v28, v1

    .line 228
    .end local v1    # "tWidth":I
    .local v28, "tWidth":I
    :goto_21e
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$4;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v4, v16

    move v5, v9

    move/from16 v6, v28

    move/from16 v7, v27

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 251
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/16 v12, 0x64

    const/16 v20, 0x0

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_29c

    .line 252
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$5;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-static {v1, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 269
    :cond_29c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    const-string v10, "%"

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2f9

    .line 270
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    invoke-static {v2, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move-object v12, v8

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 287
    :cond_2f9
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_355

    .line 288
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 305
    :cond_355
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3b1

    .line 306
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 323
    :cond_3b1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    const/high16 v30, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_411

    .line 324
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 341
    :cond_411
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_45b

    .line 342
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$10;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 359
    :cond_45b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4b7

    .line 360
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$11;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 377
    :cond_4b7
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_502

    .line 378
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$12;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 395
    :cond_502
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    const-string v12, "+"

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_56a

    .line 396
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$13;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move-object/from16 v31, v12

    move-object v12, v8

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    goto :goto_56c

    .line 395
    :cond_56a
    move-object/from16 v31, v12

    .line 413
    :goto_56c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_5c8

    .line 414
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$14;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 431
    :cond_5c8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_626

    .line 432
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$15;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 449
    :cond_626
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_684

    .line 450
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$16;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 467
    :cond_684
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_6e2

    .line 468
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$17;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 485
    :cond_6e2
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_740

    .line 486
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$18;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 503
    :cond_740
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_79e

    .line 504
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$19;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 521
    :cond_79e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_7fc

    .line 522
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$20;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 539
    :cond_7fc
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_85a

    .line 540
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$21;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 557
    :cond_85a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_8b8

    .line 558
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$22;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 575
    :cond_8b8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_916

    .line 576
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$23;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    mul-float v2, v2, v30

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 593
    :cond_916
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_972

    .line 594
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$24;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 611
    :cond_972
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_9ce

    .line 612
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$25;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 629
    :cond_9ce
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_a2a

    .line 630
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$26;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$26;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 647
    :cond_a2a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_a78

    .line 648
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$27;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    const/16 v8, 0x64

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    const/16 v29, 0x64

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$27;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    goto :goto_a7a

    .line 647
    :cond_a78
    const/16 v29, 0x64

    .line 665
    :goto_a7a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-eqz v1, :cond_ae4

    .line 666
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$28;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-lez v2, :cond_aa4

    move-object/from16 v7, v31

    goto :goto_aa5

    :cond_aa4
    move-object v7, v15

    :goto_aa5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$28;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 683
    :cond_ae4
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-eqz v1, :cond_b4e

    .line 684
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$29;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-lez v2, :cond_b0e

    move-object/from16 v7, v31

    goto :goto_b0f

    :cond_b0e
    move-object v7, v15

    :goto_b0f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$29;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 701
    :cond_b4e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-eqz v1, :cond_bb8

    .line 702
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$30;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-lez v2, :cond_b78

    move-object/from16 v7, v31

    goto :goto_b79

    :cond_b78
    move-object v7, v15

    :goto_b79
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$30;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 719
    :cond_bb8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-eqz v1, :cond_c22

    .line 720
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$31;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-lez v2, :cond_be2

    move-object/from16 v7, v31

    goto :goto_be3

    :cond_be2
    move-object v7, v15

    :goto_be3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v16

    move v6, v9

    move/from16 v7, v28

    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$31;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 739
    :cond_c22
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler2;->getButtonHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v13, v3, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v9, v2, v1

    .line 745
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$32;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    div-int/lit8 v6, v1, 0x3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    if-nez v1, :cond_c7d

    const/4 v8, 0x1

    goto :goto_c7e

    :cond_c7d
    const/4 v8, 0x0

    :goto_c7e
    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v5

    move v5, v9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$32;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIZ)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$33;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassals()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v4, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    div-int/lit8 v2, v2, 0x3

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    div-int/lit8 v6, v1, 0x3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_cbb

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_cb9

    goto :goto_cbb

    :cond_cb9
    const/4 v8, 0x0

    goto :goto_cbc

    :cond_cbb
    :goto_cbb
    const/4 v8, 0x1

    :goto_cbc
    move-object v1, v12

    move-object/from16 v2, p0

    move v4, v5

    move v5, v9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$33;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIZ)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$34;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "More"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v4, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    div-int/lit8 v6, v1, 0x3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    if-ne v1, v4, :cond_cf0

    const/4 v8, 0x1

    goto :goto_cf1

    :cond_cf0
    const/4 v8, 0x0

    :goto_cf1
    move-object v1, v12

    move-object/from16 v2, p0

    move v4, v5

    move v5, v9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$34;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIZ)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v12, v9, v1

    .line 842
    .end local v9    # "buttonY":I
    .local v12, "buttonY":I
    move/from16 v16, v23

    .line 845
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    const-string v9, ": "

    if-nez v1, :cond_57ee

    .line 846
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_df6

    .line 847
    move/from16 v32, v23

    .line 848
    .local v32, "typeX":I
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v11, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v33, v1, 0x5

    .line 849
    .local v33, "typeW":I
    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    .line 851
    .local v34, "typeH":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$35;

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v5, v32

    move v6, v12

    move/from16 v7, v33

    move-object/from16 v35, v9

    move-object v9, v8

    move/from16 v8, v34

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$35;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v32, v32, v1

    .line 884
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$36;

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->encyclopedia:I

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v5, v32

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$36;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v32, v32, v1

    .line 916
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$37;

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->development:I

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v5, v32

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$37;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v32, v32, v1

    .line 954
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$38;

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v5, v32

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$38;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v32, v32, v1

    .line 985
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$39;

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->settings:I

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v5, v32

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$39;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    goto :goto_df8

    .line 846
    .end local v32    # "typeX":I
    .end local v33    # "typeW":I
    .end local v34    # "typeH":I
    :cond_df6
    move-object/from16 v35, v9

    .line 1141
    :goto_df8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_10aa

    .line 1142
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->removeExpiredEspionageMissions()V

    .line 1144
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-lez v1, :cond_109a

    .line 1145
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "EspionageMission"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v11, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v9

    move v5, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 1148
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->spy:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v18, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1152
    .local v32, "buttonH_Spy":I
    const/4 v1, 0x0

    move/from16 v33, v12

    move v12, v1

    .local v12, "i":I
    .local v33, "buttonY":I
    :goto_e81
    :try_start_e81
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I
    :try_end_e89
    .catch Ljava/lang/Exception; {:try_start_e81 .. :try_end_e89} :catch_1087

    if-ge v12, v1, :cond_f94

    .line 1153
    :try_start_e8b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_f52

    .line 1154
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$40;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Completed"

    .line 1155
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v11, v1

    sget v34, Laoc/kingdoms/lukasz/textures/Images;->spy:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 1158
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v8, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 1159
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v2

    sub-int v36, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 1160
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    :try_end_efd
    .catch Ljava/lang/Exception; {:try_start_e8b .. :try_end_efd} :catch_f7c

    sub-int v37, v1, v2

    const/16 v38, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v5, v23

    move/from16 v6, v33

    move/from16 v39, v8

    move/from16 v8, v32

    move-object/from16 v40, v9

    move-object/from16 v41, v35

    move/from16 v9, v34

    move-object/from16 v42, v10

    move/from16 v10, v39

    move/from16 v43, v11

    .end local v11    # "menuWidth":I
    .local v43, "menuWidth":I
    move/from16 v11, v36

    move/from16 v44, v17

    move-object/from16 v45, v31

    move/from16 v17, v12

    .end local v12    # "i":I
    .local v17, "i":I
    .local v44, "paddingLeft2":I
    move/from16 v12, v37

    move/from16 v29, v13

    move-object/from16 v18, v15

    const/4 v15, 0x2

    .end local v13    # "rulerBGY":I
    .local v29, "rulerBGY":I
    move/from16 v13, v38

    :try_start_f29
    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$40;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V

    .line 1154
    move-object/from16 v1, v40

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1
    :try_end_f35
    .catch Ljava/lang/Exception; {:try_start_f29 .. :try_end_f35} :catch_f49

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    :try_start_f37
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_f43
    .catch Ljava/lang/Exception; {:try_start_f37 .. :try_end_f43} :catch_f47

    add-int/2addr v1, v2

    add-int v33, v33, v1

    goto :goto_f64

    .line 1195
    .end local v17    # "i":I
    :catch_f47
    move-exception v0

    goto :goto_f4b

    :catch_f49
    move-exception v0

    const/4 v13, 0x1

    :goto_f4b
    move/from16 v12, v33

    move/from16 v46, v43

    const/4 v15, 0x1

    goto/16 :goto_10b9

    .line 1153
    .end local v29    # "rulerBGY":I
    .end local v43    # "menuWidth":I
    .end local v44    # "paddingLeft2":I
    .restart local v11    # "menuWidth":I
    .restart local v12    # "i":I
    .restart local v13    # "rulerBGY":I
    .local v17, "paddingLeft2":I
    :cond_f52
    move-object/from16 v42, v10

    move/from16 v43, v11

    move/from16 v29, v13

    move-object/from16 v18, v15

    move/from16 v44, v17

    move-object/from16 v45, v31

    move-object/from16 v41, v35

    const/4 v13, 0x1

    const/4 v15, 0x2

    move/from16 v17, v12

    .line 1152
    .end local v11    # "menuWidth":I
    .end local v12    # "i":I
    .end local v13    # "rulerBGY":I
    .local v17, "i":I
    .restart local v29    # "rulerBGY":I
    .restart local v43    # "menuWidth":I
    .restart local v44    # "paddingLeft2":I
    :goto_f64
    add-int/lit8 v12, v17, 0x1

    move-object/from16 v15, v18

    move/from16 v13, v29

    move-object/from16 v35, v41

    move-object/from16 v10, v42

    move/from16 v11, v43

    move/from16 v17, v44

    move-object/from16 v31, v45

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v29, 0x64

    .end local v17    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_e81

    .line 1195
    .end local v12    # "i":I
    .end local v29    # "rulerBGY":I
    .end local v43    # "menuWidth":I
    .end local v44    # "paddingLeft2":I
    .restart local v11    # "menuWidth":I
    .restart local v13    # "rulerBGY":I
    .local v17, "paddingLeft2":I
    :catch_f7c
    move-exception v0

    move-object/from16 v42, v10

    move/from16 v43, v11

    move/from16 v29, v13

    move-object/from16 v18, v15

    move/from16 v44, v17

    move-object/from16 v45, v31

    move-object/from16 v41, v35

    const/4 v13, 0x1

    const/4 v15, 0x2

    move/from16 v12, v33

    move/from16 v46, v43

    const/4 v15, 0x1

    .end local v11    # "menuWidth":I
    .end local v13    # "rulerBGY":I
    .end local v17    # "paddingLeft2":I
    .restart local v29    # "rulerBGY":I
    .restart local v43    # "menuWidth":I
    .restart local v44    # "paddingLeft2":I
    goto/16 :goto_10b9

    .line 1152
    .end local v29    # "rulerBGY":I
    .end local v43    # "menuWidth":I
    .end local v44    # "paddingLeft2":I
    .restart local v11    # "menuWidth":I
    .restart local v12    # "i":I
    .restart local v13    # "rulerBGY":I
    .restart local v17    # "paddingLeft2":I
    :cond_f94
    move-object/from16 v42, v10

    move/from16 v43, v11

    move/from16 v29, v13

    move-object/from16 v18, v15

    move/from16 v44, v17

    move-object/from16 v45, v31

    move-object/from16 v41, v35

    const/4 v13, 0x1

    const/4 v15, 0x2

    move/from16 v17, v12

    .line 1178
    .end local v11    # "menuWidth":I
    .end local v12    # "i":I
    .end local v13    # "rulerBGY":I
    .end local v17    # "paddingLeft2":I
    .restart local v29    # "rulerBGY":I
    .restart local v43    # "menuWidth":I
    .restart local v44    # "paddingLeft2":I
    const/4 v1, 0x0

    move v12, v1

    .restart local v12    # "i":I
    :goto_fa8
    :try_start_fa8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v12, v1, :cond_1078

    .line 1179
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-le v1, v2, :cond_106b

    .line 1180
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$41;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Progress"

    .line 1181
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"
    :try_end_fd2
    .catch Ljava/lang/Exception; {:try_start_fa8 .. :try_end_fd2} :catch_1080

    mul-int/lit8 v1, v23, 0x2

    move/from16 v10, v43

    .end local v43    # "menuWidth":I
    .local v10, "menuWidth":I
    sub-int v7, v10, v1

    :try_start_fd8
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->spy:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 1184
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v8, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 1185
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v2

    sub-int v17, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 1186
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v6, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I
    :try_end_1024
    .catch Ljava/lang/Exception; {:try_start_fd8 .. :try_end_1024} :catch_1064

    const/16 v19, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v23

    move/from16 v31, v6

    move/from16 v6, v33

    move/from16 v34, v8

    move/from16 v8, v32

    move/from16 v46, v10

    .end local v10    # "menuWidth":I
    .local v46, "menuWidth":I
    move/from16 v10, v34

    move-object v15, v11

    move/from16 v11, v17

    move/from16 v17, v12

    .end local v12    # "i":I
    .local v17, "i":I
    move/from16 v12, v31

    move/from16 v13, v19

    :try_start_1040
    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$41;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V

    .line 1180
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1
    :try_end_104a
    .catch Ljava/lang/Exception; {:try_start_1040 .. :try_end_104a} :catch_105e

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    :try_start_104c
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_1058
    .catch Ljava/lang/Exception; {:try_start_104c .. :try_end_1058} :catch_105c

    add-int/2addr v1, v2

    add-int v33, v33, v1

    goto :goto_1070

    .line 1195
    .end local v17    # "i":I
    :catch_105c
    move-exception v0

    goto :goto_1060

    :catch_105e
    move-exception v0

    const/4 v15, 0x1

    :goto_1060
    move/from16 v12, v33

    goto/16 :goto_10b9

    .end local v46    # "menuWidth":I
    .restart local v10    # "menuWidth":I
    :catch_1064
    move-exception v0

    move/from16 v46, v10

    const/4 v15, 0x1

    move/from16 v12, v33

    .end local v10    # "menuWidth":I
    .restart local v46    # "menuWidth":I
    goto :goto_10b9

    .line 1179
    .end local v46    # "menuWidth":I
    .restart local v12    # "i":I
    .restart local v43    # "menuWidth":I
    :cond_106b
    move/from16 v17, v12

    move/from16 v46, v43

    const/4 v15, 0x1

    .line 1178
    .end local v12    # "i":I
    .end local v43    # "menuWidth":I
    .restart local v17    # "i":I
    .restart local v46    # "menuWidth":I
    :goto_1070
    add-int/lit8 v12, v17, 0x1

    move/from16 v43, v46

    const/4 v13, 0x1

    const/4 v15, 0x2

    .end local v17    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_fa8

    .end local v46    # "menuWidth":I
    .restart local v43    # "menuWidth":I
    :cond_1078
    move/from16 v17, v12

    move/from16 v46, v43

    const/4 v15, 0x1

    .line 1197
    .end local v12    # "i":I
    .end local v43    # "menuWidth":I
    .restart local v46    # "menuWidth":I
    move/from16 v12, v33

    goto :goto_10b9

    .line 1195
    .end local v46    # "menuWidth":I
    .restart local v43    # "menuWidth":I
    :catch_1080
    move-exception v0

    move/from16 v46, v43

    const/4 v15, 0x1

    move/from16 v12, v33

    .end local v43    # "menuWidth":I
    .restart local v46    # "menuWidth":I
    goto :goto_10b9

    .end local v29    # "rulerBGY":I
    .end local v44    # "paddingLeft2":I
    .end local v46    # "menuWidth":I
    .restart local v11    # "menuWidth":I
    .restart local v13    # "rulerBGY":I
    .local v17, "paddingLeft2":I
    :catch_1087
    move-exception v0

    move-object/from16 v42, v10

    move/from16 v46, v11

    move/from16 v29, v13

    move-object/from16 v18, v15

    move/from16 v44, v17

    move-object/from16 v45, v31

    move-object/from16 v41, v35

    const/4 v15, 0x1

    move/from16 v12, v33

    .end local v11    # "menuWidth":I
    .end local v13    # "rulerBGY":I
    .end local v17    # "paddingLeft2":I
    .restart local v29    # "rulerBGY":I
    .restart local v44    # "paddingLeft2":I
    .restart local v46    # "menuWidth":I
    goto :goto_10b9

    .line 1144
    .end local v29    # "rulerBGY":I
    .end local v32    # "buttonH_Spy":I
    .end local v33    # "buttonY":I
    .end local v44    # "paddingLeft2":I
    .end local v46    # "menuWidth":I
    .restart local v11    # "menuWidth":I
    .local v12, "buttonY":I
    .restart local v13    # "rulerBGY":I
    .restart local v17    # "paddingLeft2":I
    :cond_109a
    move-object/from16 v42, v10

    move/from16 v46, v11

    move/from16 v29, v13

    move-object/from16 v18, v15

    move/from16 v44, v17

    move-object/from16 v45, v31

    move-object/from16 v41, v35

    const/4 v15, 0x1

    .end local v11    # "menuWidth":I
    .end local v13    # "rulerBGY":I
    .end local v17    # "paddingLeft2":I
    .restart local v29    # "rulerBGY":I
    .restart local v44    # "paddingLeft2":I
    .restart local v46    # "menuWidth":I
    goto :goto_10b9

    .line 1141
    .end local v29    # "rulerBGY":I
    .end local v44    # "paddingLeft2":I
    .end local v46    # "menuWidth":I
    .restart local v11    # "menuWidth":I
    .restart local v13    # "rulerBGY":I
    .restart local v17    # "paddingLeft2":I
    :cond_10aa
    move-object/from16 v42, v10

    move/from16 v46, v11

    move/from16 v29, v13

    move-object/from16 v18, v15

    move/from16 v44, v17

    move-object/from16 v45, v31

    move-object/from16 v41, v35

    const/4 v15, 0x1

    .line 1201
    .end local v11    # "menuWidth":I
    .end local v13    # "rulerBGY":I
    .end local v17    # "paddingLeft2":I
    .restart local v29    # "rulerBGY":I
    .restart local v44    # "paddingLeft2":I
    .restart local v46    # "menuWidth":I
    :goto_10b9
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_ADMINISTRATIVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    move/from16 v13, v46

    .end local v46    # "menuWidth":I
    .local v13, "menuWidth":I
    sub-int v6, v13, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v1, :cond_1105

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr v5, v8

    const/16 v8, 0x63

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v11, v21

    invoke-virtual {v1, v11, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1109

    :cond_1105
    move-object/from16 v11, v21

    move-object/from16 v8, v18

    :goto_1109
    move-object v1, v9

    move v5, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 1204
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonWidth()I

    move-result v1

    sub-int v1, v13, v1

    mul-int/lit8 v2, v23, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v28, v1, v2

    .line 1206
    move/from16 v10, v23

    .line 1208
    .end local v16    # "buttonX":I
    .local v10, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    .line 1211
    .local v16, "maxIconW":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const-string v9, "GrowthRate"

    const-string v8, "ProvinceMaintenance"

    const-string v7, "TaxEfficiency"

    const-string v6, "NoAdvisor"

    const-string v5, " / "

    const-string v4, "Skill"

    if-nez v1, :cond_11ba

    .line 1212
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$42;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$42;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;II)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 1228
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$43;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v21, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v31

    move-object v1, v2

    move-object v15, v2

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object/from16 v17, v11

    move-object v11, v4

    move/from16 v4, v19

    move-object/from16 v55, v5

    move/from16 v5, v21

    move-object/from16 v56, v6

    move v6, v10

    move-object/from16 v57, v7

    move v7, v12

    move-object/from16 v58, v8

    move/from16 v8, v28

    move-object/from16 v59, v9

    move/from16 v9, v31

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$43;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIII)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v11

    move-object/from16 v7, v18

    move-object/from16 v61, v41

    move-object/from16 v4, v42

    move-object/from16 v6, v45

    move-object/from16 v60, v55

    move-object/from16 v11, v57

    const/16 v5, 0x64

    goto/16 :goto_2197

    .line 1275
    :cond_11ba
    move-object/from16 v55, v5

    move-object/from16 v56, v6

    move-object/from16 v57, v7

    move-object/from16 v58, v8

    move-object/from16 v59, v9

    move-object/from16 v17, v11

    move-object v11, v4

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$44;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v6, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    const/4 v8, -0x1

    const/16 v19, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v10

    move v4, v12

    move-object/from16 v21, v9

    move/from16 v9, v19

    move/from16 v19, v10

    .end local v10    # "buttonX":I
    .local v19, "buttonX":I
    move-object/from16 v10, v21

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$44;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;IILjava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v10, v19, v1

    .line 1300
    .end local v19    # "buttonX":I
    .restart local v10    # "buttonX":I
    const/4 v8, 0x0

    .line 1301
    .local v8, "statsY":I
    sub-int v1, v13, v10

    sub-int v9, v1, v23

    .line 1302
    .local v9, "statW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x3

    .line 1304
    .local v15, "statH":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$45;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v41

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v55

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, v7

    move-object/from16 v2, p0

    move v4, v10

    move-object/from16 v60, v5

    move v5, v12

    move-object/from16 v61, v6

    move/from16 v6, v19

    move-object/from16 v19, v11

    move-object v11, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$45;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sub-int v11, v13, v23

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sub-int/2addr v11, v2

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 1376
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$46;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v1, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v6, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$46;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1422
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1351

    .line 1423
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1424
    move-object/from16 v11, v57

    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v18

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v45

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1425
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, v42

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1423
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_135b

    .line 1422
    :cond_1351
    move-object/from16 v7, v18

    move-object/from16 v4, v42

    move-object/from16 v6, v45

    move-object/from16 v11, v57

    const/16 v5, 0x64

    .line 1431
    :goto_135b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_13d1

    .line 1432
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1433
    move-object/from16 v5, v58

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1434
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1432
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1440
    :cond_13d1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1447

    .line 1441
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1442
    move-object/from16 v5, v59

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1443
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1441
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1449
    :cond_1447
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_14bf

    .line 1450
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1451
    const-string v5, "ConstructionCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1452
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1450
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1458
    :cond_14bf
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1537

    .line 1459
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1460
    const-string v5, "AdministrationBuildingsCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1461
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1459
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1467
    :cond_1537
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_15af

    .line 1468
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1469
    const-string v5, "EconomyBuildingsCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1470
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1468
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1475
    :cond_15af
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1627

    .line 1476
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1477
    const-string v5, "MilitaryBuildingsCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1478
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1476
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1485
    :cond_1627
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_169f

    .line 1486
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1487
    const-string v5, "InvestInEconomyCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1488
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1486
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1494
    :cond_169f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1717

    .line 1495
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1496
    const-string v5, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1497
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1495
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1503
    :cond_1717
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_178f

    .line 1504
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1505
    const-string v5, "IncreaseGrowthRateCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1506
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1504
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1513
    :cond_178f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1807

    .line 1514
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1515
    const-string v5, "DevelopInfrastructureCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1516
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1514
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1522
    :cond_1807
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_187d

    .line 1523
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1524
    const-string v5, "ProductionEfficiency"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1525
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1523
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1531
    :cond_187d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_18ef

    .line 1532
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1533
    const-string v5, "ResearchPerMonth"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1534
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1532
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1540
    :cond_18ef
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1961

    .line 1541
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1542
    const-string v5, "MonthlyLegacy"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1543
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1541
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1549
    :cond_1961
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_19d3

    .line 1550
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1551
    const-string v5, "GeneralsAttack"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1552
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1550
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1558
    :cond_19d3
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1a45

    .line 1559
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1560
    const-string v5, "GeneralsDefense"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1561
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1559
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1567
    :cond_1a45
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1abb

    .line 1568
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1569
    const-string v5, "ArmyMaintenance"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1570
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1568
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1576
    :cond_1abb
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1b31

    .line 1577
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1578
    const-string v5, "ArmyRecruitmentCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1579
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1577
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1588
    :cond_1b31
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1ba9

    .line 1589
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1590
    const-string v5, "ConstructionTime"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1591
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1589
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1597
    :cond_1ba9
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1c1f

    .line 1598
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1599
    const-string v5, "IncreaseManpowerCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1600
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1598
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1606
    :cond_1c1f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1c95

    .line 1607
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1608
    const-string v5, "RecruitmentTime"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1609
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1607
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1615
    :cond_1c95
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1d0b

    .line 1616
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1617
    const-string v5, "LoanInterest"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1618
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1616
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1624
    :cond_1d0b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1d81

    .line 1625
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1626
    const-string v5, "CoreConstruction"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1627
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1625
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1633
    :cond_1d81
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1df7

    .line 1634
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1635
    const-string v5, "ReligionConversionCost"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1636
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1634
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1642
    :cond_1df7
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1e6d

    .line 1643
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1644
    const-string v5, "IncomeProduction"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1645
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1643
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1651
    :cond_1e6d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1eda

    .line 1652
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1653
    const-string v5, "MaximumManpower"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1654
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1652
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1660
    :cond_1eda
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1f4c

    .line 1661
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1662
    const-string v5, "UnitsAttack"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1663
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1661
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1666
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1669
    :cond_1f4c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_1fbe

    .line 1670
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1671
    const-string v5, "UnitsDefense"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1672
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1670
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1678
    :cond_1fbe
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v1, :cond_202e

    .line 1679
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1680
    const-string v5, "RegimentsLimit"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1681
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v3, v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1679
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1687
    :cond_202e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_20a4

    .line 1688
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1689
    const-string v5, "ImproveRelationsModifier"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1690
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1688
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1696
    :cond_20a4
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_211a

    .line 1697
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1698
    const-string v5, "ArmyMovementSpeed"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1699
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1697
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1705
    :cond_211a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2193

    .line 1706
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1707
    const-string v5, "SiegeEffectiveness"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1708
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float v3, v3, v30

    const/16 v5, 0x64

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v9

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1706
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_2195

    .line 1705
    :cond_2193
    const/16 v5, 0x64

    .line 1714
    :goto_2195
    move/from16 v10, v23

    .line 1717
    .end local v8    # "statsY":I
    .end local v9    # "statW":I
    .end local v15    # "statH":I
    :goto_2197
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v12, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v8, v9

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v13, v8

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v15

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    invoke-direct {v1, v2, v3, v8, v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 1722
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_ECONOMIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v37, v2, 0x4

    sget v38, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v40, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v41, v2, v3

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_2211

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr v3, v8

    const/16 v8, 0x63

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v15, v17

    invoke-virtual {v2, v15, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v2

    goto :goto_2215

    :cond_2211
    move-object/from16 v15, v17

    move-object/from16 v42, v7

    :goto_2215
    move-object/from16 v35, v1

    move/from16 v39, v12

    invoke-direct/range {v35 .. v42}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1723
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 1724
    move/from16 v10, v23

    .line 1726
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_22ad

    .line 1727
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$47;

    move-object/from16 v9, p0

    invoke-direct {v1, v9, v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$47;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;II)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 1743
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$48;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v56

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v21, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v31

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v62, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v15

    move-object v15, v4

    move/from16 v4, v18

    move-object/from16 v42, v15

    move-object/from16 v64, v58

    move-object/from16 v63, v59

    const/16 v15, 0x64

    move/from16 v5, v21

    move-object v15, v6

    move v6, v10

    move-object/from16 v65, v7

    move v7, v12

    move-object/from16 v66, v8

    move/from16 v8, v28

    move/from16 v9, v31

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$48;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIII)V

    move-object/from16 v1, v66

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v70, v19

    move-object/from16 v7, v42

    move-object/from16 v68, v60

    move-object/from16 v69, v61

    move-object/from16 v5, v63

    move-object/from16 v6, v64

    move-object/from16 v9, v65

    goto/16 :goto_3290

    .line 1790
    :cond_22ad
    move-object/from16 v42, v4

    move-object/from16 v65, v7

    move-object/from16 v17, v15

    move-object/from16 v62, v56

    move-object/from16 v64, v58

    move-object/from16 v63, v59

    move-object v15, v6

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$49;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v6, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    const/16 v18, -0x1

    const/16 v21, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v3, v10

    move v4, v12

    move-object/from16 v31, v8

    move/from16 v8, v18

    move-object/from16 v67, v9

    move/from16 v9, v21

    move/from16 v18, v10

    .end local v10    # "buttonX":I
    .local v18, "buttonX":I
    move-object/from16 v10, v31

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$49;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;IILjava/lang/String;IIIILjava/lang/String;)V

    move-object/from16 v1, v67

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1813
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v10, v18, v1

    .line 1815
    .end local v18    # "buttonX":I
    .restart local v10    # "buttonX":I
    const/4 v8, 0x0

    .line 1816
    .restart local v8    # "statsY":I
    sub-int v1, v13, v10

    sub-int v9, v1, v23

    .line 1817
    .restart local v9    # "statW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v18, v1, 0x3

    .line 1820
    .local v18, "statH":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$50;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v6, v19

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v61

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, v60

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v68, v4

    move v4, v10

    move-object/from16 v69, v5

    move v5, v12

    move-object/from16 v70, v6

    move/from16 v6, v19

    move/from16 v19, v9

    move-object v9, v7

    .end local v9    # "statW":I
    .local v19, "statW":I
    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$50;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1890
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sub-int v3, v13, v23

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 1892
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$51;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v1, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v6, v1, v2

    move-object v1, v9

    move-object/from16 v2, p0

    move v4, v10

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$51;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1939
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_244d

    .line 1940
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1941
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, v65

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1942
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v42

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1940
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_2451

    .line 1939
    :cond_244d
    move-object/from16 v7, v42

    move-object/from16 v9, v65

    .line 1948
    :goto_2451
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_24c8

    .line 1949
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1950
    move-object/from16 v6, v64

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1951
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1949
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1954
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_24ca

    .line 1948
    :cond_24c8
    move-object/from16 v6, v64

    .line 1957
    :goto_24ca
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2541

    .line 1958
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1959
    move-object/from16 v5, v63

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1960
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1958
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1963
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_2543

    .line 1957
    :cond_2541
    move-object/from16 v5, v63

    .line 1966
    :goto_2543
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_25bb

    .line 1967
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1968
    const-string v4, "ConstructionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1969
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1967
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1975
    :cond_25bb
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2633

    .line 1976
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1977
    const-string v4, "AdministrationBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1978
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1976
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1984
    :cond_2633
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_26ab

    .line 1985
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1986
    const-string v4, "EconomyBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1987
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1985
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1990
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 1992
    :cond_26ab
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2723

    .line 1993
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1994
    const-string v4, "MilitaryBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1995
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 1993
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1998
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2001
    :cond_2723
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_279b

    .line 2002
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2003
    const-string v4, "InvestInEconomyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2004
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2002
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2010
    :cond_279b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2813

    .line 2011
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2012
    const-string v4, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2013
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2011
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2020
    :cond_2813
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_288b

    .line 2021
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2022
    const-string v4, "IncreaseGrowthRateCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2023
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2021
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2026
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2029
    :cond_288b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2903

    .line 2030
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2031
    const-string v4, "DevelopInfrastructureCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2032
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2030
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2039
    :cond_2903
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2979

    .line 2040
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2041
    const-string v4, "ProductionEfficiency"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2042
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2040
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2045
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2048
    :cond_2979
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_29eb

    .line 2049
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2050
    const-string v4, "ResearchPerMonth"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2051
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2049
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2057
    :cond_29eb
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2a5d

    .line 2058
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2059
    const-string v4, "MonthlyLegacy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2060
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2058
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2063
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2066
    :cond_2a5d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2acf

    .line 2067
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2068
    const-string v4, "GeneralsAttack"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2069
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2067
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2075
    :cond_2acf
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2b41

    .line 2076
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2077
    const-string v4, "GeneralsDefense"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2078
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2076
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2084
    :cond_2b41
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2bb7

    .line 2085
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2086
    const-string v4, "ArmyMaintenance"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2087
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2085
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2090
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2093
    :cond_2bb7
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2c2d

    .line 2094
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2095
    const-string v4, "ArmyRecruitmentCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2096
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2094
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2105
    :cond_2c2d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2ca5

    .line 2106
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2107
    const-string v4, "ConstructionTime"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2108
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2106
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2114
    :cond_2ca5
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2d1b

    .line 2115
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2116
    const-string v4, "IncreaseManpowerCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2117
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2115
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2123
    :cond_2d1b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2d91

    .line 2124
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2125
    const-string v4, "RecruitmentTime"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2126
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->time:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2124
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2129
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2132
    :cond_2d91
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2e07

    .line 2133
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2134
    const-string v4, "LoanInterest"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2135
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2133
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2138
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2141
    :cond_2e07
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2e7d

    .line 2142
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2143
    const-string v4, "CoreConstruction"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2144
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2142
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2147
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2150
    :cond_2e7d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2ef3

    .line 2151
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2152
    const-string v4, "ReligionConversionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2153
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2151
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2156
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2159
    :cond_2ef3
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2f69

    .line 2160
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2161
    const-string v4, "IncomeProduction"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2162
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2160
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2165
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2168
    :cond_2f69
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_2fd6

    .line 2169
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2170
    const-string v4, "MaximumManpower"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2171
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2169
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2174
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2177
    :cond_2fd6
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3048

    .line 2178
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2179
    const-string v4, "UnitsAttack"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2180
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2178
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2183
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2186
    :cond_3048
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_30ba

    .line 2187
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2188
    const-string v4, "UnitsDefense"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2189
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2187
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2195
    :cond_30ba
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v1, :cond_312a

    .line 2196
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2197
    const-string v4, "RegimentsLimit"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2198
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2196
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2201
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2204
    :cond_312a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_31a0

    .line 2205
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2206
    const-string v4, "ImproveRelationsModifier"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2207
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2205
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2210
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2213
    :cond_31a0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3216

    .line 2214
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2215
    const-string v4, "ArmyMovementSpeed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2216
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2214
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2219
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2222
    :cond_3216
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_328e

    .line 2223
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2224
    const-string v4, "SiegeEffectiveness"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2225
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v19

    move/from16 v53, v18

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2223
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2231
    :cond_328e
    move/from16 v10, v23

    .line 2234
    .end local v8    # "statsY":I
    .end local v18    # "statH":I
    .end local v19    # "statW":I
    :goto_3290
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v4, v8

    const/4 v8, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v13, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v19, 0x2

    add-int v8, v18, v19

    invoke-direct {v1, v2, v3, v4, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2236
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 2240
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_INNOVATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v37, v2, 0x4

    sget v38, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v40, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v41, v2, v3

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_330b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr v3, v4

    const/16 v4, 0x63

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v8, v17

    invoke-virtual {v2, v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v2

    goto :goto_330f

    :cond_330b
    move-object/from16 v8, v17

    move-object/from16 v42, v9

    :goto_330f
    move-object/from16 v35, v1

    move/from16 v39, v12

    invoke-direct/range {v35 .. v42}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 2242
    move/from16 v10, v23

    .line 2244
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_33a4

    .line 2245
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$52;

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$52;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;II)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2259
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 2261
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$53;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v62

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v19, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v21

    move-object v1, v3

    move-object/from16 v71, v2

    move-object/from16 v2, p0

    move-object/from16 v72, v3

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v73, v5

    move/from16 v5, v19

    move-object/from16 v74, v6

    move v6, v10

    move-object/from16 v75, v7

    move v7, v12

    move-object/from16 v76, v8

    move/from16 v8, v28

    move-object/from16 v45, v15

    move-object v15, v9

    move/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$53;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIII)V

    move-object/from16 v1, v72

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v45

    move-object/from16 v78, v68

    move-object/from16 v79, v69

    move-object/from16 v80, v70

    move-object/from16 v5, v73

    move-object/from16 v6, v74

    move-object/from16 v7, v75

    goto/16 :goto_4387

    .line 2308
    :cond_33a4
    move-object/from16 v73, v5

    move-object/from16 v74, v6

    move-object/from16 v75, v7

    move-object/from16 v76, v8

    move-object/from16 v45, v15

    move-object/from16 v71, v62

    move-object v15, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$54;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v6, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    const/16 v17, -0x1

    const/16 v18, 0x2

    move-object v1, v9

    move-object/from16 v2, p0

    move v3, v10

    move v4, v12

    move-object/from16 v19, v8

    move/from16 v8, v17

    move-object/from16 v77, v9

    move/from16 v9, v18

    move/from16 v17, v10

    .end local v10    # "buttonX":I
    .local v17, "buttonX":I
    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$54;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;IILjava/lang/String;IIIILjava/lang/String;)V

    move-object/from16 v1, v77

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2331
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v10, v17, v1

    .line 2333
    .end local v17    # "buttonX":I
    .restart local v10    # "buttonX":I
    const/4 v8, 0x0

    .line 2334
    .restart local v8    # "statsY":I
    sub-int v1, v13, v10

    sub-int v9, v1, v23

    .line 2335
    .restart local v9    # "statW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v17, v1, 0x3

    .line 2337
    .local v17, "statH":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$55;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v6, v70

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v69

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, v68

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v78, v4

    move v4, v10

    move-object/from16 v79, v5

    move v5, v12

    move-object/from16 v80, v6

    move/from16 v6, v18

    move/from16 v18, v9

    move-object v9, v7

    .end local v9    # "statW":I
    .local v18, "statW":I
    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$55;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2406
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sub-int v3, v13, v23

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 2408
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$56;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v1, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v6, v1, v2

    move-object v1, v9

    move-object/from16 v2, p0

    move v4, v10

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$56;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2455
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3544

    .line 2456
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2457
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v45

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2458
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v75

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2456
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2461
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_3548

    .line 2455
    :cond_3544
    move-object/from16 v9, v45

    move-object/from16 v7, v75

    .line 2464
    :goto_3548
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_35bf

    .line 2465
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2466
    move-object/from16 v6, v74

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2467
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2465
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_35c1

    .line 2464
    :cond_35bf
    move-object/from16 v6, v74

    .line 2473
    :goto_35c1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3638

    .line 2474
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2475
    move-object/from16 v5, v73

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2476
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2474
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2479
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_363a

    .line 2473
    :cond_3638
    move-object/from16 v5, v73

    .line 2482
    :goto_363a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_36b2

    .line 2483
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2484
    const-string v4, "ConstructionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2485
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2483
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2488
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2490
    :cond_36b2
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_372a

    .line 2491
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2492
    const-string v4, "AdministrationBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2493
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2491
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2496
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2499
    :cond_372a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_37a2

    .line 2500
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2501
    const-string v4, "EconomyBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2502
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2500
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2505
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2507
    :cond_37a2
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_381a

    .line 2508
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2509
    const-string v4, "MilitaryBuildingsCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2510
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2508
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2513
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2516
    :cond_381a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3892

    .line 2517
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2518
    const-string v4, "InvestInEconomyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2519
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2517
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2522
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2525
    :cond_3892
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_390a

    .line 2526
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2527
    const-string v4, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2528
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2526
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2531
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2534
    :cond_390a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3982

    .line 2535
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2536
    const-string v4, "IncreaseGrowthRateCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2537
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2535
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2540
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2543
    :cond_3982
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_39fa

    .line 2544
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2545
    const-string v4, "DevelopInfrastructureCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2546
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2544
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2552
    :cond_39fa
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3a70

    .line 2553
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2554
    const-string v4, "ProductionEfficiency"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2555
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2553
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2558
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2561
    :cond_3a70
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3ae2

    .line 2562
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2563
    const-string v4, "ResearchPerMonth"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2564
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2562
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2567
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2570
    :cond_3ae2
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3b54

    .line 2571
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2572
    const-string v4, "MonthlyLegacy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2573
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2571
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2576
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2579
    :cond_3b54
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3bc6

    .line 2580
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2581
    const-string v4, "GeneralsAttack"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2582
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2580
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2588
    :cond_3bc6
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3c38

    .line 2589
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2590
    const-string v4, "GeneralsDefense"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2591
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2589
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2594
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2597
    :cond_3c38
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3cae

    .line 2598
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2599
    const-string v4, "ArmyMaintenance"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2600
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2598
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2603
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2606
    :cond_3cae
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3d24

    .line 2607
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2608
    const-string v4, "ArmyRecruitmentCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2609
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2607
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2618
    :cond_3d24
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3d9c

    .line 2619
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2620
    const-string v4, "ConstructionTime"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2621
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2619
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2627
    :cond_3d9c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3e12

    .line 2628
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2629
    const-string v4, "IncreaseManpowerCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2630
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2628
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2633
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2636
    :cond_3e12
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3e88

    .line 2637
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2638
    const-string v4, "RecruitmentTime"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2639
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2637
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2642
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2645
    :cond_3e88
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3efe

    .line 2646
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2647
    const-string v4, "LoanInterest"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2648
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2646
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2651
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2654
    :cond_3efe
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3f74

    .line 2655
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2656
    const-string v4, "CoreConstruction"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2657
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2655
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2660
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2663
    :cond_3f74
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_3fea

    .line 2664
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2665
    const-string v4, "ReligionConversionCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2666
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2664
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2669
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2672
    :cond_3fea
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4060

    .line 2673
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2674
    const-string v4, "IncomeProduction"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2675
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2673
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2678
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2681
    :cond_4060
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_40cd

    .line 2682
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2683
    const-string v4, "MaximumManpower"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2684
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2682
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2687
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2690
    :cond_40cd
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_413f

    .line 2691
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2692
    const-string v4, "UnitsAttack"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2693
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2691
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2696
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2699
    :cond_413f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_41b1

    .line 2700
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2701
    const-string v4, "UnitsDefense"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2702
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2700
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2705
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2708
    :cond_41b1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v1, :cond_4221

    .line 2709
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2710
    const-string v4, "RegimentsLimit"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2711
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2709
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2714
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2717
    :cond_4221
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4297

    .line 2718
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2719
    const-string v4, "ImproveRelationsModifier"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2720
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2718
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2723
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2726
    :cond_4297
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_430d

    .line 2727
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2728
    const-string v4, "ArmyMovementSpeed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2729
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2727
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2732
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2735
    :cond_430d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4385

    .line 2736
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2737
    const-string v4, "SiegeEffectiveness"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2738
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float v3, v3, v30

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v18

    move/from16 v53, v17

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2736
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2741
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2744
    :cond_4385
    move/from16 v10, v23

    .line 2747
    .end local v8    # "statsY":I
    .end local v17    # "statH":I
    .end local v18    # "statW":I
    :goto_4387
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v4, v8

    const/4 v8, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v13, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v18, 0x2

    add-int v8, v17, v18

    invoke-direct {v1, v2, v3, v4, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2749
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 2753
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->ADVISOR_NAME_MILITARY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v37, v2, 0x4

    sget v38, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v40, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v41, v2, v3

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v2, :cond_4402

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr v3, v4

    const/16 v4, 0x63

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v4, v76

    invoke-virtual {v2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v2

    goto :goto_4404

    :cond_4402
    move-object/from16 v42, v15

    :goto_4404
    move-object/from16 v35, v1

    move/from16 v39, v12

    invoke-direct/range {v35 .. v42}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2754
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 2755
    move/from16 v10, v23

    .line 2757
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_447e

    .line 2758
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$57;

    move-object/from16 v11, p0

    invoke-direct {v1, v11, v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$57;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;II)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2772
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 2774
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$58;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v71

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v17

    move-object v1, v8

    move-object/from16 v2, p0

    move v6, v10

    move v7, v12

    move-object/from16 v81, v8

    move/from16 v8, v28

    move-object/from16 v82, v9

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$58;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIII)V

    move-object/from16 v1, v81

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v15

    move-object/from16 v86, v79

    move-object/from16 v9, v82

    goto/16 :goto_5455

    .line 2821
    :cond_447e
    move-object/from16 v82, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$59;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    const/16 v18, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    move v3, v10

    move/from16 v21, v4

    move v4, v12

    move-object/from16 v83, v5

    move-object v5, v8

    move-object v8, v6

    move/from16 v6, v21

    move-object/from16 v84, v7

    move/from16 v7, v17

    move-object/from16 v85, v8

    move/from16 v8, v18

    move-object/from16 v18, v15

    move-object v15, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$59;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;IILjava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2844
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 2846
    const/4 v8, 0x0

    .line 2847
    .restart local v8    # "statsY":I
    sub-int v1, v13, v10

    sub-int v9, v1, v23

    .line 2848
    .restart local v9    # "statW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x3

    .line 2850
    .restart local v15    # "statH":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$60;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v80

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v79

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, v7

    move-object/from16 v2, p0

    move v4, v10

    move v5, v12

    move-object/from16 v86, v6

    move/from16 v6, v17

    move/from16 v17, v9

    move-object v9, v7

    .end local v9    # "statW":I
    .local v17, "statW":I
    move v7, v15

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$60;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2919
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sub-int v3, v13, v23

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 2921
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$61;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v1, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v6, v1, v2

    move-object v1, v9

    move-object/from16 v2, p0

    move v4, v10

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$61;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2965
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2968
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4616

    .line 2969
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2970
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, v18

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v82

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2971
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v84

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2969
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2974
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    goto :goto_461c

    .line 2968
    :cond_4616
    move-object/from16 v11, v18

    move-object/from16 v9, v82

    move-object/from16 v3, v84

    .line 2977
    :goto_461c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4692

    .line 2978
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2979
    move-object/from16 v5, v85

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2980
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2978
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2983
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2986
    :cond_4692
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4708

    .line 2987
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2988
    move-object/from16 v5, v83

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2989
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2987
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2992
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 2995
    :cond_4708
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4780

    .line 2996
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 2997
    const-string v5, "ConstructionCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 2998
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 2996
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3001
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3003
    :cond_4780
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_47f8

    .line 3004
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3005
    const-string v5, "AdministrationBuildingsCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3006
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3004
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3009
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3012
    :cond_47f8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4870

    .line 3013
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3014
    const-string v5, "EconomyBuildingsCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3015
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3013
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3018
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3020
    :cond_4870
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_48e8

    .line 3021
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3022
    const-string v5, "MilitaryBuildingsCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3023
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3021
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3026
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3029
    :cond_48e8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4960

    .line 3030
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3031
    const-string v5, "InvestInEconomyCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3032
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3030
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3035
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3038
    :cond_4960
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_49d8

    .line 3039
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3040
    const-string v5, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3041
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3039
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3044
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3047
    :cond_49d8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4a50

    .line 3048
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3049
    const-string v5, "IncreaseGrowthRateCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3050
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3048
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3053
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3056
    :cond_4a50
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4ac8

    .line 3057
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3058
    const-string v5, "DevelopInfrastructureCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3059
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3057
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3062
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3066
    :cond_4ac8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4b3e

    .line 3067
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3068
    const-string v5, "ProductionEfficiency"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3069
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3067
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3072
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3075
    :cond_4b3e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4bb0

    .line 3076
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3077
    const-string v5, "ResearchPerMonth"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3078
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3076
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3081
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3084
    :cond_4bb0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4c22

    .line 3085
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3086
    const-string v5, "MonthlyLegacy"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3087
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3085
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3090
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3093
    :cond_4c22
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4c94

    .line 3094
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3095
    const-string v5, "GeneralsAttack"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3096
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3094
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3099
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3102
    :cond_4c94
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4d06

    .line 3103
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3104
    const-string v5, "GeneralsDefense"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3105
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3103
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3108
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3111
    :cond_4d06
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4d7c

    .line 3112
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3113
    const-string v5, "ArmyMaintenance"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3114
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3112
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3117
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3120
    :cond_4d7c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4df2

    .line 3121
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3122
    const-string v5, "ArmyRecruitmentCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3123
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3121
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3126
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3132
    :cond_4df2
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4e6a

    .line 3133
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3134
    const-string v5, "ConstructionTime"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3135
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3133
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3138
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3141
    :cond_4e6a
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4ee0

    .line 3142
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3143
    const-string v5, "IncreaseManpowerCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3144
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3142
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3147
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3150
    :cond_4ee0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4f56

    .line 3151
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3152
    const-string v5, "RecruitmentTime"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3153
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3151
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3156
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3159
    :cond_4f56
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_4fcc

    .line 3160
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3161
    const-string v5, "LoanInterest"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3162
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3160
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3165
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3168
    :cond_4fcc
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_5042

    .line 3169
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3170
    const-string v5, "CoreConstruction"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3171
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3169
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3174
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3177
    :cond_5042
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_50b8

    .line 3178
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3179
    const-string v5, "ReligionConversionCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3180
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3178
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3183
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3186
    :cond_50b8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_512e

    .line 3187
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3188
    const-string v5, "IncomeProduction"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3189
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3187
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3192
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3195
    :cond_512e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_519b

    .line 3196
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3197
    const-string v5, "MaximumManpower"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3198
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3196
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3201
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3204
    :cond_519b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_520d

    .line 3205
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3206
    const-string v5, "UnitsAttack"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3207
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3205
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3210
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3213
    :cond_520d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_527f

    .line 3214
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3215
    const-string v5, "UnitsDefense"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3216
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3214
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3219
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3222
    :cond_527f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v1, :cond_52ef

    .line 3223
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3224
    const-string v5, "RegimentsLimit"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3225
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3223
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3228
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3231
    :cond_52ef
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_5365

    .line 3232
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3233
    const-string v5, "ImproveRelationsModifier"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3234
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3232
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3237
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3240
    :cond_5365
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_53db

    .line 3241
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3242
    const-string v5, "ArmyMovementSpeed"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3243
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3241
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3249
    :cond_53db
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float v1, v1, v20

    if-eqz v1, :cond_5453

    .line 3250
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 3251
    const-string v5, "SiegeEffectiveness"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 3252
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float v4, v4, v30

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    sget v49, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    add-int v51, v12, v8

    move-object/from16 v46, v1

    move/from16 v50, v10

    move/from16 v52, v17

    move/from16 v53, v15

    move/from16 v54, v16

    invoke-direct/range {v46 .. v54}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 3250
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3255
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    .line 3258
    :cond_5453
    move/from16 v10, v23

    .line 3261
    .end local v8    # "statsY":I
    .end local v15    # "statH":I
    .end local v17    # "statW":I
    :goto_5455
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v4, v5

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v13, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {v1, v2, v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3263
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v1

    .line 3424
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3427
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_5494

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-eqz v1, :cond_5491

    goto :goto_5494

    :cond_5491
    move v11, v10

    goto/16 :goto_5611

    .line 3428
    :cond_5494
    :goto_5494
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$62;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "BattleTactics"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v1, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v13, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    const-string v17, ""

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v12

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$62;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3441
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3443
    move/from16 v15, v23

    .line 3445
    .end local v10    # "buttonX":I
    .local v15, "buttonX":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$63;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS:[Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v5, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/16 v17, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    move-object/from16 v65, v11

    move-object v11, v10

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$63;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3490
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 3492
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$64;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_ATTACK:[I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v3

    aget v2, v2, v3

    if-lez v2, :cond_5558

    move-object/from16 v7, v18

    goto :goto_555a

    :cond_5558
    move-object/from16 v7, v65

    :goto_555a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_ATTACK:[I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v9

    move-object v1, v10

    move-object/from16 v2, p0

    move v5, v15

    move v6, v12

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$64;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIII)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3516
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 3518
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$65;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v3

    aget v2, v2, v3

    if-lez v2, :cond_55c1

    move-object/from16 v7, v18

    goto :goto_55c3

    :cond_55c1
    move-object/from16 v7, v65

    :goto_55c3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v9

    move-object v1, v10

    move-object/from16 v2, p0

    move v5, v15

    move v6, v12

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$65;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIII)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3542
    move/from16 v1, v23

    .line 3544
    .end local v15    # "buttonX":I
    .local v1, "buttonX":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v12, v2

    move v11, v1

    .line 3547
    .end local v1    # "buttonX":I
    .local v11, "buttonX":I
    :goto_5611
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_57e7

    .line 3548
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Military"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3549
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3551
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$66;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ArmyControlledByAI"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v10, v86

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->allowAIMove:Z

    if-eqz v2, :cond_567a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "On"

    goto :goto_567e

    :cond_567a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Off"

    :goto_567e
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->ai:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/16 v17, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    move/from16 v18, v11

    move-object v11, v10

    .end local v11    # "buttonX":I
    .local v18, "buttonX":I
    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$66;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3585
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3587
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$67;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Armies"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Colors"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->brush:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/4 v10, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$67;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3607
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3609
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD:Z

    if-nez v1, :cond_5749

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL:Z

    if-eqz v1, :cond_57e9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-eqz v1, :cond_57e9

    .line 3610
    :cond_5749
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Colonization"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3611
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3613
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$68;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Colonize"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ChooseAProvince"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/4 v10, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$68;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3658
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    goto :goto_57e9

    .line 3547
    .end local v18    # "buttonX":I
    .restart local v11    # "buttonX":I
    :cond_57e7
    move/from16 v18, v11

    .line 3661
    .end local v11    # "buttonX":I
    .end local v16    # "maxIconW":I
    .restart local v18    # "buttonX":I
    :cond_57e9
    :goto_57e9
    move-object v15, v14

    move/from16 v16, v18

    goto/16 :goto_6bca

    .line 3662
    .end local v18    # "buttonX":I
    .end local v29    # "rulerBGY":I
    .end local v44    # "paddingLeft2":I
    .local v11, "menuWidth":I
    .local v13, "rulerBGY":I
    .local v16, "buttonX":I
    .local v17, "paddingLeft2":I
    :cond_57ee
    move/from16 v29, v13

    move-object/from16 v65, v15

    move/from16 v44, v17

    move-object/from16 v18, v31

    move v13, v11

    move-object v11, v9

    .end local v11    # "menuWidth":I
    .end local v17    # "paddingLeft2":I
    .local v13, "menuWidth":I
    .restart local v29    # "rulerBGY":I
    .restart local v44    # "paddingLeft2":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5a6e

    .line 3665
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$69;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/4 v10, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$69;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3697
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3699
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getReleaseAVassal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3700
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3703
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$70;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "SelectCivilization"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$70;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3728
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3731
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 3733
    .local v15, "tempElementsBefore":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getVassalsToRelease(I)Ljava/util/List;

    move-result-object v11

    .line 3735
    .local v11, "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5a18

    .line 3736
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-int v10, v1

    .line 3737
    .local v10, "r0W0":I
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-int v8, v1

    .line 3739
    .local v8, "r0W":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_58f5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_58f7

    :cond_58f5
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_58f7
    move v9, v1

    move/from16 v20, v12

    .line 3741
    .end local v12    # "buttonY":I
    .local v9, "buttonH":I
    .local v20, "buttonY":I
    :goto_58fa
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5a09

    .line 3742
    const/4 v1, 0x0

    .line 3744
    .local v1, "bestID":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v12, v1

    .end local v1    # "bestID":I
    .local v2, "i":I
    .local v12, "bestID":I
    :goto_5908
    if-lez v2, :cond_5935

    .line 3745
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5932

    .line 3746
    move v1, v2

    move v12, v1

    .line 3744
    :cond_5932
    add-int/lit8 v2, v2, -0x1

    goto :goto_5908

    .line 3750
    .end local v2    # "i":I
    :cond_5935
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$71;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v65

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v17, 0x2

    mul-int/lit8 v5, v1, 0x2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    move-object v1, v7

    move/from16 v18, v2

    move-object/from16 v2, p0

    move/from16 v43, v13

    move-object v13, v6

    .end local v13    # "menuWidth":I
    .restart local v43    # "menuWidth":I
    move/from16 v6, v16

    move/from16 v19, v15

    move-object v15, v7

    .end local v15    # "tempElementsBefore":I
    .local v19, "tempElementsBefore":I
    move/from16 v7, v20

    move/from16 v21, v8

    .end local v8    # "r0W":I
    .local v21, "r0W":I
    move/from16 v22, v10

    .end local v10    # "r0W0":I
    .local v22, "r0W0":I
    move/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$71;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3802
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v1, v16, v1

    .line 3804
    .end local v16    # "buttonX":I
    .local v1, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$72;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    const/4 v7, -0x1

    move-object v10, v3

    move-object v8, v11

    move-object v15, v13

    .end local v11    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .local v8, "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    move-object/from16 v11, p0

    move v13, v12

    .end local v12    # "bestID":I
    .local v13, "bestID":I
    move-object v12, v4

    move v2, v13

    move/from16 v4, v43

    .end local v13    # "bestID":I
    .end local v43    # "menuWidth":I
    .local v2, "bestID":I
    .local v4, "menuWidth":I
    move v13, v5

    move-object v5, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v5, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v14, v7

    move-object/from16 v7, p0

    move-object/from16 v88, v15

    move/from16 v87, v19

    .end local v19    # "tempElementsBefore":I
    .local v87, "tempElementsBefore":I
    move v15, v1

    move/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$72;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3817
    move/from16 v16, v23

    .line 3818
    .end local v1    # "buttonX":I
    .restart local v16    # "buttonX":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v20, v20, v1

    .line 3820
    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3821
    .end local v2    # "bestID":I
    move v13, v4

    move-object v14, v5

    move-object v11, v8

    move/from16 v8, v21

    move/from16 v10, v22

    move/from16 v15, v87

    move-object/from16 v65, v88

    goto/16 :goto_58fa

    .line 3741
    .end local v4    # "menuWidth":I
    .end local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v21    # "r0W":I
    .end local v22    # "r0W0":I
    .end local v87    # "tempElementsBefore":I
    .local v8, "r0W":I
    .restart local v10    # "r0W0":I
    .restart local v11    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .local v13, "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "tempElementsBefore":I
    :cond_5a09
    move-object/from16 v7, p0

    move/from16 v21, v8

    move/from16 v22, v10

    move-object v8, v11

    move v4, v13

    move-object v5, v14

    move/from16 v87, v15

    const/4 v15, 0x1

    .end local v10    # "r0W0":I
    .end local v11    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tempElementsBefore":I
    .restart local v4    # "menuWidth":I
    .restart local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v8, "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .restart local v21    # "r0W":I
    .restart local v22    # "r0W0":I
    .restart local v87    # "tempElementsBefore":I
    move/from16 v12, v20

    goto :goto_5a20

    .line 3735
    .end local v4    # "menuWidth":I
    .end local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v8    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .end local v9    # "buttonH":I
    .end local v20    # "buttonY":I
    .end local v21    # "r0W":I
    .end local v22    # "r0W0":I
    .end local v87    # "tempElementsBefore":I
    .restart local v11    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .local v12, "buttonY":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "tempElementsBefore":I
    :cond_5a18
    move-object/from16 v7, p0

    move-object v8, v11

    move v4, v13

    move-object v5, v14

    move/from16 v87, v15

    const/4 v15, 0x1

    .line 3825
    .end local v11    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tempElementsBefore":I
    .restart local v4    # "menuWidth":I
    .restart local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v8    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .restart local v87    # "tempElementsBefore":I
    :goto_5a20
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, v87

    .end local v87    # "tempElementsBefore":I
    .local v2, "tempElementsBefore":I
    if-ne v2, v1, :cond_5a66

    .line 3826
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "None"

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v23, 0x2

    sub-int v10, v4, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v13, -0x1

    move-object v3, v1

    move v14, v4

    .end local v4    # "menuWidth":I
    .local v14, "menuWidth":I
    move-object v4, v6

    move-object v6, v5

    .end local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v5, v9

    move-object v9, v6

    .end local v6    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v6, v13

    move-object v13, v7

    move/from16 v7, v23

    move-object/from16 v17, v8

    .end local v8    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .local v17, "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    move v8, v12

    move-object v15, v9

    .end local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v9, v10

    move v10, v11

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3827
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v12, v1

    goto :goto_5a6b

    .line 3825
    .end local v14    # "menuWidth":I
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .restart local v4    # "menuWidth":I
    .restart local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v8    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    :cond_5a66
    move v14, v4

    move-object v15, v5

    move-object v13, v7

    move-object/from16 v17, v8

    .line 3831
    .end local v2    # "tempElementsBefore":I
    .end local v4    # "menuWidth":I
    .end local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v8    # "listRelease":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :goto_5a6b
    move v13, v14

    goto/16 :goto_6bca

    .line 3832
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v13    # "menuWidth":I
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :cond_5a6e
    move-object v15, v14

    move-object/from16 v88, v65

    move v14, v13

    move-object/from16 v13, p0

    .end local v13    # "menuWidth":I
    .local v14, "menuWidth":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    const-string v10, "Civilizations"

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6567

    .line 3835
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$73;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getReleaseAVassal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v14, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/16 v17, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    move-object v13, v10

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$73;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3869
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 3871
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_5cf1

    .line 3872
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getLord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v14, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3873
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v17, v12, v1

    .line 3875
    .end local v12    # "buttonY":I
    .local v17, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_5b1f

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_5b21

    :cond_5b1f
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_5b21
    move/from16 v19, v1

    .line 3877
    .local v19, "buttonH2":I
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v14, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    div-int/lit8 v21, v1, 0x7

    .line 3878
    .local v21, "statsRightW":I
    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 3880
    .local v22, "statsRightH":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v19, v1

    add-int v12, v1, v22

    .line 3882
    .local v12, "emptyBGH":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v10

    .line 3884
    .local v10, "nCivID":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$74;

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    mul-int/lit8 v1, v23, 0x2

    sub-int v8, v14, v1

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->population:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v88

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    move/from16 v31, v12

    .end local v12    # "emptyBGH":I
    .local v31, "emptyBGH":I
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v6, v23

    move-object v11, v7

    move/from16 v7, v17

    move-object/from16 v40, v13

    move-object v13, v9

    move/from16 v9, v19

    move/from16 v32, v10

    .end local v10    # "nCivID":I
    .local v32, "nCivID":I
    move/from16 v43, v14

    move-object v14, v11

    .end local v14    # "menuWidth":I
    .restart local v43    # "menuWidth":I
    move/from16 v11, v30

    move/from16 v89, v31

    .end local v31    # "emptyBGH":I
    .local v89, "emptyBGH":I
    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$74;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3924
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v17, v17, v1

    .line 3926
    move/from16 v11, v23

    .line 3927
    .end local v16    # "buttonX":I
    .local v11, "buttonX":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$75;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Tribute"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    mul-int/lit8 v1, v21, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move v6, v11

    move/from16 v7, v17

    move/from16 v9, v22

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$75;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3944
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 3946
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$76;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static/range {v32 .. v32}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_TributeLevel(I)I

    move-result v3

    move/from16 v13, v32

    .end local v32    # "nCivID":I
    .local v13, "nCivID":I
    invoke-static {v13, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(III)F

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v1, v21, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move v6, v11

    move v10, v13

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$76;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3967
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 3970
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$77;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Manpower"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v1, v21, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move v6, v11

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$77;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3987
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 3990
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_ManpowerLevel(I)I

    move-result v2

    invoke-static {v13, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerFromVassal_INFO(III)D

    move-result-wide v9

    .line 3991
    .local v9, "tVal":D
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$78;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v9, v10, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v1, v12

    move-object/from16 v2, p0

    move v6, v11

    move/from16 v8, v21

    move-wide/from16 v30, v9

    .end local v9    # "tVal":D
    .local v30, "tVal":D
    move/from16 v9, v22

    move v10, v13

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$78;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4014
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 4017
    move/from16 v16, v23

    .line 4018
    .end local v11    # "buttonX":I
    .restart local v16    # "buttonX":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v17, v17, v1

    .line 4020
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    move/from16 v2, v89

    .end local v89    # "emptyBGH":I
    .local v2, "emptyBGH":I
    sub-int v3, v17, v2

    move/from16 v11, v44

    .end local v44    # "paddingLeft2":I
    .local v11, "paddingLeft2":I
    mul-int/lit8 v12, v11, 0x2

    sub-int v4, v43, v12

    invoke-direct {v1, v11, v3, v4, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4022
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v17, v1

    move/from16 v21, v16

    .end local v17    # "buttonY":I
    .local v12, "buttonY":I
    goto :goto_5cfb

    .line 3871
    .end local v2    # "emptyBGH":I
    .end local v11    # "paddingLeft2":I
    .end local v13    # "nCivID":I
    .end local v19    # "buttonH2":I
    .end local v21    # "statsRightW":I
    .end local v22    # "statsRightH":I
    .end local v30    # "tVal":D
    .end local v43    # "menuWidth":I
    .restart local v14    # "menuWidth":I
    .restart local v44    # "paddingLeft2":I
    :cond_5cf1
    move-object/from16 v40, v13

    move/from16 v43, v14

    move/from16 v11, v44

    move-object/from16 v14, v88

    .end local v14    # "menuWidth":I
    .end local v44    # "paddingLeft2":I
    .restart local v11    # "paddingLeft2":I
    .restart local v43    # "menuWidth":I
    move/from16 v21, v16

    .line 4025
    .end local v16    # "buttonX":I
    .local v21, "buttonX":I
    :goto_5cfb
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getManageVassals()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v5, v2, 0x4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v13, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v43, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v9, v2, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v1

    move v7, v12

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4026
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 4028
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    .line 4031
    .local v10, "tempElementsBefore":I
    :try_start_5d6e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-lez v1, :cond_6504

    .line 4033
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4034
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_5d82
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_5d8e
    .catch Ljava/lang/Exception; {:try_start_5d6e .. :try_end_5d8e} :catch_650e

    if-ge v1, v2, :cond_5dbb

    .line 4035
    :try_start_5d90
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5dad
    .catch Ljava/lang/Exception; {:try_start_5d90 .. :try_end_5dad} :catch_5db0

    .line 4034
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d82

    .line 4793
    .end local v1    # "a":I
    :catch_5db0
    move-exception v0

    move-object v1, v0

    move/from16 v90, v10

    move v13, v11

    move-object v3, v15

    move/from16 v2, v43

    const/4 v10, 0x1

    goto/16 :goto_6517

    .line 4038
    :cond_5dbb
    :try_start_5dbb
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_5dc1
    .catch Ljava/lang/Exception; {:try_start_5dbb .. :try_end_5dc1} :catch_650e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5dca

    :try_start_5dc4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_VIEW_VASSAL_GRAPH_INCLUDE_PLAYER:Z
    :try_end_5dc8
    .catch Ljava/lang/Exception; {:try_start_5dc4 .. :try_end_5dc8} :catch_5db0

    if-eqz v1, :cond_5dd7

    .line 4039
    :cond_5dca
    :try_start_5dca
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4042
    :cond_5dd7
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_5ddd
    .catch Ljava/lang/Exception; {:try_start_5dca .. :try_end_5ddd} :catch_650e

    if-nez v1, :cond_5e7f

    .line 4043
    :try_start_5ddf
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_5e26

    .line 4044
    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$79;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 4045
    move-object/from16 v9, v40

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 4046
    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5dfd
    .catch Ljava/lang/Exception; {:try_start_5ddf .. :try_end_5dfd} :catch_5e73

    mul-int/lit8 v1, v23, 0x2

    sub-int v8, v43, v1

    move/from16 v9, v43

    .end local v43    # "menuWidth":I
    .local v9, "menuWidth":I
    int-to-float v1, v9

    const v2, 0x3eb33333    # 0.35f

    mul-float v1, v1, v2

    float-to-int v7, v1

    const/16 v17, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v6, v23

    move/from16 v19, v7

    move v7, v12

    move v13, v9

    .end local v9    # "menuWidth":I
    .local v13, "menuWidth":I
    move/from16 v9, v19

    move/from16 v90, v10

    .end local v10    # "tempElementsBefore":I
    .local v90, "tempElementsBefore":I
    move/from16 v10, v17

    :try_start_5e1c
    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$79;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    move-object/from16 v1, v16

    .line 4052
    .local v1, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4053
    nop

    .end local v1    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    goto :goto_5e57

    .line 4054
    .end local v13    # "menuWidth":I
    .end local v90    # "tempElementsBefore":I
    .restart local v10    # "tempElementsBefore":I
    .restart local v43    # "menuWidth":I
    :cond_5e26
    move/from16 v90, v10

    move-object/from16 v9, v40

    move/from16 v13, v43

    .end local v10    # "tempElementsBefore":I
    .end local v43    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v90    # "tempElementsBefore":I
    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$80;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 4055
    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 4056
    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v1, v23, 0x2

    sub-int v8, v13, v1

    int-to-float v1, v13

    const v2, 0x3eb33333    # 0.35f

    mul-float v1, v1, v2

    float-to-int v9, v1

    const/4 v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v6, v23

    move v7, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$80;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    move-object/from16 v1, v16

    .line 4062
    .restart local v1    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4066
    .end local v1    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    :goto_5e57
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1
    :try_end_5e67
    .catch Ljava/lang/Exception; {:try_start_5e1c .. :try_end_5e67} :catch_5e6b

    add-int/2addr v12, v1

    move/from16 v22, v12

    goto :goto_5e85

    .line 4793
    :catch_5e6b
    move-exception v0

    move-object v1, v0

    move v2, v13

    move-object v3, v15

    const/4 v10, 0x1

    move v13, v11

    goto/16 :goto_6517

    .end local v13    # "menuWidth":I
    .end local v90    # "tempElementsBefore":I
    .restart local v10    # "tempElementsBefore":I
    .restart local v43    # "menuWidth":I
    :catch_5e73
    move-exception v0

    move/from16 v90, v10

    move/from16 v13, v43

    move-object v1, v0

    move v2, v13

    move-object v3, v15

    const/4 v10, 0x1

    move v13, v11

    .end local v10    # "tempElementsBefore":I
    .end local v43    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v90    # "tempElementsBefore":I
    goto/16 :goto_6517

    .line 4042
    .end local v13    # "menuWidth":I
    .end local v90    # "tempElementsBefore":I
    .restart local v10    # "tempElementsBefore":I
    .restart local v43    # "menuWidth":I
    :cond_5e7f
    move/from16 v90, v10

    move/from16 v13, v43

    .end local v10    # "tempElementsBefore":I
    .end local v43    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v90    # "tempElementsBefore":I
    move/from16 v22, v12

    .line 4072
    .end local v12    # "buttonY":I
    .local v22, "buttonY":I
    :goto_5e85
    :try_start_5e85
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1
    :try_end_5e89
    .catch Ljava/lang/Exception; {:try_start_5e85 .. :try_end_5e89} :catch_64fb

    if-eqz v1, :cond_5e98

    :try_start_5e8b
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I
    :try_end_5e8d
    .catch Ljava/lang/Exception; {:try_start_5e8b .. :try_end_5e8d} :catch_5e8e

    goto :goto_5e9a

    .line 4793
    :catch_5e8e
    move-exception v0

    move-object v1, v0

    move v2, v13

    move-object v3, v15

    move/from16 v12, v22

    const/4 v10, 0x1

    move v13, v11

    goto/16 :goto_6517

    .line 4072
    :cond_5e98
    :try_start_5e98
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_5e9a
    move/from16 v30, v1

    .line 4074
    .local v30, "buttonH2":I
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x7

    move/from16 v31, v1

    .line 4075
    .local v31, "statsRightW":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move/from16 v32, v1

    .line 4077
    .local v32, "statsRightH":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v1, v30, v1

    mul-int/lit8 v2, v32, 0x2

    add-int v12, v1, v2

    .line 4080
    .local v12, "emptyBGH":I
    const/4 v1, 0x0

    .line 4081
    .local v1, "goldFromVassals":F
    const/4 v2, 0x0

    .line 4084
    .local v2, "manpowerFromVassals":F
    const/4 v3, 0x0

    move v9, v1

    move v8, v2

    .end local v1    # "goldFromVassals":F
    .end local v2    # "manpowerFromVassals":F
    .local v3, "i":I
    .local v8, "manpowerFromVassals":F
    .local v9, "goldFromVassals":F
    :goto_5ebd
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_5ec9
    .catch Ljava/lang/Exception; {:try_start_5e98 .. :try_end_5ec9} :catch_64fb

    if-ge v3, v1, :cond_5f35

    .line 4085
    :try_start_5ecb
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    invoke-static {v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(III)F

    move-result v1

    add-float/2addr v9, v1

    .line 4086
    float-to-double v1, v8

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v6, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    invoke-static {v4, v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerFromVassal_INFO(III)D

    move-result-wide v4
    :try_end_5f2d
    .catch Ljava/lang/Exception; {:try_start_5ecb .. :try_end_5f2d} :catch_5e8e

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    double-to-float v8, v1

    .line 4084
    add-int/lit8 v3, v3, 0x1

    goto :goto_5ebd

    .line 4089
    .end local v3    # "i":I
    :cond_5f35
    :try_start_5f35
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    .line 4090
    .local v10, "maxIconW":I
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    const/16 v16, 0x2

    div-int/lit8 v1, v1, 0x2

    move/from16 v33, v1

    .line 4091
    .local v33, "statW":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v34, v1, v2

    .line 4093
    .local v34, "statH":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$81;

    const-string v3, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4095
    cmpl-float v2, v9, v20

    if-lez v2, :cond_5f64

    move-object/from16 v2, v18

    goto :goto_5f65

    :cond_5f64
    move-object v2, v14

    :goto_5f65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x64

    invoke-static {v9, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I
    :try_end_5f79
    .catch Ljava/lang/Exception; {:try_start_5f35 .. :try_end_5f79} :catch_64fb

    move-object v1, v7

    move-object/from16 v2, p0

    const/16 v17, 0x64

    move/from16 v6, v21

    move/from16 v44, v11

    move-object v11, v7

    .end local v11    # "paddingLeft2":I
    .restart local v44    # "paddingLeft2":I
    move/from16 v7, v22

    move-object/from16 v88, v14

    move v14, v8

    .end local v8    # "manpowerFromVassals":F
    .local v14, "manpowerFromVassals":F
    move/from16 v8, v33

    move/from16 v35, v9

    .end local v9    # "goldFromVassals":F
    .local v35, "goldFromVassals":F
    move/from16 v9, v34

    :try_start_5f8e
    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$81;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 4093
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4133
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$82;

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4135
    cmpl-float v4, v14, v20

    if-lez v4, :cond_5fa4

    move-object/from16 v7, v18

    goto :goto_5fa6

    :cond_5fa4
    move-object/from16 v7, v88

    :goto_5fa6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v14, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    add-int v6, v21, v33

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_5fbd
    .catch Ljava/lang/Exception; {:try_start_5f8e .. :try_end_5fbd} :catch_64f1

    add-int/2addr v6, v7

    move/from16 v9, v44

    .end local v44    # "paddingLeft2":I
    .local v9, "paddingLeft2":I
    move-object v11, v1

    move v7, v12

    .end local v12    # "emptyBGH":I
    .local v7, "emptyBGH":I
    move-object/from16 v12, p0

    move/from16 v16, v13

    const/4 v8, 0x2

    .end local v13    # "menuWidth":I
    .local v16, "menuWidth":I
    move-object v13, v2

    move/from16 v36, v14

    move/from16 v2, v16

    move-object/from16 v4, v88

    .end local v14    # "manpowerFromVassals":F
    .end local v16    # "menuWidth":I
    .local v2, "menuWidth":I
    .local v36, "manpowerFromVassals":F
    move-object v14, v3

    move-object v3, v15

    const/4 v8, 0x1

    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v3, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v22

    move/from16 v18, v33

    move/from16 v19, v34

    move/from16 v20, v10

    :try_start_5fdc
    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$82;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 4133
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4170
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_5ff3
    .catch Ljava/lang/Exception; {:try_start_5fdc .. :try_end_5ff3} :catch_64ea

    add-int/2addr v1, v5

    add-int v12, v22, v1

    .line 4172
    .end local v22    # "buttonY":I
    .local v12, "buttonY":I
    :try_start_5ff6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4174
    .local v1, "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5ffc
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_6008
    .catch Ljava/lang/Exception; {:try_start_5ff6 .. :try_end_6008} :catch_64e5

    if-ge v5, v6, :cond_6038

    .line 4175
    :try_start_600a
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v6, v6, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_602f

    .line 4176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_602f
    .catch Ljava/lang/Exception; {:try_start_600a .. :try_end_602f} :catch_6032

    .line 4174
    :cond_602f
    add-int/lit8 v5, v5, 0x1

    goto :goto_5ffc

    .line 4793
    .end local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v7    # "emptyBGH":I
    .end local v10    # "maxIconW":I
    .end local v30    # "buttonH2":I
    .end local v31    # "statsRightW":I
    .end local v32    # "statsRightH":I
    .end local v33    # "statW":I
    .end local v34    # "statH":I
    .end local v35    # "goldFromVassals":F
    .end local v36    # "manpowerFromVassals":F
    :catch_6032
    move-exception v0

    move-object v1, v0

    move v13, v9

    const/4 v10, 0x1

    goto/16 :goto_6517

    .line 4174
    .restart local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    .restart local v7    # "emptyBGH":I
    .restart local v10    # "maxIconW":I
    .restart local v30    # "buttonH2":I
    .restart local v31    # "statsRightW":I
    .restart local v32    # "statsRightH":I
    .restart local v33    # "statW":I
    .restart local v34    # "statH":I
    .restart local v35    # "goldFromVassals":F
    .restart local v36    # "manpowerFromVassals":F
    :cond_6038
    move v5, v12

    move/from16 v6, v21

    .line 4180
    .end local v12    # "buttonY":I
    .end local v21    # "buttonX":I
    .local v5, "buttonY":I
    .local v6, "buttonX":I
    :goto_603b
    :try_start_603b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_64d1

    .line 4181
    const/4 v11, 0x0

    .line 4184
    .local v11, "bestID":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12
    :try_end_6046
    .catch Ljava/lang/Exception; {:try_start_603b .. :try_end_6046} :catch_64db

    sub-int/2addr v12, v8

    move v15, v11

    .end local v11    # "bestID":I
    .local v12, "i":I
    .local v15, "bestID":I
    :goto_6048
    if-lez v12, :cond_60a6

    .line 4185
    :try_start_604a
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v13, v13, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v13
    :try_end_6096
    .catch Ljava/lang/Exception; {:try_start_604a .. :try_end_6096} :catch_609d

    if-le v11, v13, :cond_609a

    .line 4186
    move v11, v12

    move v15, v11

    .line 4184
    :cond_609a
    add-int/lit8 v12, v12, -0x1

    goto :goto_6048

    .line 4793
    .end local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "emptyBGH":I
    .end local v10    # "maxIconW":I
    .end local v12    # "i":I
    .end local v15    # "bestID":I
    .end local v30    # "buttonH2":I
    .end local v31    # "statsRightW":I
    .end local v32    # "statsRightH":I
    .end local v33    # "statW":I
    .end local v34    # "statH":I
    .end local v35    # "goldFromVassals":F
    .end local v36    # "manpowerFromVassals":F
    :catch_609d
    move-exception v0

    move-object v1, v0

    move v12, v5

    move/from16 v21, v6

    move v13, v9

    const/4 v10, 0x1

    goto/16 :goto_6517

    .line 4190
    .restart local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "emptyBGH":I
    .restart local v10    # "maxIconW":I
    .restart local v15    # "bestID":I
    .restart local v30    # "buttonH2":I
    .restart local v31    # "statsRightW":I
    .restart local v32    # "statsRightH":I
    .restart local v33    # "statW":I
    .restart local v34    # "statH":I
    .restart local v35    # "goldFromVassals":F
    .restart local v36    # "manpowerFromVassals":F
    :cond_60a6
    :try_start_60a6
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-lez v11, :cond_64b6

    .line 4192
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    move v14, v11

    .line 4194
    .local v14, "nCivID":I
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$83;

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v18, v11, 0x2

    mul-int/lit8 v11, v23, 0x2

    sub-int v19, v2, v11

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->population:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12
    :try_end_6111
    .catch Ljava/lang/Exception; {:try_start_60a6 .. :try_end_6111} :catch_64db

    move/from16 v44, v9

    .end local v9    # "paddingLeft2":I
    .restart local v44    # "paddingLeft2":I
    :try_start_6113
    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_6123
    .catch Ljava/lang/Exception; {:try_start_6113 .. :try_end_6123} :catch_64aa

    move-object v11, v13

    move-object/from16 v12, p0

    move-object v8, v13

    move-object/from16 v13, v16

    move v9, v14

    .end local v14    # "nCivID":I
    .local v9, "nCivID":I
    move/from16 v14, v17

    move/from16 v37, v6

    move v6, v15

    .end local v15    # "bestID":I
    .local v6, "bestID":I
    .local v37, "buttonX":I
    move/from16 v15, v18

    move/from16 v16, v23

    move/from16 v17, v5

    move/from16 v18, v19

    move/from16 v19, v30

    move/from16 v20, v9

    :try_start_613b
    invoke-direct/range {v11 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$83;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4265
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8
    :try_end_6151
    .catch Ljava/lang/Exception; {:try_start_613b .. :try_end_6151} :catch_64a0

    add-int/2addr v5, v8

    .line 4268
    move/from16 v21, v23

    .line 4269
    .end local v37    # "buttonX":I
    .restart local v21    # "buttonX":I
    :try_start_6154
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$84;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Tribute"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    mul-int/lit8 v11, v31, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v11, v12

    move-object v11, v8

    move-object/from16 v12, p0

    move/from16 v16, v21

    move/from16 v17, v5

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$84;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4286
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_618b
    .catch Ljava/lang/Exception; {:try_start_6154 .. :try_end_618b} :catch_6498

    add-int/2addr v8, v11

    add-int v8, v21, v8

    .line 4289
    .end local v21    # "buttonX":I
    .local v8, "buttonX":I
    :try_start_618e
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$85;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Low"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/16 v21, 0x0

    move-object v11, v15

    move-object/from16 v12, p0

    move/from16 v38, v10

    move-object v10, v15

    .end local v10    # "maxIconW":I
    .local v38, "maxIconW":I
    move/from16 v15, v16

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$85;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4344
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 4346
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$86;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Medium"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/16 v21, 0x1

    move-object v11, v10

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$86;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4401
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 4403
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$87;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "High"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/16 v21, 0x2

    move-object v11, v10

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$87;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4463
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_6236
    .catch Ljava/lang/Exception; {:try_start_618e .. :try_end_6236} :catch_648e

    add-int/2addr v10, v11

    add-int v21, v8, v10

    .line 4465
    .end local v8    # "buttonX":I
    .restart local v21    # "buttonX":I
    :try_start_6239
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$88;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_TributeLevel(I)I

    move-result v12

    invoke-static {v11, v9, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(III)F

    move-result v11

    const/16 v15, 0x64

    invoke-static {v11, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v11, v31, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v11, v12

    move-object v11, v8

    move-object/from16 v12, p0

    const/16 v22, 0x64

    move v15, v10

    move/from16 v16, v21

    move/from16 v17, v5

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$88;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4503
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_TributeLevel(I)I

    move-result v10

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 4506
    move/from16 v21, v23

    .line 4507
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, v32, v8

    add-int/2addr v5, v8

    .line 4509
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$89;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Manpower"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v10, v31, 0x2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v10, v11

    move-object v11, v8

    move-object/from16 v12, p0

    move/from16 v16, v21

    move/from16 v17, v5

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$89;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4526
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_62e1
    .catch Ljava/lang/Exception; {:try_start_6239 .. :try_end_62e1} :catch_6498

    add-int/2addr v8, v10

    add-int v8, v21, v8

    .line 4528
    .end local v21    # "buttonX":I
    .restart local v8    # "buttonX":I
    :try_start_62e4
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$90;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Low"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    const/16 v21, 0x0

    move-object v11, v10

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$90;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4579
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 4581
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$91;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Medium"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    const/16 v21, 0x1

    move-object v11, v10

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$91;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4632
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 4634
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$92;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "High"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    const/16 v21, 0x2

    move-object v11, v10

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$92;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4685
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_6387
    .catch Ljava/lang/Exception; {:try_start_62e4 .. :try_end_6387} :catch_648e

    add-int/2addr v10, v11

    add-int v21, v8, v10

    .line 4687
    .end local v8    # "buttonX":I
    .restart local v21    # "buttonX":I
    :try_start_638a
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_ManpowerLevel(I)I

    move-result v10

    invoke-static {v8, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerFromVassal_INFO(III)D

    move-result-wide v10

    move-wide v14, v10

    .line 4688
    .local v14, "tVal":D
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$93;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v14, v15, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v11, v8

    move-object/from16 v12, p0

    move-wide/from16 v39, v14

    .end local v14    # "tVal":D
    .local v39, "tVal":D
    move v14, v10

    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$93;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIII)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4728
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_ManpowerLevel(I)I

    move-result v10

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 4729
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_6404
    .catch Ljava/lang/Exception; {:try_start_638a .. :try_end_6404} :catch_6498

    add-int/2addr v8, v10

    add-int v8, v21, v8

    .line 4732
    .end local v21    # "buttonX":I
    .restart local v8    # "buttonX":I
    :try_start_6407
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$94;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Wars"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->war:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_CanDeclareWar(I)Z

    move-result v11

    if-eqz v11, :cond_6428

    const/16 v21, 0x1

    goto :goto_642a

    :cond_6428
    const/16 v21, 0x0

    :goto_642a
    move-object v11, v10

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v18, v31

    move/from16 v19, v32

    move/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$94;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4780
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_644f
    .catch Ljava/lang/Exception; {:try_start_6407 .. :try_end_644f} :catch_648e

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 4782
    move/from16 v21, v23

    .line 4783
    .end local v8    # "buttonX":I
    .restart local v21    # "buttonX":I
    :try_start_6453
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8
    :try_end_6457
    .catch Ljava/lang/Exception; {:try_start_6453 .. :try_end_6457} :catch_6498

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    :try_start_6459
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_6465
    .catch Ljava/lang/Exception; {:try_start_6459 .. :try_end_6465} :catch_6487

    add-int/2addr v8, v11

    add-int v12, v5, v8

    .line 4785
    .end local v5    # "buttonY":I
    .local v12, "buttonY":I
    :try_start_6468
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;
    :try_end_646a
    .catch Ljava/lang/Exception; {:try_start_6468 .. :try_end_646a} :catch_6481

    sub-int v8, v12, v7

    mul-int/lit8 v11, v44, 0x2

    sub-int v11, v2, v11

    move/from16 v13, v44

    .end local v44    # "paddingLeft2":I
    .local v13, "paddingLeft2":I
    :try_start_6472
    invoke-direct {v5, v13, v8, v11, v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4787
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_647a
    .catch Ljava/lang/Exception; {:try_start_6472 .. :try_end_647a} :catch_647d

    add-int/2addr v12, v5

    move v5, v12

    goto :goto_64c1

    .line 4793
    .end local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "bestID":I
    .end local v7    # "emptyBGH":I
    .end local v9    # "nCivID":I
    .end local v30    # "buttonH2":I
    .end local v31    # "statsRightW":I
    .end local v32    # "statsRightH":I
    .end local v33    # "statW":I
    .end local v34    # "statH":I
    .end local v35    # "goldFromVassals":F
    .end local v36    # "manpowerFromVassals":F
    .end local v38    # "maxIconW":I
    .end local v39    # "tVal":D
    :catch_647d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6517

    .end local v13    # "paddingLeft2":I
    .restart local v44    # "paddingLeft2":I
    :catch_6481
    move-exception v0

    move/from16 v13, v44

    move-object v1, v0

    .end local v44    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto/16 :goto_6517

    .end local v12    # "buttonY":I
    .end local v13    # "paddingLeft2":I
    .restart local v5    # "buttonY":I
    .restart local v44    # "paddingLeft2":I
    :catch_6487
    move-exception v0

    move/from16 v13, v44

    move-object v1, v0

    move v12, v5

    .end local v44    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto/16 :goto_6517

    .end local v13    # "paddingLeft2":I
    .end local v21    # "buttonX":I
    .restart local v8    # "buttonX":I
    .restart local v44    # "paddingLeft2":I
    :catch_648e
    move-exception v0

    move/from16 v13, v44

    const/4 v10, 0x1

    move-object v1, v0

    move v12, v5

    move/from16 v21, v8

    .end local v44    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto/16 :goto_6517

    .end local v8    # "buttonX":I
    .end local v13    # "paddingLeft2":I
    .restart local v21    # "buttonX":I
    .restart local v44    # "paddingLeft2":I
    :catch_6498
    move-exception v0

    move/from16 v13, v44

    const/4 v10, 0x1

    move-object v1, v0

    move v12, v5

    .end local v44    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto/16 :goto_6517

    .end local v13    # "paddingLeft2":I
    .end local v21    # "buttonX":I
    .restart local v37    # "buttonX":I
    .restart local v44    # "paddingLeft2":I
    :catch_64a0
    move-exception v0

    move/from16 v13, v44

    const/4 v10, 0x1

    move-object v1, v0

    move v12, v5

    move/from16 v21, v37

    .end local v44    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto/16 :goto_6517

    .end local v13    # "paddingLeft2":I
    .end local v37    # "buttonX":I
    .local v6, "buttonX":I
    .restart local v44    # "paddingLeft2":I
    :catch_64aa
    move-exception v0

    move/from16 v37, v6

    move/from16 v13, v44

    const/4 v10, 0x1

    move-object v1, v0

    move v12, v5

    move/from16 v21, v37

    .end local v6    # "buttonX":I
    .end local v44    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    .restart local v37    # "buttonX":I
    goto/16 :goto_6517

    .line 4190
    .end local v13    # "paddingLeft2":I
    .end local v37    # "buttonX":I
    .restart local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "buttonX":I
    .restart local v7    # "emptyBGH":I
    .local v9, "paddingLeft2":I
    .restart local v10    # "maxIconW":I
    .restart local v15    # "bestID":I
    .restart local v30    # "buttonH2":I
    .restart local v31    # "statsRightW":I
    .restart local v32    # "statsRightH":I
    .restart local v33    # "statW":I
    .restart local v34    # "statH":I
    .restart local v35    # "goldFromVassals":F
    .restart local v36    # "manpowerFromVassals":F
    :cond_64b6
    move/from16 v37, v6

    move v13, v9

    move/from16 v38, v10

    move v6, v15

    const/4 v10, 0x1

    const/16 v22, 0x64

    .end local v9    # "paddingLeft2":I
    .end local v10    # "maxIconW":I
    .end local v15    # "bestID":I
    .local v6, "bestID":I
    .restart local v13    # "paddingLeft2":I
    .restart local v37    # "buttonX":I
    .restart local v38    # "maxIconW":I
    move/from16 v21, v37

    .line 4790
    .end local v37    # "buttonX":I
    .restart local v21    # "buttonX":I
    :goto_64c1
    :try_start_64c1
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_64c4
    .catch Ljava/lang/Exception; {:try_start_64c1 .. :try_end_64c4} :catch_64cc

    .line 4791
    move v9, v13

    move/from16 v6, v21

    move/from16 v10, v38

    const/4 v8, 0x1

    .end local v6    # "bestID":I
    goto/16 :goto_603b

    .line 4793
    .end local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "emptyBGH":I
    .end local v30    # "buttonH2":I
    .end local v31    # "statsRightW":I
    .end local v32    # "statsRightH":I
    .end local v33    # "statW":I
    .end local v34    # "statH":I
    .end local v35    # "goldFromVassals":F
    .end local v36    # "manpowerFromVassals":F
    .end local v38    # "maxIconW":I
    :catch_64cc
    move-exception v0

    move-object v1, v0

    move v12, v5

    goto/16 :goto_6517

    .line 4180
    .end local v13    # "paddingLeft2":I
    .end local v21    # "buttonX":I
    .restart local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "buttonX":I
    .restart local v7    # "emptyBGH":I
    .restart local v9    # "paddingLeft2":I
    .restart local v10    # "maxIconW":I
    .restart local v30    # "buttonH2":I
    .restart local v31    # "statsRightW":I
    .restart local v32    # "statsRightH":I
    .restart local v33    # "statW":I
    .restart local v34    # "statH":I
    .restart local v35    # "goldFromVassals":F
    .restart local v36    # "manpowerFromVassals":F
    :cond_64d1
    move/from16 v37, v6

    move v13, v9

    move/from16 v38, v10

    const/4 v10, 0x1

    .end local v6    # "buttonX":I
    .end local v9    # "paddingLeft2":I
    .end local v10    # "maxIconW":I
    .restart local v13    # "paddingLeft2":I
    .restart local v37    # "buttonX":I
    .restart local v38    # "maxIconW":I
    move v12, v5

    move/from16 v21, v37

    goto :goto_650b

    .line 4793
    .end local v1    # "tVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "emptyBGH":I
    .end local v13    # "paddingLeft2":I
    .end local v30    # "buttonH2":I
    .end local v31    # "statsRightW":I
    .end local v32    # "statsRightH":I
    .end local v33    # "statW":I
    .end local v34    # "statH":I
    .end local v35    # "goldFromVassals":F
    .end local v36    # "manpowerFromVassals":F
    .end local v37    # "buttonX":I
    .end local v38    # "maxIconW":I
    .restart local v6    # "buttonX":I
    .restart local v9    # "paddingLeft2":I
    :catch_64db
    move-exception v0

    move/from16 v37, v6

    move v13, v9

    const/4 v10, 0x1

    move-object v1, v0

    move v12, v5

    move/from16 v21, v37

    .end local v6    # "buttonX":I
    .end local v9    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    .restart local v37    # "buttonX":I
    goto :goto_6517

    .end local v5    # "buttonY":I
    .end local v13    # "paddingLeft2":I
    .end local v37    # "buttonX":I
    .restart local v9    # "paddingLeft2":I
    .restart local v12    # "buttonY":I
    .restart local v21    # "buttonX":I
    :catch_64e5
    move-exception v0

    move v13, v9

    const/4 v10, 0x1

    move-object v1, v0

    .end local v9    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto :goto_6517

    .end local v12    # "buttonY":I
    .end local v13    # "paddingLeft2":I
    .restart local v9    # "paddingLeft2":I
    .restart local v22    # "buttonY":I
    :catch_64ea
    move-exception v0

    move v13, v9

    const/4 v10, 0x1

    move-object v1, v0

    move/from16 v12, v22

    .end local v9    # "paddingLeft2":I
    .restart local v13    # "paddingLeft2":I
    goto :goto_6517

    .end local v2    # "menuWidth":I
    .end local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v13, "menuWidth":I
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v44    # "paddingLeft2":I
    :catch_64f1
    move-exception v0

    move v2, v13

    move-object v3, v15

    move/from16 v13, v44

    const/4 v10, 0x1

    move-object v1, v0

    move/from16 v12, v22

    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v44    # "paddingLeft2":I
    .restart local v2    # "menuWidth":I
    .restart local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v13, "paddingLeft2":I
    goto :goto_6517

    .end local v2    # "menuWidth":I
    .end local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "paddingLeft2":I
    .local v13, "menuWidth":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_64fb
    move-exception v0

    move v2, v13

    move-object v3, v15

    const/4 v10, 0x1

    move v13, v11

    move-object v1, v0

    move/from16 v12, v22

    .end local v11    # "paddingLeft2":I
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v2    # "menuWidth":I
    .restart local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v13, "paddingLeft2":I
    goto :goto_6517

    .line 4031
    .end local v2    # "menuWidth":I
    .end local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v13    # "paddingLeft2":I
    .end local v22    # "buttonY":I
    .end local v90    # "tempElementsBefore":I
    .local v10, "tempElementsBefore":I
    .restart local v11    # "paddingLeft2":I
    .restart local v12    # "buttonY":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v43    # "menuWidth":I
    :cond_6504
    move/from16 v90, v10

    move v13, v11

    move-object v3, v15

    move/from16 v2, v43

    const/4 v10, 0x1

    .line 4795
    .end local v10    # "tempElementsBefore":I
    .end local v11    # "paddingLeft2":I
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v43    # "menuWidth":I
    .restart local v2    # "menuWidth":I
    .restart local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v13    # "paddingLeft2":I
    .restart local v90    # "tempElementsBefore":I
    :goto_650b
    move/from16 v16, v21

    goto :goto_651c

    .line 4793
    .end local v2    # "menuWidth":I
    .end local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v13    # "paddingLeft2":I
    .end local v90    # "tempElementsBefore":I
    .restart local v10    # "tempElementsBefore":I
    .restart local v11    # "paddingLeft2":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v43    # "menuWidth":I
    :catch_650e
    move-exception v0

    move/from16 v90, v10

    move v13, v11

    move-object v3, v15

    move/from16 v2, v43

    const/4 v10, 0x1

    move-object v1, v0

    .line 4794
    .end local v10    # "tempElementsBefore":I
    .end local v11    # "paddingLeft2":I
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v43    # "menuWidth":I
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v2    # "menuWidth":I
    .restart local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v13    # "paddingLeft2":I
    .restart local v90    # "tempElementsBefore":I
    :goto_6517
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v16, v21

    .line 4797
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v21    # "buttonX":I
    .local v16, "buttonX":I
    :goto_651c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v11, v90

    .end local v90    # "tempElementsBefore":I
    .local v11, "tempElementsBefore":I
    if-ne v11, v1, :cond_655f

    .line 4798
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "None"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v6, v23, 0x2

    sub-int v9, v2, v6

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v6, -0x1

    move-object v15, v3

    .end local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object v3, v1

    move/from16 v7, v23

    const/16 v17, 0x1

    move-object/from16 v10, p0

    move v8, v12

    move/from16 v44, v13

    move-object v13, v10

    .end local v13    # "paddingLeft2":I
    .restart local v44    # "paddingLeft2":I
    move v10, v14

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4799
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v12, v1

    goto :goto_6564

    .line 4797
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v44    # "paddingLeft2":I
    .restart local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v13    # "paddingLeft2":I
    :cond_655f
    move-object v15, v3

    move/from16 v44, v13

    move-object/from16 v13, p0

    .line 4803
    .end local v3    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v11    # "tempElementsBefore":I
    .end local v13    # "paddingLeft2":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v44    # "paddingLeft2":I
    :goto_6564
    move v13, v2

    goto/16 :goto_6bca

    .line 4804
    .end local v2    # "menuWidth":I
    .local v14, "menuWidth":I
    :cond_6567
    move-object v9, v10

    move v2, v14

    const/16 v17, 0x1

    .end local v14    # "menuWidth":I
    .restart local v2    # "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_6bc9

    .line 4805
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Tutorial"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v34, v3, 0x4

    sget v35, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v37, v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v38, v3, v4

    const-string v39, ""

    move-object/from16 v32, v1

    move/from16 v36, v12

    invoke-direct/range {v32 .. v39}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4806
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v12, v1

    .line 4808
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$95;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Encyclopedia"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->encyclopedia:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v2, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v18, v1, v5

    const/16 v19, 0x1

    move-object v1, v14

    move v6, v2

    .end local v2    # "menuWidth":I
    .local v6, "menuWidth":I
    move-object/from16 v2, p0

    move/from16 v5, v23

    move v13, v6

    .end local v6    # "menuWidth":I
    .local v13, "menuWidth":I
    move v6, v12

    const/16 v20, 0x2

    move v8, v10

    move-object v10, v9

    move/from16 v9, v18

    move-object/from16 v91, v10

    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$95;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4838
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

    add-int/2addr v12, v1

    .line 4840
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$96;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Goods"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v1, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v13, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    const-string v9, ""

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$96;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4853
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

    add-int/2addr v12, v1

    .line 4855
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$97;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LargestGoodsProducers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    const/4 v10, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$97;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4885
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

    add-int/2addr v12, v1

    .line 4887
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Search"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4888
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

    add-int/2addr v12, v1

    .line 4891
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$98;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Search"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v91

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->world:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$98;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4924
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

    add-int/2addr v12, v1

    .line 4926
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$99;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Search"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->world:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v14

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$99;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4958
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

    add-int/2addr v12, v1

    .line 4960
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Statistics"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4961
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

    add-int/2addr v12, v1

    .line 4963
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$100;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Missions"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "GoldenAge"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldenGold:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$100;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4992
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

    add-int/2addr v12, v1

    .line 4994
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$101;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Statistics"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->stats:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$101;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5025
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

    add-int/2addr v12, v1

    .line 5027
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$102;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Graph"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->stats:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$102;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5052
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

    add-int/2addr v12, v1

    .line 5054
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$103;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CivilizationBonuses"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_IMG(I)I

    move-result v4

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$103;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5079
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

    add-int/2addr v12, v1

    .line 5081
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "More"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5082
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

    add-int/2addr v12, v1

    .line 5084
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$104;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Console"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->console:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$104;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5116
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

    add-int/2addr v12, v1

    .line 5118
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$105;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Hide"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": UI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->x:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$105;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5146
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

    add-int/2addr v12, v1

    .line 5148
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$106;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Hide"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": UI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Date"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->x:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$106;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5176
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

    add-int/2addr v12, v1

    .line 5178
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Diplomacy"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v2, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v8, v2, v6

    const-string v9, ""

    move-object v2, v1

    move v6, v12

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5179
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

    add-int/2addr v12, v1

    .line 5181
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$107;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CurrentWars"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->war:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v23

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$107;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5213
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

    add-int/2addr v12, v1

    .line 5215
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$108;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Alliances"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$108;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5247
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

    add-int/2addr v12, v1

    .line 5249
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$109;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassals()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$109;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5281
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

    add-int/2addr v12, v1

    .line 5283
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$110;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DefensivePacts"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defensivePact:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$110;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5315
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

    add-int/2addr v12, v1

    .line 5317
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$111;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NonAggressionPacts"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->nonAggression:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$111;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5349
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

    add-int/2addr v12, v1

    .line 5351
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$112;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Truces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->truce:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v7, v13, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v1, v2

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$112;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5383
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

    add-int/2addr v12, v1

    goto :goto_6bca

    .line 4804
    .end local v13    # "menuWidth":I
    .restart local v2    # "menuWidth":I
    :cond_6bc9
    move v13, v2

    .line 5386
    .end local v2    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    :goto_6bca
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v25, v25, v1

    .line 5387
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v25

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5389
    .local v10, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v11, 0x0

    invoke-direct {v1, v11, v11, v13, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5391
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v24

    move/from16 v4, v25

    move v5, v13

    move v6, v10

    move-object v7, v15

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 5393
    iput-boolean v11, v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->drawScrollPositionAlways:Z

    .line 5395
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 5396
    return-void
.end method

.method public static final actionSearchProvinces()V
    .registers 2

    .line 5449
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inCourt:Z

    .line 5450
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inSearchProvinces:Z

    .line 5451
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->disableAllViews()V

    .line 5453
    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    .line 5455
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSearch()V

    .line 5456
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 5458
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 5459
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 5434
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 5436
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_16

    .line 5437
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 5439
    :cond_16
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 5400
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 5401
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 5404
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 5405
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 5406
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->getHeight()I

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

    .line 5416
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 5417
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 5443
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 5445
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 5446
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 5421
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 5422
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 5423
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 5425
    if-nez p1, :cond_20

    .line 5426
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_20

    .line 5427
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 5430
    :cond_20
    return-void
.end method
