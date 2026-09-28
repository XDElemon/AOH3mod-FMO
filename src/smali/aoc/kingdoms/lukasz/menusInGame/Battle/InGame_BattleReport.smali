.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BattleReport.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static colorBar:Lcom/badlogic/gdx/graphics/Color;

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->colorBar:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 41
    .param p1, "reportID"    # I

    .line 46
    move/from16 v1, p1

    const-string v0, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    .line 50
    .local v3, "paddingLeft":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 52
    .local v14, "titleHeight":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    .line 54
    .local v15, "menuWidth":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v4, 0x2

    .line 55
    .local v16, "menuX":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int v17, v4, v5

    .line 57
    .local v17, "menuY":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v4, 0x2

    .line 58
    .local v18, "buttonYPadding":I
    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 59
    .local v19, "buttonY":I
    move v13, v3

    .line 62
    .local v13, "buttonX":I
    :try_start_4c
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCivID:I

    move v12, v4

    .line 63
    .local v12, "iCivIDLeft":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCivID:I

    move v11, v4

    .line 66
    .local v11, "iCivID":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleBig:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v20, v4, v5

    .line 68
    .local v20, "maxWidth":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move/from16 v21, v4

    .line 69
    .local v21, "tempTitlePaddingY":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v21, 0x2

    add-int v22, v4, v5

    .line 70
    .local v22, "tempTitleH":I
    div-int/lit8 v4, v15, 0x2

    sub-int/2addr v4, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v20, 0x2

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v23, v4, v5

    .line 72
    .local v23, "tempTextW":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;->playerWon:Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_af} :catch_564

    if-eqz v4, :cond_bc

    .line 73
    :try_start_b1
    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sput-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->colorBar:Lcom/badlogic/gdx/graphics/Color;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b5} :catch_b6

    goto :goto_c0

    .line 243
    .end local v11    # "iCivID":I
    .end local v12    # "iCivIDLeft":I
    .end local v20    # "maxWidth":I
    .end local v21    # "tempTitlePaddingY":I
    .end local v22    # "tempTitleH":I
    .end local v23    # "tempTextW":I
    :catch_b6
    move-exception v0

    move/from16 v25, v14

    move v14, v13

    goto/16 :goto_568

    .line 75
    .restart local v11    # "iCivID":I
    .restart local v12    # "iCivIDLeft":I
    .restart local v20    # "maxWidth":I
    .restart local v21    # "tempTitlePaddingY":I
    .restart local v22    # "tempTitleH":I
    .restart local v23    # "tempTextW":I
    :cond_bc
    :try_start_bc
    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    sput-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->colorBar:Lcom/badlogic/gdx/graphics/Color;

    .line 78
    :goto_c0
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    div-int/lit8 v5, v15, 0x2

    div-int/lit8 v6, v20, 0x2

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v6, v19, v21

    const/4 v10, 0x1

    invoke-direct {v4, v12, v5, v6, v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    div-int/lit8 v5, v15, 0x2

    div-int/lit8 v6, v20, 0x2

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int v6, v19, v21

    invoke-direct {v4, v11, v5, v6, v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    div-int/lit8 v4, v15, 0x2

    div-int/lit8 v5, v20, 0x2

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    add-int v24, v4, v5

    const/4 v8, -0x1

    move-object v4, v9

    move v5, v11

    move-object/from16 v25, v9

    move/from16 v9, v24

    const/16 v24, 0x1

    move/from16 v10, v19

    move/from16 v26, v11

    .end local v11    # "iCivID":I
    .local v26, "iCivID":I
    move/from16 v11, v23

    move/from16 v27, v12

    .end local v12    # "iCivIDLeft":I
    .local v27, "iCivIDLeft":I
    move/from16 v12, v22

    invoke-direct/range {v4 .. v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    move-object/from16 v4, v25

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    invoke-static/range {v27 .. v27}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_13d} :catch_564

    const/4 v9, -0x1

    move-object v5, v4

    move/from16 v6, v27

    move v10, v3

    move/from16 v11, v19

    move/from16 v12, v23

    move/from16 v25, v14

    move v14, v13

    .end local v13    # "buttonX":I
    .local v14, "buttonX":I
    .local v25, "titleHeight":I
    move/from16 v13, v22

    :try_start_14b
    invoke-direct/range {v5 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$1;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleBig:I

    mul-int/lit8 v5, v3, 0x2

    sub-int v10, v15, v5

    move-object v5, v4

    move-object/from16 v6, p0

    move v8, v3

    move/from16 v9, v19

    move/from16 v11, v22

    move/from16 v12, v20

    invoke-direct/range {v5 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_17b} :catch_562

    add-int/2addr v4, v5

    add-int v4, v19, v4

    .line 93
    .end local v19    # "buttonY":I
    .local v4, "buttonY":I
    :try_start_17e
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v5

    add-int/2addr v5, v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v5, v6

    .line 94
    .local v12, "statsX":I
    div-int/lit8 v5, v15, 0x2

    sub-int/2addr v5, v12

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v6, v6, 0x2

    sub-int v13, v5, v6

    .line 95
    .local v13, "statsW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x4

    move/from16 v19, v5

    .line 97
    .local v19, "statsH":I
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int v38, v5, v6

    .line 99
    .local v38, "maxIconW":I
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialWarscore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "WarScore"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->fWarScore:F

    const/16 v8, 0x64

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v6, v13, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v35, v6, v7

    const/16 v37, 0x0

    const/16 v32, -0x1

    move-object/from16 v28, v5

    move/from16 v33, v12

    move/from16 v34, v4

    move/from16 v36, v19

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialWarscore;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v4

    add-int v33, v6, v19

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    move-object/from16 v28, v5

    move-object/from16 v29, p0

    move/from16 v32, v12

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v38

    move/from16 v37, v6

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v6, v19

    mul-int/lit8 v6, v6, 0x2

    add-int v33, v4, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    move-object/from16 v28, v5

    move-object/from16 v29, p0

    move/from16 v32, v12

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v38

    move/from16 v37, v6

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$4;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v6, v19

    mul-int/lit8 v6, v6, 0x3

    add-int v33, v4, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    move-object/from16 v28, v5

    move-object/from16 v29, p0

    move/from16 v32, v12

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v38

    move/from16 v37, v6

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$5;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v12

    add-int v32, v6, v13

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v4

    add-int v33, v6, v19

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    move-object/from16 v28, v5

    move-object/from16 v29, p0

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v38

    move/from16 v37, v6

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$6;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v12

    add-int v32, v6, v13

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v6, v19

    mul-int/lit8 v6, v6, 0x2

    add-int v33, v4, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    move-object/from16 v28, v5

    move-object/from16 v29, p0

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v38

    move/from16 v37, v6

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$7;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v12

    add-int v32, v0, v13

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v0, v19

    mul-int/lit8 v0, v0, 0x3

    add-int v33, v4, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    move-object/from16 v28, v5

    move-object/from16 v29, p0

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v38

    move/from16 v37, v0

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static/range {v27 .. v27}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyLeft(I)V

    .line 196
    invoke-static/range {v26 .. v26}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyRight(I)V

    .line 198
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;

    move/from16 v11, v27

    .end local v27    # "iCivIDLeft":I
    .local v11, "iCivIDLeft":I
    invoke-direct {v0, v11, v14, v4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$8;

    sub-int v5, v15, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v10, p0

    move/from16 v9, v26

    .end local v26    # "iCivID":I
    .local v9, "iCivID":I
    invoke-direct {v0, v10, v9, v5, v4}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;III)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    .line 212
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_42f
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_42f} :catch_55e

    add-int v26, v3, v0

    .line 213
    .end local v3    # "paddingLeft":I
    .local v26, "paddingLeft":I
    :try_start_431
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$9;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Victorious"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    .line 214
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleReport;->leftSideWon:Z

    if-eqz v3, :cond_44e

    move/from16 v32, v26

    goto :goto_462

    :cond_44e
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v26, v3

    mul-int/lit8 v5, v26, 0x2

    sub-int v5, v15, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    move/from16 v32, v3

    :goto_462
    mul-int/lit8 v3, v26, 0x2

    sub-int v3, v15, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    div-int/lit8 v34, v3, 0x2

    sget v35, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v36, 0x0

    const/16 v31, -0x1

    move-object/from16 v27, v0

    move-object/from16 v28, p0

    move/from16 v33, v4

    invoke-direct/range {v27 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    .line 213
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$10;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Close"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    .line 223
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleReport;->leftSideWon:Z

    if-eqz v3, :cond_4b0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v26, v3

    mul-int/lit8 v5, v26, 0x2

    sub-int v5, v15, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    move/from16 v32, v3

    goto :goto_4b2

    :cond_4b0
    move/from16 v32, v26

    :goto_4b2
    mul-int/lit8 v3, v26, 0x2

    sub-int v3, v15, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    div-int/lit8 v34, v3, 0x2

    const/16 v35, 0x1

    const/16 v31, -0x1

    move-object/from16 v27, v0

    move-object/from16 v28, p0

    move/from16 v33, v4

    invoke-direct/range {v27 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIZ)V

    .line 222
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_4e1
    .catch Ljava/lang/Exception; {:try_start_431 .. :try_end_4e1} :catch_558

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v7, v4, v0

    .line 233
    .end local v4    # "buttonY":I
    .local v7, "buttonY":I
    :try_start_4e6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v17

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 235
    .local v8, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v7, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v15, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$11;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "BattleOf"

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleReport;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v27, v4

    move-object/from16 v28, p0

    invoke-direct/range {v27 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v15, 0x2
    :try_end_531
    .catch Ljava/lang/Exception; {:try_start_4e6 .. :try_end_531} :catch_550

    sub-int v5, v0, v3

    const/4 v0, 0x0

    const/16 v24, 0x1

    move-object/from16 v3, p0

    move/from16 v6, v17

    move/from16 v27, v7

    .end local v7    # "buttonY":I
    .local v27, "buttonY":I
    move v7, v15

    move/from16 v28, v9

    .end local v9    # "iCivID":I
    .local v28, "iCivID":I
    move-object v9, v2

    move v10, v0

    move v0, v11

    .end local v11    # "iCivIDLeft":I
    .local v0, "iCivIDLeft":I
    move/from16 v11, v24

    :try_start_544
    invoke-virtual/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V
    :try_end_547
    .catch Ljava/lang/Exception; {:try_start_544 .. :try_end_547} :catch_54a

    .line 245
    .end local v0    # "iCivIDLeft":I
    .end local v8    # "menuHeight":I
    .end local v12    # "statsX":I
    .end local v13    # "statsW":I
    .end local v19    # "statsH":I
    .end local v20    # "maxWidth":I
    .end local v21    # "tempTitlePaddingY":I
    .end local v22    # "tempTitleH":I
    .end local v23    # "tempTextW":I
    .end local v28    # "iCivID":I
    .end local v38    # "maxIconW":I
    move/from16 v7, v27

    goto :goto_56f

    .line 243
    :catch_54a
    move-exception v0

    move/from16 v3, v26

    move/from16 v19, v27

    goto :goto_568

    .end local v27    # "buttonY":I
    .restart local v7    # "buttonY":I
    :catch_550
    move-exception v0

    move/from16 v27, v7

    move/from16 v3, v26

    move/from16 v19, v27

    .end local v7    # "buttonY":I
    .restart local v27    # "buttonY":I
    goto :goto_568

    .end local v27    # "buttonY":I
    .restart local v4    # "buttonY":I
    :catch_558
    move-exception v0

    move/from16 v19, v4

    move/from16 v3, v26

    goto :goto_568

    .end local v26    # "paddingLeft":I
    .restart local v3    # "paddingLeft":I
    :catch_55e
    move-exception v0

    move/from16 v19, v4

    goto :goto_568

    .end local v4    # "buttonY":I
    .local v19, "buttonY":I
    :catch_562
    move-exception v0

    goto :goto_568

    .end local v25    # "titleHeight":I
    .local v13, "buttonX":I
    .local v14, "titleHeight":I
    :catch_564
    move-exception v0

    move/from16 v25, v14

    move v14, v13

    .line 244
    .end local v13    # "buttonX":I
    .local v0, "ex":Ljava/lang/Exception;
    .local v14, "buttonX":I
    .restart local v25    # "titleHeight":I
    :goto_568
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v26, v3

    move/from16 v7, v19

    .line 246
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "paddingLeft":I
    .end local v19    # "buttonY":I
    .restart local v7    # "buttonY":I
    .restart local v26    # "paddingLeft":I
    :goto_56f
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 250
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    .line 251
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_23

    .line 252
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 255
    :cond_23
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 256
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 257
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getHeight()I

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

    .line 259
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 260
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 264
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 265
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

    .line 266
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAnimationTime()V

    .line 267
    return-void
.end method
