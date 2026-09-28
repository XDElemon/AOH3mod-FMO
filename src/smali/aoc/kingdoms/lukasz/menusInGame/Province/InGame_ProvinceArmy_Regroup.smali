.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceArmy_Regroup.java"


# direct methods
.method public constructor <init>()V
    .registers 24

    .line 18
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 21
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 22
    .local v8, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 24
    .local v1, "buttonY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v0, 0x3

    .line 25
    .local v21, "generalPadding":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v2, v21, 0x2

    add-int v22, v0, v2

    .line 27
    .local v22, "defaultXArmyPos":I
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_162

    .line 29
    :try_start_23
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 30
    .local v0, "innerH":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    .line 32
    .local v2, "innerW":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SelectProvincesToWhichYouWantToMoveArmies"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 34
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 36
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    .line 37
    .local v3, "buttonW":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    .line 38
    .local v4, "buttonH":I
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x3

    .line 40
    .local v5, "buttonH2":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Brush"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->x:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v10, v6

    move-object/from16 v11, p0

    move v14, v8

    move v15, v1

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-direct/range {v10 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Undo"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->x:I

    add-int v7, v1, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v10, v6

    move-object/from16 v11, p0

    move v14, v8

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-direct/range {v10 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Clear"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->x:I

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int v15, v7, v10

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v10, v6

    move-object/from16 v11, p0

    move v14, v8

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-direct/range {v10 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$4;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Confirm"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v15, v7, v3

    const/16 v19, 0x1

    const/4 v14, -0x1

    move-object v10, v6

    move-object/from16 v11, p0

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v10 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$5;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Cancel"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->x:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v14, v7, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v1

    add-int v15, v7, v4

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v10, v6

    move-object/from16 v11, p0

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v10 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_15c} :catch_15e

    .line 87
    nop

    .end local v0    # "innerH":I
    .end local v2    # "innerW":I
    .end local v3    # "buttonW":I
    .end local v4    # "buttonH":I
    .end local v5    # "buttonH2":I
    goto :goto_162

    .line 85
    :catch_15e
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 90
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_162
    :goto_162
    const/4 v0, 0x0

    .line 92
    .end local v1    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_168
    if-ge v1, v2, :cond_1a0

    .line 93
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_19d

    .line 94
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    move v0, v3

    .line 92
    :cond_19d
    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    .line 98
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_1a0
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 100
    .local v10, "menuHeight":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    const/4 v11, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v6, v10

    move-object v7, v9

    move v12, v8

    .end local v8    # "buttonX":I
    .local v12, "buttonX":I
    move v8, v11

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 105
    const/4 v1, 0x0

    move-object/from16 v2, p0

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;->drawScrollPositionAlways:Z

    .line 106
    return-void
.end method

.method public static final confirm()V
    .registers 0

    .line 137
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_Move()V

    .line 138
    return-void
.end method


# virtual methods
.method public getMenuPosX()I
    .registers 3

    .line 133
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .registers 3

    .line 118
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .registers 3

    .line 128
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 123
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 111
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameProvinceArmy()V

    .line 114
    return-void
.end method
