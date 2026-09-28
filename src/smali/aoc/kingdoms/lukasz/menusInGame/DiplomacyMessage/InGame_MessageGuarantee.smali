.class public Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_MessageGuarantee.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static iCivID:I

.field public static key:Ljava/lang/String;

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->lTime:J

    .line 47
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 35
    .param p1, "nKey"    # Ljava/lang/String;

    .line 51
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 54
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v21, v0, v1

    .line 55
    .local v21, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v22

    .line 57
    .local v22, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    .line 59
    .local v9, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v23, v0, v1

    .line 61
    .local v23, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v24, v0, 0x2

    .line 62
    .local v24, "buttonYPadding":I
    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 63
    .local v25, "buttonY":I
    move/from16 v26, v21

    .line 65
    .local v26, "buttonX":I
    sput-object p1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->key:Ljava/lang/String;

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    move-result-object v15

    .line 68
    .local v15, "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    const/4 v14, 0x1

    if-eqz v15, :cond_33b

    .line 69
    iget v0, v15, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    .line 71
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->giftBig:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v27, v0, v1

    .line 73
    .local v27, "maxWidth":I
    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 74
    .local v28, "tempTitlePaddingY":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v28, 0x2

    add-int v29, v0, v1

    .line 75
    .local v29, "tempTitleH":I
    div-int/lit8 v0, v9, 0x2

    sub-int v0, v0, v21

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v27, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v30, v0, v1

    .line 77
    .local v30, "tempTextW":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    div-int/lit8 v2, v9, 0x2

    div-int/lit8 v3, v27, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v25, v28

    invoke-direct {v0, v1, v2, v3, v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    div-int/lit8 v2, v9, 0x2

    div-int/lit8 v3, v27, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v25, v28

    invoke-direct {v0, v1, v2, v3, v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    div-int/lit8 v0, v9, 0x2

    div-int/lit8 v4, v27, 0x2

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    add-int v5, v0, v4

    const/4 v4, -0x1

    move-object v0, v12

    move/from16 v6, v25

    move/from16 v7, v30

    move/from16 v8, v29

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v16, -0x1

    move-object v12, v0

    const/4 v8, 0x1

    move-object v14, v1

    move-object/from16 v31, v15

    .end local v15    # "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    .local v31, "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    move v15, v2

    move/from16 v17, v21

    move/from16 v18, v25

    move/from16 v19, v30

    move/from16 v20, v29

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$1;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->guaranteeIndependenceBig:I

    mul-int/lit8 v0, v21, 0x2

    sub-int v5, v9, v0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v3, v21

    move/from16 v4, v25

    move/from16 v6, v29

    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;IIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v12, v25, v0

    .line 94
    .end local v25    # "buttonY":I
    .local v12, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v0

    add-int v0, v21, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 95
    .local v13, "statsX":I
    div-int/lit8 v0, v9, 0x2

    sub-int/2addr v0, v13

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    sub-int v14, v0, v1

    .line 96
    .local v14, "statsW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v15, v0, 0x3

    .line 98
    .local v15, "statsH":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v16, v0, v1

    .line 100
    .local v16, "maxIconW":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Opinion"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v1

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    mul-int/lit8 v0, v14, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v13

    move v5, v12

    move-object/from16 v32, v7

    move v7, v15

    const/16 v18, 0x1

    move/from16 v8, v16

    move v10, v9

    .end local v9    # "menuWidth":I
    .local v10, "menuWidth":I
    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;IIIIIII)V

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v12

    add-int v5, v0, v15

    move-object v0, v9

    move-object/from16 v1, p0

    move v6, v14

    move/from16 v19, v10

    move-object v10, v8

    .end local v10    # "menuWidth":I
    .local v19, "menuWidth":I
    move/from16 v8, v16

    move/from16 v20, v15

    move-object v15, v9

    .end local v15    # "statsH":I
    .local v20, "statsH":I
    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v13

    add-int v4, v0, v14

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v12

    add-int v5, v0, v20

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v7, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$5;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_GUARANTEE_EXPIRES:I

    add-int/2addr v0, v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v0, v20

    mul-int/lit8 v0, v0, 0x2

    add-int v5, v12, v0

    mul-int/lit8 v0, v14, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v0, v1

    move-object v0, v10

    move-object/from16 v1, p0

    move v4, v13

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyLeft(I)V

    .line 161
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyRight(I)V

    .line 163
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, v26, v2

    invoke-direct {v0, v1, v2, v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$6;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sub-int v9, v19, v21

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v2

    sub-int/2addr v9, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v9, v2

    move-object/from16 v10, p0

    move/from16 v15, v19

    .end local v19    # "menuWidth":I
    .local v15, "menuWidth":I
    invoke-direct {v0, v10, v1, v9, v12}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 182
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v21, v21, v0

    .line 184
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$7;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Refuse"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v21

    move v6, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Accept"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v21, v0

    mul-int/lit8 v1, v21, 0x2

    sub-int v1, v15, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v15, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v25, v12, v0

    .line 224
    .end local v12    # "buttonY":I
    .end local v13    # "statsX":I
    .end local v14    # "statsW":I
    .end local v16    # "maxIconW":I
    .end local v20    # "statsH":I
    .end local v27    # "maxWidth":I
    .end local v28    # "tempTitlePaddingY":I
    .end local v29    # "tempTitleH":I
    .end local v30    # "tempTextW":I
    .restart local v25    # "buttonY":I
    move/from16 v9, v25

    goto :goto_34c

    .line 226
    .end local v31    # "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    .restart local v9    # "menuWidth":I
    .local v15, "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    :cond_33b
    move-object/from16 v31, v15

    const/16 v18, 0x1

    move v15, v9

    .end local v9    # "menuWidth":I
    .local v15, "menuWidth":I
    .restart local v31    # "pMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$9;

    const-string v1, "rebuildInGame_MessagesSavePos"

    invoke-direct {v0, v10, v1}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    move/from16 v9, v25

    .line 234
    .end local v25    # "buttonY":I
    .local v9, "buttonY":I
    :goto_34c
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v22

    sub-int v0, v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 236
    .local v12, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v15, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CivAWantsToGuaranteeOurIndependence"

    invoke-virtual {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/4 v3, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v15, 0x2

    sub-int v2, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int v3, v12, v22

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 243
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v31, :cond_3a2

    goto :goto_3a4

    :cond_3a2
    const/16 v18, 0x0

    .line 238
    :goto_3a4
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v4, v15

    move v5, v12

    move-object v6, v11

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 245
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->lTime:J

    .line 246
    return-void
.end method

.method public static final confirm()V
    .registers 3

    .line 274
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    move-result-object v0

    .line 276
    .local v0, "tMessage":Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    if-eqz v0, :cond_d

    .line 277
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->onAccept()V

    .line 280
    :cond_d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    .line 281
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeMessage(Ljava/lang/String;)V

    .line 282
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
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2b

    .line 252
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 255
    :cond_2b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 256
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->getHeight()I

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

    .line 263
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 264
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 268
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 269
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->lTime:J

    .line 270
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAnimationTime()V

    .line 271
    return-void
.end method
