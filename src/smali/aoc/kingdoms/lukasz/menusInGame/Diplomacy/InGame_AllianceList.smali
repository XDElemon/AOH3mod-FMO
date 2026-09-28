.class public Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_AllianceList.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->lTime:J

    .line 51
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 52

    .line 93
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v16, v1, v3

    .line 97
    .local v16, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v17

    .line 99
    .local v17, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    .line 101
    .local v3, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int v18, v1, v4

    .line 103
    .local v18, "menuY":I
    const/4 v1, 0x0

    .line 104
    .local v1, "buttonY":I
    move/from16 v4, v16

    .line 106
    .local v4, "buttonX":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->NUM_OF_RIVALS_TO_CHOOSE_FROM:I

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->buildList(II)Ljava/util/List;

    move-result-object v15

    .line 107
    .local v15, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .line 109
    .local v14, "allianceCivsSize":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    const v19, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v19

    float-to-int v13, v5

    .line 110
    .local v13, "r0W":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    const v20, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, v20

    float-to-int v12, v5

    .line 112
    .local v12, "r1W":I
    sget v21, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 114
    .end local v4    # "buttonX":I
    .local v21, "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$1;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x6

    if-eq v4, v7, :cond_81

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v4, v10, :cond_7f

    goto :goto_81

    :cond_7f
    const/4 v6, 0x0

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v6, 0x1

    :goto_82
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v4, v7, :cond_89

    const/16 v22, 0x1

    goto :goto_8b

    :cond_89
    const/16 v22, 0x0

    :goto_8b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Ranking"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int v24, v4, v5

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v26, -0x1

    move-object v4, v11

    move-object/from16 v5, p0

    const/4 v2, 0x6

    move/from16 v7, v22

    const/4 v2, 0x1

    move-object/from16 v8, v23

    move/from16 v9, v26

    move/from16 v10, v21

    move-object v2, v11

    move v11, v1

    move/from16 v26, v12

    .end local v12    # "r1W":I
    .local v26, "r1W":I
    move/from16 v28, v13

    .end local v13    # "r0W":I
    .local v28, "r0W":I
    move/from16 v13, v24

    move/from16 v29, v14

    .end local v14    # "allianceCivsSize":I
    .local v29, "allianceCivsSize":I
    move/from16 v14, v25

    invoke-direct/range {v4 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int v21, v21, v2

    .line 145
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$2;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-eqz v5, :cond_dd

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v5, v4, :cond_db

    goto :goto_dd

    :cond_db
    const/4 v6, 0x0

    goto :goto_de

    :cond_dd
    :goto_dd
    const/4 v6, 0x1

    :goto_de
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v5, v4, :cond_e4

    const/4 v7, 0x1

    goto :goto_e5

    :cond_e4
    const/4 v7, 0x0

    :goto_e5
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Name"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v5, v5, 0x6

    add-int v13, v4, v5

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v9, -0x1

    move-object v4, v2

    move-object/from16 v5, p0

    move/from16 v10, v21

    move v11, v1

    move/from16 v12, v28

    invoke-direct/range {v4 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int v21, v21, v2

    .line 176
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$3;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v14, 0x3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_128

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v4, v14, :cond_126

    goto :goto_128

    :cond_126
    const/4 v6, 0x0

    goto :goto_129

    :cond_128
    :goto_128
    const/4 v6, 0x1

    :goto_129
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v4, v14, :cond_12f

    const/4 v7, 0x1

    goto :goto_130

    :cond_12f
    const/4 v7, 0x0

    :goto_130
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Opinion"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v5, v5, 0x6

    add-int v13, v4, v5

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v9, -0x1

    move-object v4, v2

    move-object/from16 v5, p0

    move/from16 v10, v21

    move v11, v1

    move/from16 v12, v26

    move-object/from16 v25, v15

    const/4 v15, 0x3

    .end local v15    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v25, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v14, v24

    invoke-direct/range {v4 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int v21, v21, v2

    .line 207
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$4;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v14, 0x4

    const/4 v13, 0x5

    if-eq v4, v14, :cond_178

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v4, v13, :cond_176

    goto :goto_178

    :cond_176
    const/4 v6, 0x0

    goto :goto_179

    :cond_178
    :goto_178
    const/4 v6, 0x1

    :goto_179
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-ne v4, v13, :cond_17f

    const/4 v7, 0x1

    goto :goto_180

    :cond_17f
    const/4 v7, 0x0

    :goto_180
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "RegimentsLimit"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v5, v5, 0x6

    add-int v24, v4, v5

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v9, -0x1

    move-object v4, v2

    move-object/from16 v5, p0

    move/from16 v10, v21

    move v11, v1

    move/from16 v12, v26

    move/from16 v13, v24

    move/from16 v14, v30

    invoke-direct/range {v4 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 239
    move/from16 v2, v16

    .line 241
    .end local v21    # "buttonX":I
    .local v2, "buttonX":I
    mul-int/lit8 v4, v16, 0x2

    sub-int v4, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v19

    float-to-int v14, v4

    .line 242
    .end local v28    # "r0W":I
    .local v14, "r0W":I
    mul-int/lit8 v4, v16, 0x2

    sub-int v4, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v20

    float-to-int v13, v4

    .line 244
    .end local v26    # "r1W":I
    .local v13, "r1W":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_1df

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    goto :goto_1e1

    :cond_1df
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_1e1
    move/from16 v40, v4

    .line 246
    .local v40, "buttonH":I
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v12, ""

    if-eqz v4, :cond_348

    .line 247
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "None"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v16, 0x2

    sub-int v10, v3, v4

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v4, v11

    move/from16 v8, v16

    move v9, v1

    move-object v15, v11

    move/from16 v11, v19

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
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

    add-int/2addr v1, v4

    .line 250
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getMaxNumberOfAlliances(I)I

    move-result v5

    const-string v6, ": "

    if-lt v4, v5, :cond_2ec

    .line 251
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$5;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "MaxNumOfAlliances"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 252
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getMaxNumberOfAlliances(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    mul-int/lit8 v4, v16, 0x2

    sub-int v11, v3, v4

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    .line 254
    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v21

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v4, v15

    move-object/from16 v5, p0

    move/from16 v9, v16

    move v10, v1

    move/from16 v28, v2

    move-object v2, v12

    .end local v2    # "buttonX":I
    .local v28, "buttonX":I
    move/from16 v12, v19

    move/from16 v19, v13

    .end local v13    # "r1W":I
    .local v19, "r1W":I
    move/from16 v13, v21

    move/from16 v21, v14

    .end local v14    # "r0W":I
    .local v21, "r0W":I
    move/from16 v14, v24

    move-object/from16 v20, v2

    move-object v2, v15

    move-object/from16 v24, v25

    .end local v25    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v24, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v15, v26

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    move v15, v1

    goto/16 :goto_353

    .line 263
    .end local v19    # "r1W":I
    .end local v21    # "r0W":I
    .end local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "buttonX":I
    .restart local v2    # "buttonX":I
    .restart local v13    # "r1W":I
    .restart local v14    # "r0W":I
    .restart local v25    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2ec
    move/from16 v28, v2

    move-object/from16 v20, v12

    move/from16 v19, v13

    move/from16 v21, v14

    move-object/from16 v24, v25

    .end local v2    # "buttonX":I
    .end local v13    # "r1W":I
    .end local v14    # "r0W":I
    .end local v25    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "r1W":I
    .restart local v21    # "r0W":I
    .restart local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "buttonX":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Tip"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ImproveRelations"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v16, 0x2

    sub-int v11, v3, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v8, -0x1

    move-object v4, v2

    move-object/from16 v5, p0

    move/from16 v9, v16

    move v10, v1

    invoke-direct/range {v4 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    move v15, v1

    goto :goto_353

    .line 246
    .end local v19    # "r1W":I
    .end local v21    # "r0W":I
    .end local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "buttonX":I
    .restart local v2    # "buttonX":I
    .restart local v13    # "r1W":I
    .restart local v14    # "r0W":I
    .restart local v25    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_348
    move/from16 v28, v2

    move-object/from16 v20, v12

    move/from16 v19, v13

    move/from16 v21, v14

    move-object/from16 v24, v25

    .end local v2    # "buttonX":I
    .end local v13    # "r1W":I
    .end local v14    # "r0W":I
    .end local v25    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "r1W":I
    .restart local v21    # "r0W":I
    .restart local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "buttonX":I
    move v15, v1

    .line 273
    .end local v1    # "buttonY":I
    .local v15, "buttonY":I
    :goto_353
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_71c

    .line 274
    const/4 v1, 0x0

    .line 276
    .local v1, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_398

    .line 277
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_360
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_390

    .line 278
    move-object/from16 v14, v24

    .end local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-le v5, v6, :cond_38b

    .line 279
    move v1, v2

    .line 277
    :cond_38b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v14

    goto :goto_360

    .end local v14    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_390
    move-object/from16 v14, v24

    .end local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x7

    .end local v2    # "o":I
    goto/16 :goto_544

    .line 283
    .end local v14    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_398
    move-object/from16 v14, v24

    .end local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v13, 0x7

    if-ne v2, v13, :cond_3d1

    .line 284
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3a0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3cc

    .line 285
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ge v5, v6, :cond_3c9

    .line 286
    move v1, v2

    .line 284
    :cond_3c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a0

    :cond_3cc
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    .end local v2    # "o":I
    goto/16 :goto_544

    .line 290
    :cond_3d1
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    if-nez v2, :cond_40f

    .line 291
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3d6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_40a

    .line 292
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_407

    .line 293
    move v1, v2

    .line 291
    :cond_407
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d6

    :cond_40a
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    .end local v2    # "o":I
    goto/16 :goto_544

    .line 297
    :cond_40f
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_44e

    .line 298
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_415
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_449

    .line 299
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_446

    .line 300
    move v1, v2

    .line 298
    :cond_446
    add-int/lit8 v2, v2, 0x1

    goto :goto_415

    :cond_449
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    .end local v2    # "o":I
    goto/16 :goto_544

    .line 304
    :cond_44e
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_497

    .line 305
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_454
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_492

    .line 306
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v5

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_48f

    .line 307
    move v1, v2

    .line 305
    :cond_48f
    add-int/lit8 v2, v2, 0x1

    goto :goto_454

    :cond_492
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    .end local v2    # "o":I
    goto/16 :goto_544

    .line 311
    :cond_497
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v12, 0x3

    if-ne v2, v12, :cond_4de

    .line 312
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_49d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4db

    .line 313
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v5

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4d8

    .line 314
    move v1, v2

    .line 312
    :cond_4d8
    add-int/lit8 v2, v2, 0x1

    goto :goto_49d

    :cond_4db
    const/4 v10, 0x5

    const/4 v11, 0x4

    .end local v2    # "o":I
    goto :goto_544

    .line 318
    :cond_4de
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v11, 0x4

    if-ne v2, v11, :cond_512

    .line 319
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_4e4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_510

    .line 320
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-ge v5, v6, :cond_50d

    .line 321
    move v1, v2

    .line 319
    :cond_50d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e4

    :cond_510
    const/4 v10, 0x5

    .end local v2    # "o":I
    goto :goto_544

    .line 325
    :cond_512
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->iSortID:I

    const/4 v10, 0x5

    if-ne v2, v10, :cond_544

    .line 326
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_518
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_544

    .line 327
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v5, v6, :cond_541

    .line 328
    move v1, v2

    .line 326
    :cond_541
    add-int/lit8 v2, v2, 0x1

    goto :goto_518

    .line 333
    .end local v2    # "o":I
    :cond_544
    :goto_544
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$7;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v20

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v36

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v41

    move-object/from16 v33, v2

    move-object/from16 v34, p0

    move/from16 v37, v28

    move/from16 v38, v15

    move/from16 v39, v19

    invoke-direct/range {v33 .. v41}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int v28, v28, v2

    .line 414
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x2

    mul-int/lit8 v20, v5, 0x2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v5, v2

    move-object/from16 v6, p0

    move-object v4, v9

    move/from16 v9, v20

    const/16 v20, 0x5

    move/from16 v10, v28

    const/16 v25, 0x4

    move v11, v15

    const/16 v26, 0x3

    move/from16 v12, v21

    const/16 v27, 0x7

    move/from16 v13, v40

    move/from16 v30, v3

    move-object v3, v14

    .end local v14    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v30, "menuWidth":I
    move/from16 v14, v22

    invoke-direct/range {v5 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int v28, v28, v2

    .line 431
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$9;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/16 v45, -0x1

    move-object/from16 v41, v2

    move-object/from16 v42, p0

    move/from16 v46, v28

    move/from16 v47, v15

    move/from16 v48, v19

    move/from16 v49, v40

    invoke-direct/range {v41 .. v50}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int v28, v28, v2

    .line 440
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v2, v2, v5

    .line 441
    .local v2, "tDiff":F
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$10;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_6c3

    const-string v12, "+"

    goto :goto_6c4

    :cond_6c3
    move-object v12, v4

    :goto_6c4
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v2, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/16 v45, -0x1

    move-object/from16 v41, v5

    move-object/from16 v42, p0

    move/from16 v46, v28

    move/from16 v47, v15

    move/from16 v48, v19

    move/from16 v49, v40

    invoke-direct/range {v41 .. v50}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    move/from16 v28, v16

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v15, v5

    .line 451
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 452
    .end local v1    # "toAddID":I
    .end local v2    # "tDiff":F
    move-object/from16 v24, v3

    move-object/from16 v20, v4

    move/from16 v3, v30

    goto/16 :goto_353

    .line 455
    .end local v30    # "menuWidth":I
    .local v3, "menuWidth":I
    .restart local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_71c
    move/from16 v30, v3

    move-object/from16 v3, v24

    .end local v24    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v30    # "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sub-int v1, v1, v18

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 457
    .local v10, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v15, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v4, v30

    const/4 v5, 0x0

    .end local v30    # "menuWidth":I
    .local v4, "menuWidth":I
    invoke-direct {v1, v5, v5, v4, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$11;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "OfferAlliance"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, v29

    .end local v29    # "allianceCivsSize":I
    .local v11, "allianceCivsSize":I
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x0

    sget v35, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v33, 0x1

    move-object/from16 v30, v2

    move-object/from16 v31, p0

    invoke-direct/range {v30 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v5, 0x2

    div-int/2addr v1, v5

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object v13, v3

    move v12, v4

    .end local v3    # "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "menuWidth":I
    .local v12, "menuWidth":I
    .local v13, "allianceCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v3, v5

    move/from16 v4, v18

    move v5, v12

    move v6, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 465
    return-void
.end method

.method public static final buildList(II)Ljava/util/List;
    .registers 10
    .param p0, "civID"    # I
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "civs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "distance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 60
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_65

    if-eq v2, p0, :cond_65

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveAlliance(I)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-eq v3, p0, :cond_65

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-eq v3, v2, :cond_65

    .line 61
    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getAlliance_Score(II)I

    move-result v3

    .line 63
    .local v3, "tScore":I
    if-lez v3, :cond_65

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3    # "tScore":I
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 70
    .end local v2    # "i":I
    :cond_68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_6f

    .line 71
    return-object v0

    .line 74
    :cond_6f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p1, :cond_ae

    .line 77
    const/4 v3, 0x0

    .line 79
    .local v3, "bestID":I
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_80
    if-ge v4, v5, :cond_9e

    .line 80
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9b

    .line 81
    move v3, v4

    .line 79
    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 85
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_9e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    .end local v3    # "bestID":I
    goto :goto_74

    .line 90
    :cond_ae
    return-object v2
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 469
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_28

    .line 470
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 473
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 474
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 475
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outlinerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->outlinerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->outlinerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 477
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 478
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 482
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 483
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;->lTime:J

    .line 484
    return-void
.end method
