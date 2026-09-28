.class public Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CallAllies.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static callToWar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static iCivID:I

.field public static lTime:J

.field public static warKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

    .line 43
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    .line 45
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 34
    .param p1, "nCivID"    # I

    .line 49
    const-string v0, ""

    const-string v1, "CallAllies"

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    .line 53
    .local v3, "paddingLeft":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v23

    .line 55
    .local v23, "titleHeight":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    .line 57
    .local v4, "menuWidth":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int v24, v5, v6

    .line 59
    .local v24, "menuY":I
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v25, v5, 0x2

    .line 60
    .local v25, "buttonYPadding":I
    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 61
    .local v14, "buttonY":I
    move/from16 v26, v3

    .line 63
    .local v26, "buttonX":I
    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 64
    sput p1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    .line 66
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->warBig:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v27, v5, v6

    .line 68
    .local v27, "maxWidth":I
    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 69
    .local v28, "tempTitlePaddingY":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v28, 0x2

    add-int v29, v5, v6

    .line 70
    .local v29, "tempTitleH":I
    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v5, v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v27, 0x2

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sub-int v30, v5, v6

    .line 73
    .local v30, "tempTextW":I
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    div-int/lit8 v7, v4, 0x2

    div-int/lit8 v8, v27, 0x2

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v14, v28

    const/4 v15, 0x1

    invoke-direct {v5, v6, v7, v8, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    div-int/lit8 v7, v4, 0x2

    div-int/lit8 v8, v27, 0x2

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int v8, v14, v28

    invoke-direct {v5, v6, v7, v8, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v9, v27, 0x2

    add-int/2addr v5, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    add-int v10, v5, v9

    const/4 v9, -0x1

    move-object v5, v13

    move v11, v14

    move/from16 v12, v30

    move-object v15, v13

    move/from16 v13, v29

    invoke-direct/range {v5 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    move-object v5, v15

    move v10, v3

    invoke-direct/range {v5 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$1;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->warBig:I

    mul-int/lit8 v5, v3, 0x2

    sub-int v10, v4, v5

    move-object v5, v13

    move-object/from16 v6, p0

    move v8, v3

    move v9, v14

    move/from16 v11, v29

    move/from16 v12, v27

    invoke-direct/range {v5 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int v31, v14, v5

    .line 89
    .end local v14    # "buttonY":I
    .local v31, "buttonY":I
    :try_start_13d
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 91
    .local v12, "buttonH":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesAttacker(II)Ljava/util/List;

    move-result-object v5

    move-object v15, v5

    .line 93
    .local v15, "allies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_196

    .line 94
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_15a
    if-ltz v5, :cond_196

    .line 95
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v6

    if-nez v6, :cond_190

    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v6

    if-eqz v6, :cond_193

    .line 96
    :cond_190
    invoke-interface {v15, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    :cond_193
    add-int/lit8 v5, v5, -0x1

    goto :goto_15a

    .line 101
    .end local v5    # "i":I
    :cond_196
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_19a} :catch_28c

    if-nez v5, :cond_1d3

    .line 102
    :try_start_19c
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "None"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v5, v3, 0x2

    sub-int v11, v4, v5

    const/4 v8, -0x1

    move-object v5, v0

    move v9, v3

    move/from16 v10, v31

    invoke-direct/range {v5 .. v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1bb} :catch_1cf

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    :try_start_1bd
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v6

    add-int v31, v31, v0

    const/4 v9, 0x1

    goto/16 :goto_289

    .line 173
    .end local v12    # "buttonH":I
    .end local v15    # "allies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1cf
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_28d

    .line 106
    .restart local v12    # "buttonH":I
    .restart local v15    # "allies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1d3
    const/4 v5, 0x1

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v8, 0x2

    mul-int/lit8 v8, v3, 0x2

    sub-int v20, v4, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1fb} :catch_28c

    move-object v13, v6

    move-object/from16 v14, p0

    move-object v5, v15

    const/4 v9, 0x1

    .end local v15    # "allies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "allies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v15, v7

    move/from16 v18, v3

    move/from16 v19, v31

    move/from16 v21, v12

    move/from16 v22, v8

    :try_start_209
    invoke-direct/range {v13 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int v31, v31, v6

    .line 131
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_224
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_289

    .line 132
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$3;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v8, 0x2

    mul-int/lit8 v8, v3, 0x2

    sub-int v20, v4, v8

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v13, v7

    move-object/from16 v14, p0

    move/from16 v18, v3

    move/from16 v19, v31

    move/from16 v21, v12

    invoke-direct/range {v13 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_283} :catch_28a

    add-int/2addr v7, v8

    add-int v31, v31, v7

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_224

    .line 175
    .end local v5    # "allies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .end local v12    # "buttonH":I
    :cond_289
    :goto_289
    goto :goto_291

    .line 173
    :catch_28a
    move-exception v0

    goto :goto_28e

    :catch_28c
    move-exception v0

    :goto_28d
    const/4 v9, 0x1

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    :goto_28e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 177
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_291
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    .line 179
    .end local v3    # "paddingLeft":I
    .local v0, "paddingLeft":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$4;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Cancel"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v17, v5, 0x2

    const/16 v18, 0x1

    const/4 v14, -0x1

    move-object v10, v3

    move-object/from16 v11, p0

    move v15, v0

    move/from16 v16, v31

    invoke-direct/range {v10 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$5;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Confirm"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v0

    mul-int/lit8 v6, v0, 0x2

    sub-int v6, v4, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v15, v5, v6

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v4, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v17, v5, 0x2

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->v:I

    move-object v10, v3

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int v12, v31, v3

    .line 214
    .end local v31    # "buttonY":I
    .local v12, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, v23

    sub-int v3, v3, v24

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 216
    .local v13, "menuHeight":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$6;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v17, 0x1

    move-object v14, v5

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v6

    float-to-int v3, v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int v7, v13, v23

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 223
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 218
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move v14, v4

    .end local v4    # "menuWidth":I
    .local v14, "menuWidth":I
    move-object v4, v5

    move v5, v1

    move v7, v14

    move v8, v13

    move-object v9, v2

    invoke-virtual/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 224
    return-void
.end method

.method public static final confirm()V
    .registers 3

    .line 252
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_85

    .line 253
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 254
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 256
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/war/War;->addDefender(I)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .end local v0    # "i":I
    :cond_4b
    goto :goto_85

    .line 259
    :cond_4c
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 260
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_61
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 261
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/war/War;->addAggressor(I)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 267
    .end local v0    # "i":I
    :cond_85
    :goto_85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    .line 268
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

    .line 228
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    .line 229
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2b

    .line 230
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 233
    :cond_2b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 234
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 235
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getHeight()I

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

    .line 241
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 242
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 246
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 247
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

    .line 248
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAnimationTime()V

    .line 249
    return-void
.end method
