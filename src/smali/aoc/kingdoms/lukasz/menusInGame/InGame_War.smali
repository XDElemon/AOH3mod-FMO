.class public Laoc/kingdoms/lukasz/menusInGame/InGame_War;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_War.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static key:Ljava/lang/String;

.field public static lTime:J

.field public static sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;


# instance fields
.field public imageOverID:I

.field public surrenderConfirm:Z

.field public whitePeaceConfirm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->lTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 55

    .line 75
    move-object/from16 v15, p0

    const-string v12, "InterveneInWar"

    const-string v11, "%"

    const-string v13, "Coalition"

    const-string v14, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 70
    const/4 v10, 0x0

    iput v10, v15, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->imageOverID:I

    .line 72
    iput-boolean v10, v15, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->whitePeaceConfirm:Z

    .line 73
    iput-boolean v10, v15, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->surrenderConfirm:Z

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 78
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v1, v2

    .line 79
    .local v23, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title580:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v24

    .line 81
    .local v24, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title580:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v8, v1, v2

    .line 82
    .local v8, "menuWidth":I
    const/16 v7, 0x32

    .line 83
    .local v7, "menuMinHeight":I
    const/16 v25, 0x32

    .line 85
    .local v25, "menuHeight":I
    const/16 v26, 0x0

    .line 86
    .local v26, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v27, v1, v25

    .line 88
    .local v27, "menuY":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 89
    .local v16, "buttonY":I
    move/from16 v6, v23

    .line 91
    .local v6, "buttonX":I
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "tTitle":Ljava/lang/String;
    :try_start_4c
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab8

    .line 95
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    move v5, v2

    .line 96
    .local v5, "iCivLeft":I
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    move v4, v2

    .line 98
    .local v4, "iCivRight":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->warBig:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v28, v2, v3

    .line 100
    .local v28, "maxWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move/from16 v29, v2

    .line 101
    .local v29, "tempTitlePaddingY":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v3, v29, 0x2

    add-int v30, v2, v3

    .line 103
    .local v30, "tempTitleH":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v2

    add-int v2, v23, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v2, v3

    .line 104
    .local v31, "statsX":I
    div-int/lit8 v2, v8, 0x2

    sub-int v2, v2, v31

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    sub-int v32, v2, v3

    .line 105
    .local v32, "statsW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonHeight()I

    move-result v2

    sub-int v2, v2, v30

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_c3} :catch_ac2

    move/from16 v33, v2

    .line 108
    .local v33, "statsH":I
    :try_start_c5
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    if-eqz v2, :cond_da

    .line 109
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d9} :catch_dd

    move-object v1, v2

    .line 113
    :cond_da
    move-object/from16 v17, v1

    goto :goto_e0

    .line 111
    :catch_dd
    move-exception v0

    move-object/from16 v17, v1

    .line 115
    .end local v1    # "tTitle":Ljava/lang/String;
    .local v17, "tTitle":Ljava/lang/String;
    :goto_e0
    :try_start_e0
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    div-int/lit8 v2, v8, 0x2

    div-int/lit8 v3, v28, 0x2

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

    add-int v3, v16, v29

    move-object/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v1, v5, v2, v3, v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    div-int/lit8 v2, v8, 0x2

    div-int/lit8 v3, v28, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v16, v29

    invoke-direct {v1, v4, v2, v3, v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War$1;

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->warBig:I

    mul-int/lit8 v1, v32, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_11e} :catch_aab

    add-int v20, v1, v2

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v10, v3

    move/from16 v3, v19

    move/from16 v34, v4

    .end local v4    # "iCivRight":I
    .local v34, "iCivRight":I
    move/from16 v4, v31

    move/from16 v35, v5

    .end local v5    # "iCivLeft":I
    .local v35, "iCivLeft":I
    move/from16 v5, v16

    move/from16 v36, v6

    .end local v6    # "buttonX":I
    .local v36, "buttonX":I
    move/from16 v6, v20

    move/from16 v37, v7

    .end local v7    # "menuMinHeight":I
    .local v37, "menuMinHeight":I
    move/from16 v7, v30

    move/from16 v38, v8

    .end local v8    # "menuWidth":I
    .local v38, "menuWidth":I
    move/from16 v8, v28

    :try_start_13a
    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;IIIIII)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 127
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v39, v1, v2

    .line 129
    .local v39, "maxIconW":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_War$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "WarScore"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v1, v32, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v1, v2

    sget-object v19, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_189} :catch_aa0

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v4, v31

    move/from16 v5, v16

    move/from16 v7, v33

    move/from16 v8, v35

    move-object v12, v9

    .end local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v9, v34

    move-object/from16 v22, v13

    move-object v13, v10

    move-object/from16 v10, v19

    :try_start_19c
    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIILjava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_War$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/war/War;->getCasualties_Aggressors()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v16, v1

    add-int v6, v1, v33

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v5, v31

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v9, v39

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_War$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->weariness:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v1, v16, v1

    mul-int/lit8 v2, v33, 0x2

    add-int v6, v1, v2

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v5, v31

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v9, v39

    const/16 v15, 0xa

    move/from16 v10, v35

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_War$5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/war/War;->getCasualties_Defenders()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v31, v1

    add-int v5, v1, v32

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v16, v1

    add-int v6, v1, v33

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v9, v39

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_War$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    invoke-static {v2, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->weariness:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v31, v1

    add-int v5, v1, v32

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v1, v16, v1

    mul-int/lit8 v2, v33, 0x2

    add-int v6, v1, v2

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v9, v39

    move/from16 v10, v34

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_2b2
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_2b2} :catch_a95

    .line 253
    .end local v16    # "buttonY":I
    .local v1, "buttonY":I
    :try_start_2b2
    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyLeft(I)V

    .line 254
    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyRight(I)V

    .line 256
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2ba} :catch_a88

    move/from16 v13, v35

    move/from16 v15, v36

    .end local v35    # "iCivLeft":I
    .end local v36    # "buttonX":I
    .local v13, "iCivLeft":I
    .local v15, "buttonX":I
    :try_start_2be
    invoke-direct {v2, v13, v15, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_War$7;
    :try_end_2c6
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c6} :catch_a7b

    move/from16 v11, v38

    .end local v38    # "menuWidth":I
    .local v11, "menuWidth":I
    sub-int v8, v11, v23

    :try_start_2ca
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v3

    sub-int/2addr v8, v3

    move-object/from16 v10, p0

    move/from16 v9, v34

    .end local v34    # "iCivRight":I
    .local v9, "iCivRight":I
    invoke-direct {v2, v10, v9, v8, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;III)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_2eb
    .catch Ljava/lang/Exception; {:try_start_2ca .. :try_end_2eb} :catch_a6d

    add-int/2addr v2, v3

    add-int v16, v1, v2

    .line 268
    .end local v1    # "buttonY":I
    .restart local v16    # "buttonY":I
    :try_start_2ee
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_307} :catch_42b

    if-eq v1, v2, :cond_338

    :try_start_309
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_321
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_321} :catch_32d

    if-ne v1, v2, :cond_324

    goto :goto_338

    :cond_324
    move/from16 v36, v9

    move/from16 v35, v13

    move/from16 v19, v15

    move v15, v11

    goto/16 :goto_41e

    .line 426
    :catch_32d
    move-exception v0

    move-object v1, v0

    move/from16 v36, v9

    move/from16 v35, v13

    move/from16 v19, v15

    move v15, v11

    goto/16 :goto_434

    .line 269
    :cond_338
    :goto_338
    :try_start_338
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_War$8;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Surrender"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v11, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v19, v1, 0x3

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v34, Laoc/kingdoms/lukasz/textures/Images;->warSurrender:I
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_353} :catch_42b

    const/4 v5, -0x1

    const/16 v35, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v6, v23

    move-object/from16 v41, v7

    move/from16 v7, v16

    move/from16 v8, v19

    move/from16 v36, v9

    .end local v9    # "iCivRight":I
    .local v36, "iCivRight":I
    move/from16 v9, v21

    move/from16 v10, v35

    move/from16 v19, v15

    move v15, v11

    .end local v11    # "menuWidth":I
    .local v15, "menuWidth":I
    .local v19, "buttonX":I
    move/from16 v11, v34

    :try_start_36c
    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIIZI)V

    move-object/from16 v1, v41

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_War$9;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "WhitePeace"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v23, v1

    mul-int/lit8 v2, v23, 0x2

    sub-int v8, v15, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x3

    add-int v6, v1, v8

    mul-int/lit8 v1, v23, 0x2

    sub-int v8, v15, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->warPeace:I
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_3a0} :catch_426

    const/4 v5, -0x1

    const/4 v10, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v7, v16

    move/from16 v35, v13

    move-object v13, v11

    .end local v13    # "iCivLeft":I
    .restart local v35    # "iCivLeft":I
    move/from16 v11, v21

    :try_start_3ac
    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIIZI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_War$10;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "MakeDemands"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v1, v23, v1

    mul-int/lit8 v2, v23, 0x2

    sub-int v8, v15, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v8, v8, 0x2

    add-int v6, v1, v8

    mul-int/lit8 v1, v23, 0x2

    sub-int v8, v15, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->warDemands:I

    const/4 v5, -0x1

    const/4 v10, 0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v7, v16

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIIZI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_401
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_401} :catch_423

    add-int/2addr v1, v2

    add-int v16, v16, v1

    .line 419
    :try_start_404
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    if-eqz v1, :cond_41c

    .line 420
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_404 .. :try_end_41a} :catch_41d

    move-object/from16 v17, v1

    .line 424
    :cond_41c
    goto :goto_41e

    .line 422
    :catch_41d
    move-exception v0

    .line 428
    :goto_41e
    move/from16 v21, v16

    move-object/from16 v34, v17

    goto :goto_43b

    .line 426
    :catch_423
    move-exception v0

    move-object v1, v0

    goto :goto_434

    .end local v35    # "iCivLeft":I
    .restart local v13    # "iCivLeft":I
    :catch_426
    move-exception v0

    move/from16 v35, v13

    move-object v1, v0

    .end local v13    # "iCivLeft":I
    .restart local v35    # "iCivLeft":I
    goto :goto_434

    .end local v19    # "buttonX":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .restart local v9    # "iCivRight":I
    .restart local v11    # "menuWidth":I
    .restart local v13    # "iCivLeft":I
    .local v15, "buttonX":I
    :catch_42b
    move-exception v0

    move/from16 v36, v9

    move/from16 v35, v13

    move/from16 v19, v15

    move v15, v11

    move-object v1, v0

    .line 427
    .end local v9    # "iCivRight":I
    .end local v11    # "menuWidth":I
    .end local v13    # "iCivLeft":I
    .local v1, "ex":Ljava/lang/Exception;
    .local v15, "menuWidth":I
    .restart local v19    # "buttonX":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    :goto_434
    :try_start_434
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_437
    .catch Ljava/lang/Exception; {:try_start_434 .. :try_end_437} :catch_a61

    move/from16 v21, v16

    move-object/from16 v34, v17

    .line 430
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v16    # "buttonY":I
    .end local v17    # "tTitle":Ljava/lang/String;
    .local v21, "buttonY":I
    .local v34, "tTitle":Ljava/lang/String;
    :goto_43b
    :try_start_43b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v1, "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v2, "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_45e
    .catch Ljava/lang/Exception; {:try_start_43b .. :try_end_45e} :catch_a53

    if-ne v3, v4, :cond_4d9

    .line 434
    :try_start_460
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesAttacker(II)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 436
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_483
    if-ltz v3, :cond_4c3

    .line 437
    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "j":I
    :goto_497
    if-ltz v4, :cond_4c0

    .line 438
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_4bd

    .line 439
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4bc
    .catch Ljava/lang/Exception; {:try_start_460 .. :try_end_4bc} :catch_4cb

    .line 440
    goto :goto_4c0

    .line 437
    :cond_4bd
    add-int/lit8 v4, v4, -0x1

    goto :goto_497

    .line 436
    .end local v4    # "j":I
    :cond_4c0
    :goto_4c0
    add-int/lit8 v3, v3, -0x1

    goto :goto_483

    :cond_4c3
    move-object/from16 v38, v1

    move-object/from16 v40, v2

    const/16 v16, 0x1

    .end local v3    # "i":I
    goto/16 :goto_565

    .line 681
    .end local v1    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v39    # "maxIconW":I
    :catch_4cb
    move-exception v0

    move-object v2, v0

    move-object v7, v12

    move/from16 v53, v15

    move/from16 v42, v19

    move/from16 v16, v21

    move-object/from16 v1, v34

    const/4 v6, 0x0

    goto/16 :goto_acc

    .line 445
    .restart local v1    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v39    # "maxIconW":I
    :cond_4d9
    :try_start_4d9
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_4f1
    .catch Ljava/lang/Exception; {:try_start_4d9 .. :try_end_4f1} :catch_a53

    if-ne v3, v4, :cond_55f

    .line 446
    :try_start_4f3
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesDefender(II)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 450
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_516
    if-ltz v3, :cond_558

    .line 451
    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "j":I
    :goto_52c
    if-ltz v4, :cond_555

    .line 452
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_552

    .line 453
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_551
    .catch Ljava/lang/Exception; {:try_start_4f3 .. :try_end_551} :catch_4cb

    .line 454
    goto :goto_555

    .line 451
    :cond_552
    add-int/lit8 v4, v4, -0x1

    goto :goto_52c

    .line 450
    .end local v4    # "j":I
    :cond_555
    :goto_555
    add-int/lit8 v3, v3, -0x1

    goto :goto_516

    :cond_558
    const/16 v16, 0x1

    move-object/from16 v38, v1

    move-object/from16 v40, v2

    goto :goto_565

    .line 445
    .end local v3    # "i":I
    :cond_55f
    const/16 v16, 0x1

    move-object/from16 v38, v1

    move-object/from16 v40, v2

    .line 460
    .end local v1    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v38, "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v40, "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_565
    :try_start_565
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/war/War;->isInThisWar(I)Z

    move-result v1
    :try_end_577
    .catch Ljava/lang/Exception; {:try_start_565 .. :try_end_577} :catch_a53

    if-nez v1, :cond_63c

    .line 461
    mul-int/lit8 v1, v23, 0x2

    sub-int v8, v15, v1

    :try_start_57d
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    move/from16 v22, v8

    .line 462
    .local v22, "alliesWidth":I
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 464
    .local v9, "buttonH":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->intervene:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v41, v1, v2

    .line 466
    .local v41, "maxIconW_Intervene":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_War$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v18

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v8, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->intervene:I

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v5, v41

    move/from16 v6, v23

    move/from16 v7, v21

    move/from16 v18, v8

    move/from16 v8, v22

    move-object v13, v10

    move/from16 v10, v18

    move-object/from16 v18, v14

    move-object v14, v11

    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_War$12;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v23, v3

    add-int v3, v3, v22

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->intervene:I
    :try_end_5fa
    .catch Ljava/lang/Exception; {:try_start_57d .. :try_end_5fa} :catch_62c

    move-object v10, v1

    move-object/from16 v11, p0

    move-object v8, v12

    const/4 v7, 0x1

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object v12, v2

    const/4 v6, 0x0

    move-object/from16 v5, v18

    move/from16 v14, v41

    move v2, v15

    move/from16 v42, v19

    .end local v15    # "menuWidth":I
    .end local v19    # "buttonX":I
    .local v2, "menuWidth":I
    .local v42, "buttonX":I
    move v15, v3

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v18, v9

    move/from16 v19, v4

    :try_start_611
    invoke-direct/range {v10 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_628
    .catch Ljava/lang/Exception; {:try_start_611 .. :try_end_628} :catch_679

    add-int/2addr v1, v3

    add-int v21, v21, v1

    goto :goto_643

    .line 681
    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v9    # "buttonH":I
    .end local v22    # "alliesWidth":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v41    # "maxIconW_Intervene":I
    .end local v42    # "buttonX":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "menuWidth":I
    .restart local v19    # "buttonX":I
    :catch_62c
    move-exception v0

    move-object v8, v12

    move v2, v15

    move/from16 v42, v19

    const/4 v6, 0x0

    move/from16 v53, v2

    move-object v7, v8

    move/from16 v16, v21

    move-object/from16 v1, v34

    move-object v2, v0

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "menuWidth":I
    .end local v19    # "buttonX":I
    .restart local v2    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    goto/16 :goto_acc

    .line 460
    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v42    # "buttonX":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "menuWidth":I
    .restart local v19    # "buttonX":I
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_63c
    move-object v8, v12

    move-object v5, v14

    move v2, v15

    move/from16 v42, v19

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 534
    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "menuWidth":I
    .end local v19    # "buttonX":I
    .restart local v2    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    :goto_643
    :try_start_643
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_647
    .catch Ljava/lang/Exception; {:try_start_643 .. :try_end_647} :catch_a48

    if-eqz v1, :cond_684

    :try_start_649
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_684

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v7, :cond_684

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_671
    .catch Ljava/lang/Exception; {:try_start_649 .. :try_end_671} :catch_679

    if-le v1, v7, :cond_674

    goto :goto_684

    :cond_674
    move/from16 v53, v2

    move-object v7, v8

    goto/16 :goto_9c4

    .line 681
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_679
    move-exception v0

    move/from16 v53, v2

    move-object v7, v8

    move/from16 v16, v21

    move-object/from16 v1, v34

    move-object v2, v0

    goto/16 :goto_acc

    .line 535
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_684
    :goto_684
    :try_start_684
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Allies"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/lit8 v3, v2, -0x3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v16, v3, v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int v17, v3, v4

    const/4 v12, -0x1

    move-object v10, v1

    move/from16 v15, v21

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_6bd
    .catch Ljava/lang/Exception; {:try_start_684 .. :try_end_6bd} :catch_a48

    add-int/2addr v1, v3

    add-int v16, v21, v1

    .line 538
    .end local v21    # "buttonY":I
    .restart local v16    # "buttonY":I
    :try_start_6c0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v15, v1

    .line 539
    .local v15, "tMenuElementsBefore":I
    move/from16 v41, v16

    .line 541
    .local v41, "buttonYStart":I
    mul-int/lit8 v1, v23, 0x2

    sub-int v1, v2, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    move/from16 v51, v1

    .line 542
    .local v51, "alliesWidth":I
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 544
    .restart local v9    # "buttonH":I
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_6ec
    .catch Ljava/lang/Exception; {:try_start_6c0 .. :try_end_6ec} :catch_a3f

    const-string v14, "CallAllies"

    if-ne v1, v3, :cond_759

    .line 545
    :try_start_6f0
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_743

    .line 546
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_War$13;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v1, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_708
    .catch Ljava/lang/Exception; {:try_start_6f0 .. :try_end_708} :catch_74d

    move-object v1, v11

    move v13, v2

    .end local v2    # "menuWidth":I
    .local v13, "menuWidth":I
    move-object/from16 v2, p0

    move/from16 v17, v15

    move-object v15, v5

    .end local v15    # "tMenuElementsBefore":I
    .local v17, "tMenuElementsBefore":I
    move v5, v10

    const/4 v10, 0x0

    move/from16 v6, v23

    const/16 v52, 0x1

    move/from16 v7, v16

    move-object/from16 v18, v14

    move-object v14, v8

    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v8, v51

    move v10, v12

    :try_start_71d
    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_735
    .catch Ljava/lang/Exception; {:try_start_71d .. :try_end_735} :catch_739

    add-int/2addr v1, v2

    add-int v16, v16, v1

    goto :goto_762

    .line 681
    .end local v9    # "buttonH":I
    .end local v17    # "tMenuElementsBefore":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v41    # "buttonYStart":I
    .end local v51    # "alliesWidth":I
    :catch_739
    move-exception v0

    move-object v2, v0

    move/from16 v53, v13

    move-object v7, v14

    move-object/from16 v1, v34

    const/4 v6, 0x0

    goto/16 :goto_acc

    .line 545
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v2    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v9    # "buttonH":I
    .restart local v15    # "tMenuElementsBefore":I
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "buttonYStart":I
    .restart local v51    # "alliesWidth":I
    :cond_743
    move v13, v2

    move-object/from16 v18, v14

    move/from16 v17, v15

    const/16 v52, 0x1

    move-object v15, v5

    move-object v14, v8

    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tMenuElementsBefore":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "tMenuElementsBefore":I
    goto :goto_762

    .line 681
    .end local v9    # "buttonH":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "tMenuElementsBefore":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v41    # "buttonYStart":I
    .end local v51    # "alliesWidth":I
    .restart local v2    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_74d
    move-exception v0

    move v13, v2

    move-object v14, v8

    move-object v2, v0

    move/from16 v53, v13

    move-object v7, v14

    move-object/from16 v1, v34

    const/4 v6, 0x0

    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto/16 :goto_acc

    .line 544
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v2    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v9    # "buttonH":I
    .restart local v15    # "tMenuElementsBefore":I
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "buttonYStart":I
    .restart local v51    # "alliesWidth":I
    :cond_759
    move v13, v2

    move-object/from16 v18, v14

    move/from16 v17, v15

    const/16 v52, 0x1

    move-object v15, v5

    move-object v14, v8

    .line 574
    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tMenuElementsBefore":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "tMenuElementsBefore":I
    :goto_762
    const/4 v1, 0x1

    move/from16 v2, v16

    .end local v16    # "buttonY":I
    .local v1, "i":I
    .local v2, "buttonY":I
    :goto_765
    :try_start_765
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_775
    .catch Ljava/lang/Exception; {:try_start_765 .. :try_end_775} :catch_a33

    if-ge v1, v3, :cond_830

    .line 575
    :try_start_777
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_811

    .line 576
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War$14;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I
    :try_end_7de
    .catch Ljava/lang/Exception; {:try_start_777 .. :try_end_7de} :catch_825

    move-object v10, v3

    move-object/from16 v11, p0

    move v8, v13

    .end local v13    # "menuWidth":I
    .local v8, "menuWidth":I
    move v13, v4

    move-object v7, v14

    move-object/from16 v4, v18

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v7, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v14, v5

    move/from16 v53, v8

    move-object v8, v15

    move/from16 v5, v17

    .end local v8    # "menuWidth":I
    .end local v17    # "tMenuElementsBefore":I
    .local v5, "tMenuElementsBefore":I
    .local v53, "menuWidth":I
    move/from16 v15, v23

    move/from16 v16, v2

    move/from16 v17, v51

    move/from16 v18, v9

    move/from16 v19, v6

    :try_start_7f6
    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_80e
    .catch Ljava/lang/Exception; {:try_start_7f6 .. :try_end_80e} :catch_870

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    goto :goto_819

    .line 575
    .end local v5    # "tMenuElementsBefore":I
    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v53    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "tMenuElementsBefore":I
    :cond_811
    move/from16 v53, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v5, v17

    move-object/from16 v4, v18

    .line 574
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "tMenuElementsBefore":I
    .restart local v5    # "tMenuElementsBefore":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v53    # "menuWidth":I
    :goto_819
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v4

    move/from16 v17, v5

    move-object v14, v7

    move-object v15, v8

    move/from16 v13, v53

    goto/16 :goto_765

    .line 681
    .end local v1    # "i":I
    .end local v5    # "tMenuElementsBefore":I
    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v9    # "buttonH":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v41    # "buttonYStart":I
    .end local v51    # "alliesWidth":I
    .end local v53    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_825
    move-exception v0

    move/from16 v53, v13

    move-object v7, v14

    move/from16 v16, v2

    move-object/from16 v1, v34

    const/4 v6, 0x0

    goto/16 :goto_a3c

    .line 574
    .restart local v1    # "i":I
    .restart local v9    # "buttonH":I
    .restart local v17    # "tMenuElementsBefore":I
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "buttonYStart":I
    .restart local v51    # "alliesWidth":I
    :cond_830
    move/from16 v53, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v5, v17

    move-object/from16 v4, v18

    .line 601
    .end local v1    # "i":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "tMenuElementsBefore":I
    .restart local v5    # "tMenuElementsBefore":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v53    # "menuWidth":I
    :try_start_838
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1
    :try_end_83c
    .catch Ljava/lang/Exception; {:try_start_838 .. :try_end_83c} :catch_a2a

    const-string v3, "None"

    if-ne v5, v1, :cond_879

    .line 602
    :try_start_840
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v18, -0x1

    move-object v15, v1

    move/from16 v19, v23

    move/from16 v20, v2

    move/from16 v21, v51

    move/from16 v22, v9

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_86d
    .catch Ljava/lang/Exception; {:try_start_840 .. :try_end_86d} :catch_870

    add-int/2addr v1, v6

    add-int/2addr v2, v1

    goto :goto_879

    .line 681
    .end local v5    # "tMenuElementsBefore":I
    .end local v9    # "buttonH":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v41    # "buttonYStart":I
    .end local v51    # "alliesWidth":I
    :catch_870
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v1, v34

    const/4 v6, 0x0

    move-object v2, v0

    goto/16 :goto_acc

    .line 606
    .restart local v5    # "tMenuElementsBefore":I
    .restart local v9    # "buttonH":I
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "buttonYStart":I
    .restart local v51    # "alliesWidth":I
    :cond_879
    :goto_879
    move/from16 v1, v41

    .line 607
    .end local v2    # "buttonY":I
    .local v1, "buttonY":I
    :try_start_87b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 609
    .end local v5    # "tMenuElementsBefore":I
    .local v2, "tMenuElementsBefore":I
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;
    :try_end_88b
    .catch Ljava/lang/Exception; {:try_start_87b .. :try_end_88b} :catch_a21

    const/4 v6, 0x0

    :try_start_88c
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v5, v10, :cond_8dd

    .line 610
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8dd

    .line 611
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_War$15;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v4, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v23, v4

    add-int v15, v4, v51

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v10, v5

    move-object/from16 v11, p0

    move/from16 v16, v1

    move/from16 v17, v51

    move/from16 v18, v9

    move/from16 v19, v4

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 639
    :cond_8dd
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_8de
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_986

    .line 640
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-lez v5, :cond_982

    .line 641
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_War$16;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v11, v11, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v10, 0x2

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v10, v23, v10

    add-int v15, v10, v51

    sget-object v10, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v11, v10, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    move-object v10, v5

    move/from16 v19, v11

    move-object/from16 v11, p0

    move/from16 v16, v1

    move/from16 v17, v51

    move/from16 v18, v9

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;IIIIIII)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v10

    add-int/2addr v1, v5

    .line 639
    :cond_982
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8de

    .line 666
    .end local v4    # "i":I
    :cond_986
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_9c2

    .line 667
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    sget v45, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v23, v3

    add-int v47, v3, v51

    const/16 v46, -0x1

    move-object/from16 v43, v4

    move/from16 v48, v1

    move/from16 v49, v51

    move/from16 v50, v9

    invoke-direct/range {v43 .. v50}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_9be
    .catch Ljava/lang/Exception; {:try_start_88c .. :try_end_9be} :catch_a19

    add-int/2addr v3, v4

    add-int v21, v1, v3

    .end local v1    # "buttonY":I
    .restart local v21    # "buttonY":I
    goto :goto_9c4

    .line 666
    .end local v21    # "buttonY":I
    .restart local v1    # "buttonY":I
    :cond_9c2
    move/from16 v21, v1

    .line 672
    .end local v1    # "buttonY":I
    .end local v2    # "tMenuElementsBefore":I
    .end local v9    # "buttonH":I
    .end local v41    # "buttonYStart":I
    .end local v51    # "alliesWidth":I
    .restart local v21    # "buttonY":I
    :goto_9c4
    const/16 v16, 0x0

    .line 673
    .end local v21    # "buttonY":I
    .restart local v16    # "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_9c7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2
    :try_end_9cb
    .catch Ljava/lang/Exception; {:try_start_9c7 .. :try_end_9cb} :catch_a13

    move/from16 v3, v16

    .end local v16    # "buttonY":I
    .local v2, "iSize":I
    .local v3, "buttonY":I
    :goto_9cd
    if-ge v1, v2, :cond_a0d

    .line 674
    :try_start_9cf
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_a02

    .line 675
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_a00
    .catch Ljava/lang/Exception; {:try_start_9cf .. :try_end_a00} :catch_a05

    add-int v3, v4, v5

    .line 673
    :cond_a02
    add-int/lit8 v1, v1, 0x1

    goto :goto_9cd

    .line 681
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_a05
    move-exception v0

    move-object v2, v0

    move/from16 v16, v3

    move-object/from16 v1, v34

    goto/16 :goto_acc

    .line 673
    .restart local v1    # "i":I
    .restart local v2    # "iSize":I
    .restart local v28    # "maxWidth":I
    .restart local v29    # "tempTitlePaddingY":I
    .restart local v30    # "tempTitleH":I
    .restart local v31    # "statsX":I
    .restart local v32    # "statsW":I
    .restart local v33    # "statsH":I
    .restart local v35    # "iCivLeft":I
    .restart local v36    # "iCivRight":I
    .restart local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "maxIconW":I
    .restart local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a0d
    move/from16 v16, v3

    move-object/from16 v1, v34

    goto/16 :goto_ac0

    .line 681
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    .end local v3    # "buttonY":I
    .end local v28    # "maxWidth":I
    .end local v29    # "tempTitlePaddingY":I
    .end local v30    # "tempTitleH":I
    .end local v31    # "statsX":I
    .end local v32    # "statsW":I
    .end local v33    # "statsH":I
    .end local v35    # "iCivLeft":I
    .end local v36    # "iCivRight":I
    .end local v38    # "alliesCall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "maxIconW":I
    .end local v40    # "alliesCall_Right":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "buttonY":I
    :catch_a13
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v34

    goto/16 :goto_acc

    .end local v16    # "buttonY":I
    .local v1, "buttonY":I
    :catch_a19
    move-exception v0

    move-object v2, v0

    move/from16 v16, v1

    move-object/from16 v1, v34

    goto/16 :goto_acc

    :catch_a21
    move-exception v0

    const/4 v6, 0x0

    move-object v2, v0

    move/from16 v16, v1

    move-object/from16 v1, v34

    goto/16 :goto_acc

    .end local v1    # "buttonY":I
    .local v2, "buttonY":I
    :catch_a2a
    move-exception v0

    const/4 v6, 0x0

    move/from16 v16, v2

    move-object/from16 v1, v34

    move-object v2, v0

    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v53    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_a33
    move-exception v0

    move/from16 v53, v13

    move-object v7, v14

    const/4 v6, 0x0

    move/from16 v16, v2

    move-object/from16 v1, v34

    :goto_a3c
    move-object v2, v0

    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v53    # "menuWidth":I
    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v53    # "menuWidth":I
    .local v2, "menuWidth":I
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "buttonY":I
    :catch_a3f
    move-exception v0

    move/from16 v53, v2

    move-object v7, v8

    move-object v2, v0

    move-object/from16 v1, v34

    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v53    # "menuWidth":I
    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v16    # "buttonY":I
    .end local v53    # "menuWidth":I
    .restart local v2    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v21    # "buttonY":I
    :catch_a48
    move-exception v0

    move/from16 v53, v2

    move-object v7, v8

    move-object v2, v0

    move/from16 v16, v21

    move-object/from16 v1, v34

    .end local v2    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v53    # "menuWidth":I
    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v15, "menuWidth":I
    .restart local v19    # "buttonX":I
    :catch_a53
    move-exception v0

    move-object v7, v12

    move/from16 v53, v15

    move/from16 v42, v19

    const/4 v6, 0x0

    move-object v2, v0

    move/from16 v16, v21

    move-object/from16 v1, v34

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "menuWidth":I
    .end local v19    # "buttonX":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v21    # "buttonY":I
    .end local v34    # "tTitle":Ljava/lang/String;
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "menuWidth":I
    .restart local v16    # "buttonY":I
    .local v17, "tTitle":Ljava/lang/String;
    .restart local v19    # "buttonX":I
    :catch_a61
    move-exception v0

    move-object v7, v12

    move/from16 v53, v15

    move/from16 v42, v19

    const/4 v6, 0x0

    move-object v2, v0

    move-object/from16 v1, v17

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "menuWidth":I
    .end local v19    # "buttonX":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v16    # "buttonY":I
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v1    # "buttonY":I
    .restart local v11    # "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v15, "buttonX":I
    :catch_a6d
    move-exception v0

    move/from16 v53, v11

    move-object v7, v12

    move/from16 v42, v15

    const/4 v6, 0x0

    move-object v2, v0

    move/from16 v16, v1

    move-object/from16 v1, v17

    .end local v11    # "menuWidth":I
    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "buttonX":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto/16 :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "buttonX":I
    .local v38, "menuWidth":I
    :catch_a7b
    move-exception v0

    move-object v7, v12

    move/from16 v42, v15

    move/from16 v53, v38

    const/4 v6, 0x0

    move-object v2, v0

    move/from16 v16, v1

    move-object/from16 v1, v17

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "buttonX":I
    .end local v38    # "menuWidth":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v36, "buttonX":I
    .restart local v38    # "menuWidth":I
    :catch_a88
    move-exception v0

    move-object v7, v12

    move/from16 v42, v36

    move/from16 v53, v38

    const/4 v6, 0x0

    move-object v2, v0

    move/from16 v16, v1

    move-object/from16 v1, v17

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v36    # "buttonX":I
    .end local v38    # "menuWidth":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto :goto_acc

    .end local v1    # "buttonY":I
    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "buttonY":I
    .restart local v36    # "buttonX":I
    .restart local v38    # "menuWidth":I
    :catch_a95
    move-exception v0

    move-object v7, v12

    move/from16 v42, v36

    move/from16 v53, v38

    const/4 v6, 0x0

    move-object v2, v0

    move-object/from16 v1, v17

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v36    # "buttonX":I
    .end local v38    # "menuWidth":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto :goto_acc

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v36    # "buttonX":I
    .restart local v38    # "menuWidth":I
    :catch_aa0
    move-exception v0

    move-object v7, v9

    move/from16 v42, v36

    move/from16 v53, v38

    const/4 v6, 0x0

    move-object v2, v0

    move-object/from16 v1, v17

    .end local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v36    # "buttonX":I
    .end local v38    # "menuWidth":I
    .restart local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto :goto_acc

    .end local v37    # "menuMinHeight":I
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v6    # "buttonX":I
    .local v7, "menuMinHeight":I
    .local v8, "menuWidth":I
    .restart local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_aab
    move-exception v0

    move/from16 v42, v6

    move/from16 v37, v7

    move/from16 v53, v8

    move-object v7, v9

    const/4 v6, 0x0

    move-object v2, v0

    move-object/from16 v1, v17

    .end local v6    # "buttonX":I
    .end local v8    # "menuWidth":I
    .end local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v7, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v37    # "menuMinHeight":I
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    goto :goto_acc

    .line 94
    .end local v17    # "tTitle":Ljava/lang/String;
    .end local v37    # "menuMinHeight":I
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .local v1, "tTitle":Ljava/lang/String;
    .restart local v6    # "buttonX":I
    .local v7, "menuMinHeight":I
    .restart local v8    # "menuWidth":I
    .restart local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :cond_ab8
    move/from16 v42, v6

    move/from16 v37, v7

    move/from16 v53, v8

    move-object v7, v9

    const/4 v6, 0x0

    .line 683
    .end local v6    # "buttonX":I
    .end local v8    # "menuWidth":I
    .end local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v7, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v37    # "menuMinHeight":I
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    :goto_ac0
    move-object v11, v1

    goto :goto_ad0

    .line 681
    .end local v37    # "menuMinHeight":I
    .end local v42    # "buttonX":I
    .end local v53    # "menuWidth":I
    .restart local v6    # "buttonX":I
    .local v7, "menuMinHeight":I
    .restart local v8    # "menuWidth":I
    .restart local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_ac2
    move-exception v0

    move/from16 v42, v6

    move/from16 v37, v7

    move/from16 v53, v8

    move-object v7, v9

    const/4 v6, 0x0

    move-object v2, v0

    .line 682
    .end local v6    # "buttonX":I
    .end local v8    # "menuWidth":I
    .end local v9    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v2, "ex":Ljava/lang/Exception;
    .local v7, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v37    # "menuMinHeight":I
    .restart local v42    # "buttonX":I
    .restart local v53    # "menuWidth":I
    :goto_acc
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move-object v11, v1

    .line 685
    .end local v1    # "tTitle":Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/Exception;
    .local v11, "tTitle":Ljava/lang/String;
    :goto_ad0
    const/4 v1, 0x0

    .line 686
    .end local v16    # "buttonY":I
    .local v1, "buttonY":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move v12, v1

    .end local v1    # "buttonY":I
    .local v3, "iSize":I
    .local v12, "buttonY":I
    :goto_ad7
    if-ge v2, v3, :cond_b0f

    .line 687
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    if-ge v12, v1, :cond_b0c

    .line 688
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    move v12, v1

    .line 686
    :cond_b0c
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad7

    .line 692
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_b0f
    move/from16 v13, v37

    .end local v37    # "menuMinHeight":I
    .local v13, "menuMinHeight":I
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 693
    .end local v25    # "menuHeight":I
    .local v1, "menuHeight":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->warViewOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v14, v2, v3

    .line 695
    .end local v27    # "menuY":I
    .local v14, "menuY":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v8, v53

    .end local v53    # "menuWidth":I
    .restart local v8    # "menuWidth":I
    invoke-direct {v2, v6, v6, v8, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 699
    .end local v1    # "menuHeight":I
    .local v15, "menuHeight":I
    const-string v1, ""

    .line 700
    .local v1, "civLeft":Ljava/lang/String;
    const-string v2, ""

    .line 703
    .local v2, "civRight":Ljava/lang/String;
    :try_start_b45
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 704
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3
    :try_end_b7e
    .catch Ljava/lang/Exception; {:try_start_b45 .. :try_end_b7e} :catch_b84

    move-object v2, v3

    .line 707
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_b89

    .line 705
    :catch_b84
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 710
    .end local v1    # "civLeft":Ljava/lang/String;
    .end local v2    # "civRight":Ljava/lang/String;
    .local v16, "civLeft":Ljava/lang/String;
    .local v17, "civRight":Ljava/lang/String;
    :goto_b89
    new-instance v18, Laoc/kingdoms/lukasz/menusInGame/InGame_War$17;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Attackers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Defenders"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->title580:I

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v6, v16

    move-object/from16 v20, v7

    .end local v7    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v20, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object/from16 v7, v17

    move/from16 v21, v8

    .end local v8    # "menuWidth":I
    .local v21, "menuWidth":I
    move/from16 v8, v19

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_War$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v26

    move v4, v14

    move/from16 v5, v21

    move v6, v15

    move-object/from16 v7, v20

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 721
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

    .line 725
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    .line 726
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3a

    .line 727
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 728
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->lTime:J

    sub-long/2addr v4, v6

    long-to-float v2, v4

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p3, v0

    .line 731
    :cond_3a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 732
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v4, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop580:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot580:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 733
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->warViewOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->warViewOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 735
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 736
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 737
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 739
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 740
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 744
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 745
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->lTime:J

    .line 746
    return-void
.end method
