.class public Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CurrentSituation.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 28

    .line 45
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v20, v1, v2

    .line 49
    .local v20, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v21

    .line 51
    .local v21, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    .line 53
    .local v2, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v22

    .line 54
    .local v22, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v23, v1, v3

    .line 56
    .local v23, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v24, v1, 0x2

    .line 57
    .local v24, "buttonYPadding":I
    move/from16 v1, v24

    .line 59
    .local v1, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_53

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_55

    :cond_53
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    :goto_55
    move/from16 v17, v3

    .line 60
    .local v17, "buttonH":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v25, v3, v4

    .line 61
    .local v25, "tIconMaxW":I
    const/4 v3, 0x0

    .line 63
    .local v3, "iRow":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    const/4 v9, 0x0

    const/16 v26, 0x1

    if-eqz v4, :cond_b1

    .line 64
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$1;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "NoActiveResearch"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    mul-int/lit8 v5, v20, 0x2

    sub-int v16, v2, v5

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "iRow":I
    .local v5, "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8c

    const/16 v19, 0x1

    goto :goto_8e

    :cond_8c
    const/16 v19, 0x0

    :goto_8e
    move-object v10, v4

    move-object/from16 v11, p0

    move/from16 v14, v20

    move v15, v1

    move/from16 v18, v25

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v5

    .line 87
    .end local v5    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_b1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    if-eqz v4, :cond_fa

    .line 88
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "MaximumAmountOfGold"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v10, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .local v14, "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_d1

    const/4 v12, 0x1

    goto :goto_d2

    :cond_d1
    const/4 v12, 0x0

    :goto_d2
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    const/4 v15, 0x0

    move v9, v10

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    goto :goto_fb

    .line 87
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_fa
    const/4 v15, 0x0

    .line 129
    :goto_fb
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    const-string v13, ": "

    if-eqz v4, :cond_161

    .line 130
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Missions"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Available"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v16, v3, 0x1

    .end local v3    # "iRow":I
    .local v16, "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_13a

    const/4 v12, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v12, 0x0

    :goto_13b
    move-object v3, v14

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move/from16 v3, v16

    .line 153
    .end local v16    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_161
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    if-eqz v4, :cond_1db

    .line 154
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$4;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ChooseYourRivals"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_LIMIT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->rivals:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v16, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v16    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1b4

    const/4 v12, 0x1

    goto :goto_1b5

    :cond_1b4
    const/4 v12, 0x0

    :goto_1b5
    move-object v3, v14

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move/from16 v3, v16

    .line 178
    .end local v16    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_1db
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    if-eqz v4, :cond_23f

    .line 179
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$5;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Law"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Unlocked"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->law:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v16, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v16    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_218

    const/4 v12, 0x1

    goto :goto_219

    :cond_218
    const/4 v12, 0x0

    :goto_219
    move-object v3, v14

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move/from16 v3, v16

    .line 205
    .end local v16    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_23f
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    if-eqz v4, :cond_2a6

    .line 206
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "AdvantagePoints"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v13, v3, 0x1

    .end local v3    # "iRow":I
    .local v13, "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_280

    const/4 v12, 0x1

    goto :goto_281

    :cond_280
    const/4 v12, 0x0

    :goto_281
    move-object v3, v14

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v13

    .line 229
    .end local v13    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_2a6
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    if-eqz v4, :cond_2ec

    .line 230
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$7;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "HighInflation"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->inflation:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2c6

    const/4 v12, 0x1

    goto :goto_2c7

    :cond_2c6
    const/4 v12, 0x0

    :goto_2c7
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 260
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_2ec
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    if-eqz v4, :cond_332

    .line 261
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$8;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "NonCoreProvince"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->core:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_30c

    const/4 v12, 0x1

    goto :goto_30d

    :cond_30c
    const/4 v12, 0x0

    :goto_30d
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 300
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_332
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    if-eqz v4, :cond_378

    .line 301
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$9;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "DifferentReligion"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_352

    const/4 v12, 0x1

    goto :goto_353

    :cond_352
    const/4 v12, 0x0

    :goto_353
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 340
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_378
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    if-eqz v4, :cond_3be

    .line 341
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$10;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AvailableCivilizationLegacy"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_398

    const/4 v12, 0x1

    goto :goto_399

    :cond_398
    const/4 v12, 0x0

    :goto_399
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 368
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_3be
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    if-lez v4, :cond_404

    .line 369
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$11;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "NoAdvisor"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3de

    const/4 v12, 0x1

    goto :goto_3df

    :cond_3de
    const/4 v12, 0x0

    :goto_3df
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 393
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_404
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    if-lez v4, :cond_44a

    .line 394
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$12;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "PromoteAdvisor"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_424

    const/4 v12, 0x1

    goto :goto_425

    :cond_424
    const/4 v12, 0x0

    :goto_425
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 418
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_44a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    if-eqz v4, :cond_490

    .line 419
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$13;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "LackOfGeneral"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_46a

    const/4 v12, 0x1

    goto :goto_46b

    :cond_46a
    const/4 v12, 0x0

    :goto_46b
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 457
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_490
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    if-eqz v4, :cond_4d6

    .line 458
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$14;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UpgradeCapitalCity"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4b0

    const/4 v12, 0x1

    goto :goto_4b1

    :cond_4b0
    const/4 v12, 0x0

    :goto_4b1
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 481
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_4d6
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    if-eqz v4, :cond_51c

    .line 482
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$15;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UpgradeSupremeCourt"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4f6

    const/4 v12, 0x1

    goto :goto_4f7

    :cond_4f6
    const/4 v12, 0x0

    :goto_4f7
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 505
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_51c
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    if-eqz v4, :cond_562

    .line 506
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$16;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UpgradeMilitaryAcademy"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_53c

    const/4 v12, 0x1

    goto :goto_53d

    :cond_53c
    const/4 v12, 0x0

    :goto_53d
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 534
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_562
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    if-eqz v4, :cond_5a8

    .line 535
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$17;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UpgradeMilitaryAcademyForGenerals"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_582

    const/4 v12, 0x1

    goto :goto_583

    :cond_582
    const/4 v12, 0x0

    :goto_583
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 559
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_5a8
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    if-eqz v4, :cond_5ee

    .line 560
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$18;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UpgradeNuclearReactor"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5c8

    const/4 v12, 0x1

    goto :goto_5c9

    :cond_5c8
    const/4 v12, 0x0

    :goto_5c9
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v3, v14

    .line 583
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_5ee
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    if-eqz v4, :cond_635

    .line 584
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$19;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AWonderCanBeBuilt"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    mul-int/lit8 v4, v20, 0x2

    sub-int v9, v2, v4

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "iRow":I
    .restart local v14    # "iRow":I
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_60e

    const/4 v12, 0x1

    goto :goto_60f

    :cond_60e
    const/4 v12, 0x0

    :goto_60f
    move-object v3, v13

    move-object/from16 v4, p0

    move/from16 v7, v20

    move v8, v1

    move/from16 v10, v17

    move/from16 v11, v25

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move v10, v1

    goto :goto_637

    .line 583
    .end local v14    # "iRow":I
    .restart local v3    # "iRow":I
    :cond_635
    move v10, v1

    move v14, v3

    .line 606
    .end local v1    # "buttonY":I
    .end local v3    # "iRow":I
    .local v10, "buttonY":I
    .restart local v14    # "iRow":I
    :goto_637
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v23

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v1, v3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 608
    .local v11, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v15, v15, v2, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$20;

    const/4 v8, 0x0

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    const-string v6, ""

    const/4 v7, 0x0

    move-object v4, v3

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;ZZI)V

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move v12, v2

    .end local v2    # "menuWidth":I
    .local v12, "menuWidth":I
    move-object v2, v3

    move/from16 v3, v22

    move/from16 v4, v23

    move v5, v12

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 621
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 625
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 626
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 629
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 630
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 631
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 633
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 634
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 645
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 646
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    .line 647
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 638
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 640
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CurrentSituation"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 641
    return-void
.end method
