.class public Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Peace.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static brushModeDemand:Z

.field public static lTime:J


# instance fields
.field public activeMapModeID:I

.field public enforceDemandsConfirm:Z

.field public iAggressiveExpansion:F

.field public iAggressiveExpansion2:F

.field public iCivID:I

.field public iNumOfProvinces_Pop:I

.field public iNumOfProvinces_Prov:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->lTime:J

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->brushModeDemand:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 59

    .line 79
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 67
    const/4 v14, 0x1

    iput v14, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    .line 68
    const/4 v13, 0x0

    iput v13, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    .line 70
    iput v13, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iNumOfProvinces_Prov:I

    .line 71
    iput v13, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iNumOfProvinces_Pop:I

    .line 72
    const/4 v0, 0x0

    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iAggressiveExpansion:F

    .line 73
    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iAggressiveExpansion2:F

    .line 77
    iput-boolean v13, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->enforceDemandsConfirm:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 82
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v29, v0, v1

    .line 83
    .local v29, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v30

    .line 85
    .local v30, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 87
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v31

    .line 88
    .local v31, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v32, v0, v1

    .line 90
    .local v32, "menuY":I
    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 91
    .local v33, "buttonYPadding":I
    move/from16 v16, v33

    .line 92
    .local v16, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_65

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_67

    :cond_65
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    :goto_67
    move/from16 v34, v0

    .line 94
    .local v34, "buttonH":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->updateMaxIconH()V

    .line 96
    iput v13, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    .line 97
    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->brushModeDemand:Z

    .line 99
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->warPeaceBig:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v35, v0, v1

    .line 101
    .local v35, "maxWidth":I
    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 102
    .local v36, "tempTitlePaddingY":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v36, 0x2

    add-int v37, v0, v1

    .line 103
    .local v37, "tempTitleH":I
    div-int/lit8 v0, v11, 0x2

    sub-int v0, v0, v29

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v35, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v38, v0, v1

    .line 105
    .local v38, "tempTextW":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    if-eqz v0, :cond_e22

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e22

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 107
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    goto :goto_109

    .line 110
    :cond_ef
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    .line 114
    :goto_109
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    div-int/lit8 v0, v11, 0x2

    div-int/lit8 v1, v35, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v3, v0, v1

    add-int v4, v16, v36

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;IIIZ)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$2;

    iget v2, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    div-int/lit8 v0, v11, 0x2

    div-int/lit8 v1, v35, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    add-int v4, v16, v36

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;IIIZ)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    iget v0, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    div-int/lit8 v0, v11, 0x2

    div-int/lit8 v4, v35, 0x2

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

    move-object v0, v9

    move/from16 v6, v16

    move/from16 v7, v38

    move/from16 v8, v37

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v6, -0x1

    move-object v2, v0

    move/from16 v7, v29

    move/from16 v8, v16

    move/from16 v9, v38

    move/from16 v10, v37

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$3;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->warPeaceBig:I

    mul-int/lit8 v0, v29, 0x2

    sub-int v5, v11, v0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v3, v29

    move/from16 v4, v16

    move/from16 v6, v37

    move/from16 v7, v35

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;IIIIII)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 131
    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 133
    .local v39, "statH":I
    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x4

    .line 134
    .local v10, "buttonW2":I
    int-to-float v0, v10

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, v1

    float-to-int v9, v0

    .line 135
    .local v9, "buttonH2":I
    move/from16 v17, v29

    .line 137
    .local v17, "buttonX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 138
    const-string v2, "Provinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v18, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    .line 141
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v19

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v17

    move-object v14, v6

    move/from16 v6, v16

    move-object v13, v7

    move/from16 v7, v18

    move/from16 v18, v10

    move-object v10, v8

    .end local v10    # "buttonW2":I
    .local v18, "buttonW2":I
    move/from16 v8, v39

    move/from16 v40, v9

    .end local v9    # "buttonH2":I
    .local v40, "buttonH2":I
    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 137
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 204
    const-string v2, "Population"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    .line 205
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getPopulation()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v17, v0

    mul-int/lit8 v1, v29, 0x2

    sub-int v1, v11, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    .line 207
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 203
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 225
    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v41, v0, 0x4

    .line 226
    .local v41, "aeWidth":I
    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v42, v0, 0x4

    .line 229
    .local v42, "aeWidth2":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 230
    const-string v2, "AggressiveExpansion"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    .line 231
    const/16 v9, 0x64

    invoke-static {v1, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->aggressiveExpansion:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    .line 233
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v19

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v5, v17

    move/from16 v6, v16

    move/from16 v7, v41

    const/16 v15, 0x64

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 229
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 280
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v2, v2, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    add-float/2addr v1, v2

    const/16 v9, 0xa

    invoke-static {v1, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->aggressiveExpansion:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v17, v0

    add-int v5, v0, v41

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    .line 282
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v19

    const-string v2, ""

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v7, v42

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 278
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 325
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "EnforceDemands"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v29, 0x2

    sub-int v7, v11, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v9, 0x1

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->warDemands:I

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v5, v29

    move/from16 v6, v16

    move-object v15, v10

    move/from16 v43, v18

    .end local v18    # "buttonW2":I
    .local v43, "buttonW2":I
    move/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIZI)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 387
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "MapMode"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v1, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v11, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int v8, v1, v6

    move-object v1, v0

    move/from16 v6, v16

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 391
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v44, v0, v1

    .line 392
    .local v44, "statsH":I
    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v45, v0, 0x6

    .line 393
    .local v45, "typeW":I
    move/from16 v8, v29

    .line 395
    .local v8, "typeX":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$9;

    const-string v2, ""

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    move/from16 v5, v16

    move/from16 v6, v45

    move/from16 v7, v44

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 422
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;

    const-string v2, ""

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 456
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;

    const-string v2, ""

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 490
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$12;

    const-string v2, ""

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 524
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$13;

    const-string v2, ""

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v46, v8, v0

    .line 558
    .end local v8    # "typeX":I
    .local v46, "typeX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$14;

    const-string v2, ""

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v46

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 595
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Demands"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v1, 0x4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v11, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int v8, v1, v6

    move-object v1, v0

    move/from16 v6, v16

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 598
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$15;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Score"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v29, 0x2

    sub-int v5, v11, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v3, v29

    move/from16 v4, v16

    move/from16 v6, v39

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIII)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 622
    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v15, v0

    .line 623
    .local v15, "c0W":I
    mul-int/lit8 v0, v29, 0x2

    sub-int v0, v11, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v10, v0

    .line 624
    .local v10, "c1W":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_5bc

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_5be

    :cond_5bc
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_5be
    move v8, v0

    .line 627
    .local v8, "cH":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 628
    const-string v2, "Gold"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-lez v1, :cond_5ea

    const-string v6, "+"

    goto :goto_5eb

    :cond_5ea
    move-object v6, v14

    :goto_5eb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getGold_PerDemand()F

    move-result v1

    const/16 v13, 0x64

    invoke-static {v1, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    .line 631
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v17

    move/from16 v6, v16

    move v7, v15

    move-object v13, v9

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 627
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 647
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$17;

    const-string v2, "-"

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v16

    move v5, v10

    move v6, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 655
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$18;

    const-string v2, "+"

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    move/from16 v4, v29

    .line 691
    .end local v17    # "buttonX":I
    .local v4, "buttonX":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v18, v16, v0

    .line 693
    .end local v16    # "buttonY":I
    .local v18, "buttonY":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 695
    .local v13, "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$19;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Brush"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->brush:I

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v18

    move/from16 v6, v43

    move/from16 v7, v40

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v0

    .line 767
    .local v0, "value":F
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$20;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "WarReparations"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v7, v0, v6

    if-gez v7, :cond_6cb

    const/16 v7, 0x64

    goto :goto_6d3

    :cond_6cb
    cmpg-float v7, v0, v5

    if-gez v7, :cond_6d2

    const/16 v7, 0xa

    goto :goto_6d3

    :cond_6d2
    const/4 v7, 0x1

    :goto_6d3
    invoke-static {v0, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    move-object v9, v1

    move/from16 v47, v10

    .end local v10    # "c1W":I
    .local v47, "c1W":I
    move-object/from16 v10, p0

    move/from16 v48, v11

    .end local v11    # "menuWidth":I
    .local v48, "menuWidth":I
    move-object v11, v2

    move-object v2, v12

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v12, v3

    move-object v3, v13

    const/16 v16, 0x64

    .end local v13    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v3, "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v13, v4

    move-object/from16 v50, v14

    const/16 v49, 0x1

    move/from16 v14, v18

    move/from16 v51, v15

    const/16 v19, 0x64

    .end local v15    # "c0W":I
    .local v51, "c0W":I
    move/from16 v15, v43

    move/from16 v16, v40

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v0

    .line 831
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$21;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getDemandVassalization()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    cmpg-float v7, v0, v6

    if-gez v7, :cond_718

    const/16 v14, 0x64

    goto :goto_720

    :cond_718
    cmpg-float v7, v0, v5

    if-gez v7, :cond_71f

    const/16 v14, 0xa

    goto :goto_720

    :cond_71f
    const/4 v14, 0x1

    :goto_720
    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v17

    move-object v9, v1

    move-object/from16 v10, p0

    move v13, v4

    move/from16 v14, v18

    move/from16 v15, v43

    move/from16 v16, v40

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v0

    .line 882
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$22;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GovernmentChange"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->government:I

    cmpg-float v7, v0, v6

    if-gez v7, :cond_74f

    const/16 v14, 0x64

    goto :goto_757

    :cond_74f
    cmpg-float v7, v0, v5

    if-gez v7, :cond_756

    const/16 v14, 0xa

    goto :goto_757

    :cond_756
    const/4 v14, 0x1

    :goto_757
    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v17

    move-object v9, v1

    move-object/from16 v10, p0

    move v13, v4

    move/from16 v14, v18

    move/from16 v15, v43

    move/from16 v16, v40

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v0

    .line 937
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$23;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "DemandReligionConversion"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    cmpg-float v7, v0, v6

    if-gez v7, :cond_786

    const/16 v14, 0x64

    goto :goto_78e

    :cond_786
    cmpg-float v7, v0, v5

    if-gez v7, :cond_78d

    const/16 v14, 0xa

    goto :goto_78e

    :cond_78d
    const/4 v14, 0x1

    :goto_78e
    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v17

    move-object v9, v1

    move-object/from16 v10, p0

    move v13, v4

    move/from16 v14, v18

    move/from16 v15, v43

    move/from16 v16, v40

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v0

    .line 992
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$24;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Humiliate"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insult:I

    cmpg-float v7, v0, v6

    if-gez v7, :cond_7bd

    const/16 v14, 0x64

    goto :goto_7c5

    :cond_7bd
    cmpg-float v7, v0, v5

    if-gez v7, :cond_7c4

    const/16 v14, 0xa

    goto :goto_7c5

    :cond_7c4
    const/4 v14, 0x1

    :goto_7c5
    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v17

    move-object v9, v1

    move-object/from16 v10, p0

    move v13, v4

    move/from16 v14, v18

    move/from16 v15, v43

    move/from16 v16, v40

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v0

    .line 1057
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$25;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "DemandMilitaryAccess"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->militaryAccess:I

    cmpg-float v6, v0, v6

    if-gez v6, :cond_7f4

    const/16 v14, 0x64

    goto :goto_7fc

    :cond_7f4
    cmpg-float v5, v0, v5

    if-gez v5, :cond_7fb

    const/16 v14, 0xa

    goto :goto_7fc

    :cond_7fb
    const/4 v14, 0x1

    :goto_7fc
    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v17

    move-object v9, v1

    move-object/from16 v10, p0

    move v13, v4

    move/from16 v14, v18

    move/from16 v15, v43

    move/from16 v16, v40

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    move/from16 v4, v18

    .end local v18    # "buttonY":I
    .local v4, "buttonY":I
    .local v5, "iSize":I
    .local v6, "buttonX":I
    :goto_818
    if-ge v1, v5, :cond_860

    .line 1110
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 1111
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 1112
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    .line 1114
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    add-int/lit8 v7, v1, 0x1

    rem-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_84d

    add-int/lit8 v7, v5, -0x1

    if-ne v1, v7, :cond_85d

    .line 1117
    :cond_84d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    .line 1118
    move/from16 v6, v29

    .line 1109
    :cond_85d
    add-int/lit8 v1, v1, 0x1

    goto :goto_818

    .line 1122
    .end local v1    # "i":I
    .end local v5    # "iSize":I
    :cond_860
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1124
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "DemandProvinces"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v12, v5, 0x4

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    move/from16 v15, v48

    .end local v48    # "menuWidth":I
    .local v15, "menuWidth":I
    sub-int v5, v15, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v16, v9, v14

    move-object v9, v1

    move v14, v4

    move/from16 v48, v0

    move v0, v15

    .end local v15    # "menuWidth":I
    .local v0, "menuWidth":I
    .local v48, "value":F
    move v15, v5

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    .line 1127
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$26;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Suggest"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v5, v29, 0x2

    sub-int v5, v0, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v9

    div-int/lit8 v15, v5, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int v17, v5, v9

    const/16 v18, 0x1

    move-object v9, v1

    move-object/from16 v10, p0

    move/from16 v13, v29

    move v14, v4

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$26;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$27;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Reset"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v29, v5

    mul-int/lit8 v9, v29, 0x2

    sub-int v9, v0, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v13, v5, v9

    mul-int/lit8 v5, v29, 0x2

    sub-int v5, v0, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v9

    div-int/lit8 v15, v5, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int v17, v5, v9

    move-object v9, v1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$27;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    .line 1217
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v11, v0, v1

    int-to-float v1, v11

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v1, v1, v5

    float-to-int v1, v1

    .line 1218
    .local v1, "r0W":I
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v11, v0, v9

    int-to-float v9, v11

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float v9, v9, v10

    float-to-int v15, v9

    .line 1220
    .local v15, "r1W":I
    mul-int/lit8 v9, v29, 0x2

    sub-int v11, v0, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v9

    int-to-float v9, v11

    mul-float v9, v9, v5

    float-to-int v5, v9

    .line 1221
    .local v5, "r0W2":I
    mul-int/lit8 v9, v29, 0x2

    sub-int v11, v0, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v9

    int-to-float v9, v11

    mul-float v9, v9, v10

    float-to-int v14, v9

    .line 1223
    .local v14, "r1W2":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v9

    if-eqz v9, :cond_960

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_962

    :cond_960
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_962
    move/from16 v17, v9

    .line 1225
    .local v17, "buttonHProvinces":I
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "DemandSubjectTransfer"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v12, v9, 0x4

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v18, v0, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v19, 0x6

    add-int v19, v9, v19

    move-object v9, v13

    move/from16 v52, v1

    move-object v1, v13

    .end local v1    # "r0W":I
    .local v52, "r0W":I
    move/from16 v13, v16

    move/from16 v53, v14

    .end local v14    # "r1W2":I
    .local v53, "r1W2":I
    move v14, v4

    move/from16 v54, v15

    .end local v15    # "r1W":I
    .local v54, "r1W":I
    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v9

    add-int/2addr v4, v1

    .line 1228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v1, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9b3
    move-object/from16 v15, p0

    iget v10, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v9, v10, :cond_9f9

    .line 1231
    iget v10, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-lez v10, :cond_9f6

    .line 1232
    iget v10, v15, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_9f6
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b3

    .line 1236
    .end local v9    # "i":I
    :cond_9f9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const-string v14, "None"

    if-lez v9, :cond_b1c

    .line 1237
    :goto_a01
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b10

    .line 1238
    const/4 v9, 0x0

    .line 1240
    .local v9, "toAddID":I
    const/4 v10, 0x1

    .local v10, "o":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    move v13, v9

    .end local v9    # "toAddID":I
    .local v11, "oSize":I
    .local v13, "toAddID":I
    :goto_a0e
    if-ge v10, v11, :cond_a3f

    .line 1241
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3c

    .line 1242
    move v9, v10

    move v13, v9

    .line 1240
    :cond_a3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_a0e

    .line 1246
    .end local v10    # "o":I
    .end local v11    # "oSize":I
    :cond_a3f
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$28;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v9, 0x2

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object v9, v12

    move-object/from16 v10, p0

    move-object/from16 v55, v3

    move-object v3, v12

    .end local v3    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v55, "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v12, v16

    move/from16 v56, v8

    move v8, v13

    .end local v13    # "toAddID":I
    .local v8, "toAddID":I
    .local v56, "cH":I
    move/from16 v13, v18

    move-object/from16 v57, v7

    move-object v7, v14

    move v14, v6

    move v15, v4

    move/from16 v16, v5

    move/from16 v18, v19

    move/from16 v19, v20

    invoke-direct/range {v9 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$28;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v6, v3

    .line 1303
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$29;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v50

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v26

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v18, v3

    move-object/from16 v19, p0

    move/from16 v22, v6

    move/from16 v23, v4

    move/from16 v24, v54

    move/from16 v25, v17

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$29;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    move/from16 v6, v29

    .line 1311
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v4, v3

    .line 1314
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1315
    .end local v8    # "toAddID":I
    move-object/from16 v15, p0

    move-object v14, v7

    move-object/from16 v3, v55

    move/from16 v8, v56

    move-object/from16 v7, v57

    goto/16 :goto_a01

    .line 1237
    .end local v55    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v56    # "cH":I
    .restart local v3    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v8, "cH":I
    :cond_b10
    move-object/from16 v55, v3

    move-object/from16 v57, v7

    move/from16 v56, v8

    move-object v7, v14

    move-object/from16 v10, v50

    const/16 v12, 0xa

    .end local v3    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v8    # "cH":I
    .restart local v55    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v56    # "cH":I
    goto :goto_b59

    .line 1318
    .end local v55    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v56    # "cH":I
    .restart local v3    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v8    # "cH":I
    :cond_b1c
    move-object/from16 v55, v3

    move-object/from16 v57, v7

    move/from16 v56, v8

    move-object v7, v14

    move-object/from16 v10, v50

    const/16 v12, 0xa

    .end local v3    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v8    # "cH":I
    .restart local v55    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v56    # "cH":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v8, v29, 0x2

    sub-int v24, v0, v8

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v21, -0x1

    move-object/from16 v18, v3

    move/from16 v22, v29

    move/from16 v23, v4

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    add-int/2addr v4, v3

    .line 1322
    :goto_b59
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "LiberateCivilization"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v21, v8, 0x4

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v24, v0, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v25, v8, v9

    move-object/from16 v18, v3

    move/from16 v23, v4

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    add-int/2addr v4, v3

    .line 1326
    move-object/from16 v11, p0

    iget v3, v11, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getCivsPossibleToLiberate(I)Ljava/util/List;

    move-result-object v1

    .line 1328
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c99

    .line 1329
    :goto_ba5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ccb

    .line 1330
    const/4 v3, 0x0

    .line 1332
    .local v3, "toAddID":I
    const/4 v7, 0x1

    .local v7, "o":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "oSize":I
    :goto_bb1
    if-ge v7, v8, :cond_be1

    .line 1333
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bde

    .line 1334
    move v3, v7

    .line 1332
    :cond_bde
    add-int/lit8 v7, v7, 0x1

    goto :goto_bb1

    .line 1338
    .end local v7    # "o":I
    .end local v8    # "oSize":I
    :cond_be1
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$30;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v8, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, p0

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v17

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$30;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 1403
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$31;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v13, v11, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result v9

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v26

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v18, v7

    move/from16 v22, v6

    move/from16 v23, v4

    move/from16 v24, v54

    move/from16 v25, v17

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$31;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    move/from16 v6, v29

    .line 1411
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 1413
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1414
    .end local v3    # "toAddID":I
    goto/16 :goto_ba5

    .line 1417
    :cond_c99
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v7, v29, 0x2

    sub-int v24, v0, v7

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v21, -0x1

    move-object/from16 v18, v3

    move/from16 v22, v29

    move/from16 v23, v4

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v4, v3

    .line 1421
    :cond_ccb
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v8, v57

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v21, v7, 0x4

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v24, v0, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v25, v7, v8

    move-object/from16 v18, v3

    move/from16 v23, v4

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v4, v3

    .line 1424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v3, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d0f
    iget v8, v11, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v7, v8, :cond_d2f

    .line 1427
    iget v8, v11, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    add-int/lit8 v7, v7, 0x1

    goto :goto_d0f

    .line 1431
    .end local v7    # "i":I
    :cond_d2f
    :goto_d2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e1f

    .line 1432
    const/4 v7, 0x0

    .line 1434
    .local v7, "toAddID":I
    const/4 v8, 0x1

    .local v8, "o":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "oSize":I
    :goto_d3b
    if-ge v8, v9, :cond_d6b

    .line 1435
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d68

    .line 1436
    move v7, v8

    .line 1434
    :cond_d68
    add-int/lit8 v8, v8, 0x1

    goto :goto_d3b

    .line 1441
    .end local v8    # "o":I
    .end local v9    # "oSize":I
    :cond_d6b
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$32;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v9, 0x2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, p0

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v17

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$32;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1487
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$33;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-static {v13, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v26

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v18, v8

    move/from16 v22, v6

    move/from16 v23, v4

    move/from16 v24, v54

    move/from16 v25, v17

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$33;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    move/from16 v6, v29

    .line 1495
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1497
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1498
    .end local v7    # "toAddID":I
    goto/16 :goto_d2f

    .line 1499
    .end local v1    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "r0W2":I
    .end local v6    # "buttonX":I
    .end local v17    # "buttonHProvinces":I
    .end local v39    # "statH":I
    .end local v40    # "buttonH2":I
    .end local v41    # "aeWidth":I
    .end local v42    # "aeWidth2":I
    .end local v43    # "buttonW2":I
    .end local v44    # "statsH":I
    .end local v45    # "typeW":I
    .end local v46    # "typeX":I
    .end local v47    # "c1W":I
    .end local v48    # "value":F
    .end local v51    # "c0W":I
    .end local v52    # "r0W":I
    .end local v53    # "r1W2":I
    .end local v54    # "r1W":I
    .end local v55    # "tempElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v56    # "cH":I
    :cond_e1f
    move-object v10, v2

    move v9, v4

    goto :goto_e5c

    .line 105
    .end local v0    # "menuWidth":I
    .end local v2    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v4    # "buttonY":I
    .local v11, "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "buttonY":I
    :cond_e22
    move v0, v11

    move-object v2, v12

    move-object v11, v15

    const/16 v49, 0x1

    .line 1501
    .end local v11    # "menuWidth":I
    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v0    # "menuWidth":I
    .restart local v2    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Error"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v5, v29, 0x2

    sub-int v8, v0, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v5, -0x1

    move-object v10, v2

    .end local v2    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object v2, v1

    move/from16 v6, v29

    move/from16 v7, v16

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v4, v16, v1

    move v9, v4

    .line 1505
    .end local v16    # "buttonY":I
    .local v9, "buttonY":I
    :goto_e5c
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v32

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1507
    .local v12, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$34;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "PeaceTreaty"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "MakeDemands"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/4 v4, 0x0

    move v13, v0

    .end local v0    # "menuWidth":I
    .local v13, "menuWidth":I
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$34;-><init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v31

    move/from16 v3, v32

    move v4, v13

    move v5, v12

    move-object v6, v10

    move v7, v8

    move v8, v14

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 1515
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 1546
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 1548
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 1550
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-ne v0, v1, :cond_19

    .line 1551
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1553
    :cond_19
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 1519
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 1520
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 1523
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1524
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 1525
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->getHeight()I

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

    .line 1527
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 1528
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1532
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 1533
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->lTime:J

    .line 1535
    if-nez p1, :cond_c

    .line 1536
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 1539
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-ne v0, v1, :cond_1f

    .line 1540
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1542
    :cond_1f
    return-void
.end method
