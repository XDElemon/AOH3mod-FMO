.class public Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ListOfBuildings.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static IN_BUILDINGS:Z

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->lTime:J

    .line 29
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->lTime2:J

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->IN_BUILDINGS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 34

    .line 33
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v15, v1, v3

    .line 37
    .local v15, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v16

    .line 39
    .local v16, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    .line 41
    .local v3, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v17

    .line 42
    .local v17, "menuX":I
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

    add-int v18, v1, v4

    .line 44
    .local v18, "menuY":I
    move/from16 v19, v15

    .line 45
    .local v19, "buttonX":I
    const/4 v1, 0x0

    .line 46
    .local v1, "buttonY":I
    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 48
    .local v20, "buttonYPadding":I
    const/4 v14, 0x1

    sput-boolean v14, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->IN_BUILDINGS:Z

    .line 49
    const/4 v13, 0x0

    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    .line 51
    const/4 v4, 0x0

    .line 53
    .local v4, "numOfBuildings":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_52
    const/4 v6, 0x4

    if-ge v5, v6, :cond_136

    .line 54
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    .line 55
    if-nez v5, :cond_63

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Administration"

    :goto_5d
    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto :goto_74

    :cond_63
    if-ne v5, v14, :cond_6a

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Military"

    goto :goto_5d

    :cond_6a
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-ne v5, v2, :cond_71

    const-string v7, "Economy"

    goto :goto_5d

    :cond_71
    const-string v7, "UniqueCapitalBuildings"

    goto :goto_5d

    :goto_74
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v11, v3, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v21, v6, v8

    const/4 v8, -0x1

    move-object v6, v12

    move v10, v1

    move-object v13, v12

    move/from16 v12, v21

    invoke-direct/range {v6 .. v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    .line 54
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v14

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    add-int v6, v6, v20

    add-int/2addr v1, v6

    .line 59
    const/4 v6, 0x0

    move v13, v6

    .local v13, "i":I
    :goto_a4
    sget v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v13, v6, :cond_129

    .line 60
    const/4 v6, 0x0

    move/from16 v21, v4

    move v12, v6

    .end local v4    # "numOfBuildings":I
    .local v12, "j":I
    .local v21, "numOfBuildings":I
    :goto_ac
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v12, v4, :cond_119

    .line 61
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v4, v5, :cond_108

    .line 62
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    mul-int/lit8 v4, v15, 0x2

    sub-int v10, v3, v4

    const-string v23, ""

    const/16 v24, 0x0

    const/4 v6, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object v4, v11

    move/from16 v27, v5

    .end local v5    # "x":I
    .local v27, "x":I
    move v5, v6

    move v6, v13

    move v7, v12

    move v8, v15

    move v9, v1

    move-object v2, v11

    move/from16 v11, v25

    move/from16 v25, v12

    .end local v12    # "j":I
    .local v25, "j":I
    move/from16 v12, v26

    move/from16 v22, v13

    .end local v13    # "i":I
    .local v22, "i":I
    move-object/from16 v13, v23

    const/16 v23, 0x1

    move/from16 v14, v24

    invoke-direct/range {v4 .. v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;-><init>(ZIIIIIZZLjava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v20

    add-int/2addr v1, v2

    .line 64
    add-int/lit8 v21, v21, 0x1

    goto :goto_110

    .line 61
    .end local v22    # "i":I
    .end local v25    # "j":I
    .end local v27    # "x":I
    .restart local v5    # "x":I
    .restart local v12    # "j":I
    .restart local v13    # "i":I
    :cond_108
    move/from16 v27, v5

    move/from16 v25, v12

    move/from16 v22, v13

    const/16 v23, 0x1

    .line 60
    .end local v5    # "x":I
    .end local v12    # "j":I
    .end local v13    # "i":I
    .restart local v22    # "i":I
    .restart local v25    # "j":I
    .restart local v27    # "x":I
    :goto_110
    add-int/lit8 v12, v25, 0x1

    move/from16 v13, v22

    move/from16 v5, v27

    const/4 v2, 0x2

    const/4 v14, 0x1

    .end local v25    # "j":I
    .restart local v12    # "j":I
    goto :goto_ac

    .end local v22    # "i":I
    .end local v27    # "x":I
    .restart local v5    # "x":I
    .restart local v13    # "i":I
    :cond_119
    move/from16 v27, v5

    move/from16 v25, v12

    move/from16 v22, v13

    const/16 v23, 0x1

    .line 59
    .end local v5    # "x":I
    .end local v12    # "j":I
    .end local v13    # "i":I
    .restart local v22    # "i":I
    .restart local v27    # "x":I
    add-int/lit8 v13, v22, 0x1

    move/from16 v4, v21

    const/4 v2, 0x2

    const/4 v14, 0x1

    .end local v22    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_a4

    .end local v21    # "numOfBuildings":I
    .end local v27    # "x":I
    .restart local v4    # "numOfBuildings":I
    .restart local v5    # "x":I
    :cond_129
    move/from16 v27, v5

    move/from16 v22, v13

    const/16 v23, 0x1

    .line 53
    .end local v5    # "x":I
    .end local v13    # "i":I
    .restart local v27    # "x":I
    add-int/lit8 v5, v27, 0x1

    const/4 v2, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    .end local v27    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_52

    :cond_136
    move/from16 v27, v5

    const/16 v23, 0x1

    .line 70
    .end local v5    # "x":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Resources"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v11, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int v12, v5, v6

    const/4 v8, -0x1

    move-object v6, v2

    move v10, v1

    invoke-direct/range {v6 .. v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v20

    add-int/2addr v1, v2

    .line 74
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    move v10, v1

    move v11, v4

    .end local v1    # "buttonY":I
    .end local v4    # "numOfBuildings":I
    .local v2, "i":I
    .local v10, "buttonY":I
    .local v11, "numOfBuildings":I
    :goto_175
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v2, v1, :cond_1e9

    .line 75
    const/4 v1, 0x0

    move/from16 v21, v10

    move/from16 v22, v11

    .end local v10    # "buttonY":I
    .end local v11    # "numOfBuildings":I
    .local v1, "j":I
    .local v21, "buttonY":I
    .local v22, "numOfBuildings":I
    :goto_17e
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v1, v4, :cond_1e0

    .line 76
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v4, :cond_1d9

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v4, :cond_1d9

    .line 77
    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;

    mul-int/lit8 v4, v15, 0x2

    sub-int v10, v3, v4

    const-string v13, ""

    const/16 v24, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v4, v14

    move v6, v2

    move v7, v1

    move v8, v15

    move/from16 v9, v21

    move/from16 v25, v15

    move-object v15, v14

    .end local v15    # "paddingLeft":I
    .local v25, "paddingLeft":I
    move/from16 v14, v24

    invoke-direct/range {v4 .. v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;-><init>(ZIIIIIZZLjava/lang/String;Z)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v20

    add-int v21, v21, v4

    .line 79
    add-int/lit8 v22, v22, 0x1

    goto :goto_1db

    .line 76
    .end local v25    # "paddingLeft":I
    .restart local v15    # "paddingLeft":I
    :cond_1d9
    move/from16 v25, v15

    .line 75
    .end local v15    # "paddingLeft":I
    .restart local v25    # "paddingLeft":I
    :goto_1db
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v25

    goto :goto_17e

    .end local v25    # "paddingLeft":I
    .restart local v15    # "paddingLeft":I
    :cond_1e0
    move/from16 v25, v15

    .line 74
    .end local v1    # "j":I
    .end local v15    # "paddingLeft":I
    .restart local v25    # "paddingLeft":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v21

    move/from16 v11, v22

    goto :goto_175

    .line 84
    .end local v2    # "i":I
    .end local v21    # "buttonY":I
    .end local v22    # "numOfBuildings":I
    .end local v25    # "paddingLeft":I
    .restart local v10    # "buttonY":I
    .restart local v11    # "numOfBuildings":I
    .restart local v15    # "paddingLeft":I
    :cond_1e9
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v18

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 86
    .local v12, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ListOfBuildings"

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v30, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move v13, v3

    .end local v3    # "menuWidth":I
    .local v13, "menuWidth":I
    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v13

    move v6, v12

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 94
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 118
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 119
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 120
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 98
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 99
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 102
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 103
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 104
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->getHeight()I

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

    .line 106
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 107
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 111
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 112
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->lTime:J

    .line 113
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfBuildings;->lTime2:J

    .line 114
    return-void
.end method
