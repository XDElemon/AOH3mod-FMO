.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_Build.java"


# static fields
.field public static iSortID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 64

    .line 60
    const-string v1, "None"

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 63
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v0, v2

    .line 65
    .local v10, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    .line 68
    .local v2, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v24

    .line 69
    .local v24, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v0, v4

    .line 71
    .local v25, "menuY":I
    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 72
    .local v26, "buttonYPadding":I
    sget v27, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 73
    .local v27, "buttonX":I
    move/from16 v4, v26

    .line 75
    .local v4, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_42

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_44

    :cond_42
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_44
    move/from16 v36, v0

    .line 76
    .local v36, "buttonH":I
    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v2, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v5

    float-to-int v9, v0

    .line 77
    .local v9, "tW0":I
    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v2, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v5

    float-to-int v8, v0

    .line 79
    .local v8, "tW1":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    const v6, 0x3eb33333    # 0.35f

    mul-float v0, v0, v6

    float-to-int v7, v0

    .line 80
    .local v7, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float v0, v0, v5

    float-to-int v15, v0

    .line 81
    .local v15, "r0W2":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float v0, v0, v5

    float-to-int v14, v0

    .line 82
    .local v14, "r0W3":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v0, v0, v12

    float-to-int v13, v0

    .line 84
    .local v13, "r0W4":I
    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v2, v0

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x2

    sub-int v0, v0, v16

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v6, v0

    .line 85
    .local v6, "r1W":I
    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v2, v0

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x2

    sub-int v0, v0, v16

    int-to-float v0, v0

    mul-float v0, v0, v5

    move/from16 v16, v14

    .end local v14    # "r0W3":I
    .local v16, "r0W3":I
    float-to-int v14, v0

    .line 86
    .local v14, "r1W2":I
    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v2, v0

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v17, 0x2

    sub-int v0, v0, v17

    int-to-float v0, v0

    mul-float v0, v0, v5

    float-to-int v5, v0

    .line 87
    .local v5, "r1W3":I
    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v2, v0

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v17, 0x2

    sub-int v0, v0, v17

    int-to-float v0, v0

    mul-float v0, v0, v12

    float-to-int v12, v0

    .line 100
    .local v12, "r1W4":I
    const/4 v0, 0x0

    .line 101
    .local v0, "tNum":I
    const/16 v17, 0x0

    .line 103
    .local v17, "tPossible":I
    const/16 v18, 0x0

    move v3, v0

    move/from16 v28, v5

    move/from16 v5, v18

    move/from16 v62, v17

    move/from16 v17, v14

    move/from16 v14, v62

    .end local v0    # "tNum":I
    .local v3, "tNum":I
    .local v5, "k":I
    .local v14, "tPossible":I
    .local v17, "r1W2":I
    .local v28, "r1W3":I
    :goto_d9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v5, v0, :cond_1ac

    .line 105
    :try_start_e7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_197

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v18, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_101} :catch_19c

    move/from16 v29, v6

    .end local v6    # "r1W":I
    .local v29, "r1W":I
    :try_start_103
    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10f} :catch_193

    if-eqz v0, :cond_130

    .line 107
    :try_start_111
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_125} :catch_12b

    if-gez v0, :cond_130

    .line 108
    move/from16 v30, v7

    goto/16 :goto_1a4

    .line 121
    :catch_12b
    move-exception v0

    move/from16 v30, v7

    goto/16 :goto_1a1

    .line 113
    :cond_130
    :try_start_130
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    sget-object v18, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_148} :catch_193

    move/from16 v30, v7

    .end local v7    # "r0W":I
    .local v30, "r0W":I
    :try_start_14a
    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 117
    :cond_156
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v0, :cond_18e

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_18c} :catch_191

    if-ne v0, v6, :cond_19b

    .line 118
    :cond_18e
    add-int/lit8 v14, v14, 0x1

    goto :goto_19b

    .line 121
    :catch_191
    move-exception v0

    goto :goto_1a1

    .end local v30    # "r0W":I
    .restart local v7    # "r0W":I
    :catch_193
    move-exception v0

    move/from16 v30, v7

    .end local v7    # "r0W":I
    .restart local v30    # "r0W":I
    goto :goto_1a1

    .line 105
    .end local v29    # "r1W":I
    .end local v30    # "r0W":I
    .restart local v6    # "r1W":I
    .restart local v7    # "r0W":I
    :cond_197
    move/from16 v29, v6

    move/from16 v30, v7

    .line 123
    .end local v6    # "r1W":I
    .end local v7    # "r0W":I
    .restart local v29    # "r1W":I
    .restart local v30    # "r0W":I
    :cond_19b
    :goto_19b
    goto :goto_1a4

    .line 121
    .end local v29    # "r1W":I
    .end local v30    # "r0W":I
    .restart local v6    # "r1W":I
    .restart local v7    # "r0W":I
    :catch_19c
    move-exception v0

    move/from16 v29, v6

    move/from16 v30, v7

    .line 122
    .end local v6    # "r1W":I
    .end local v7    # "r0W":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v29    # "r1W":I
    .restart local v30    # "r0W":I
    :goto_1a1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a4
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v29

    move/from16 v7, v30

    goto/16 :goto_d9

    .end local v29    # "r1W":I
    .end local v30    # "r0W":I
    .restart local v6    # "r1W":I
    .restart local v7    # "r0W":I
    :cond_1ac
    move/from16 v29, v6

    move/from16 v30, v7

    .line 126
    .end local v5    # "k":I
    .end local v6    # "r1W":I
    .end local v7    # "r0W":I
    .restart local v29    # "r1W":I
    .restart local v30    # "r0W":I
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    mul-int/lit8 v7, v10, 0x2

    sub-int v19, v2, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v49, v1

    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v50, v1

    const-string v1, " / "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/4 v7, 0x0

    move-object/from16 v51, v1

    const/4 v1, 0x1

    if-lez v3, :cond_1ee

    if-ne v3, v14, :cond_1ee

    const/16 v23, 0x1

    goto :goto_1f0

    :cond_1ee
    const/16 v23, 0x0

    :goto_1f0
    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move/from16 v52, v12

    .end local v12    # "r1W4":I
    .local v52, "r1W4":I
    move-object v12, v0

    move/from16 v53, v13

    .end local v13    # "r0W4":I
    .local v53, "r0W4":I
    move-object/from16 v13, p0

    move/from16 v56, v14

    move/from16 v54, v16

    move/from16 v55, v17

    .end local v14    # "tPossible":I
    .end local v16    # "r0W3":I
    .end local v17    # "r1W2":I
    .local v54, "r0W3":I
    .local v55, "r1W2":I
    .local v56, "tPossible":I
    move/from16 v14, v18

    move/from16 v57, v15

    .end local v15    # "r0W2":I
    .local v57, "r0W2":I
    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v10

    move/from16 v18, v4

    invoke-direct/range {v12 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;ZIIIIIZZLjava/lang/String;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v26

    add-int/2addr v0, v4

    .line 142
    .end local v4    # "buttonY":I
    .local v0, "buttonY":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b1

    .line 143
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    mul-int/lit8 v4, v10, 0x2

    sub-int v13, v2, v4

    move-object v4, v12

    move/from16 v23, v28

    .end local v28    # "r1W3":I
    .local v23, "r1W3":I
    move-object/from16 v5, p0

    move/from16 v58, v29

    .end local v29    # "r1W":I
    .local v58, "r1W":I
    move/from16 v59, v30

    const/4 v15, 0x0

    .end local v30    # "r0W":I
    .local v59, "r0W":I
    move v7, v10

    move/from16 v60, v8

    .end local v8    # "tW1":I
    .local v60, "tW1":I
    move v8, v0

    move/from16 v61, v9

    .end local v9    # "tW0":I
    .local v61, "tW0":I
    move v9, v13

    invoke-direct/range {v4 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;III)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_2bc

    .line 142
    .end local v23    # "r1W3":I
    .end local v58    # "r1W":I
    .end local v59    # "r0W":I
    .end local v60    # "tW1":I
    .end local v61    # "tW0":I
    .restart local v8    # "tW1":I
    .restart local v9    # "tW0":I
    .restart local v28    # "r1W3":I
    .restart local v29    # "r1W":I
    .restart local v30    # "r0W":I
    :cond_2b1
    move/from16 v60, v8

    move/from16 v61, v9

    move/from16 v23, v28

    move/from16 v58, v29

    move/from16 v59, v30

    const/4 v15, 0x0

    .line 168
    .end local v8    # "tW1":I
    .end local v9    # "tW0":I
    .end local v28    # "r1W3":I
    .end local v29    # "r1W":I
    .end local v30    # "r0W":I
    .restart local v23    # "r1W3":I
    .restart local v58    # "r1W":I
    .restart local v59    # "r0W":I
    .restart local v60    # "tW1":I
    .restart local v61    # "tW0":I
    :goto_2bc
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    const/4 v5, 0x4

    if-eqz v4, :cond_3de

    .line 169
    move v4, v0

    .line 170
    .local v4, "tempY":I
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v6

    .line 172
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "CapitalCity"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, v51

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v41, v10, v7

    mul-int/lit8 v7, v10, 0x2

    sub-int v7, v2, v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v9, v9, 0x2

    sub-int v43, v7, v9

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int v45, v7, v9

    const/16 v46, 0x0

    sget v47, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v37, v6

    move-object/from16 v38, p0

    move/from16 v42, v0

    invoke-direct/range {v37 .. v47}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    add-int v6, v6, v26

    add-int/2addr v0, v6

    .line 194
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ResearchPerMonth"

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": +"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    const/16 v12, 0x64

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v9

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v10, v7

    mul-int/lit8 v7, v10, 0x2

    sub-int v7, v2, v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v9, v9, 0x2

    sub-int v21, v7, v9

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v16, v6

    move-object/from16 v17, p0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIII)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    add-int v6, v6, v26

    add-int/2addr v0, v6

    .line 251
    sub-int v4, v0, v4

    .line 252
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v7, v0, v4

    mul-int/lit8 v9, v10, 0x2

    sub-int v9, v2, v9

    invoke-direct {v6, v10, v7, v9, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int v0, v0, v26

    goto :goto_3e0

    .line 168
    .end local v4    # "tempY":I
    :cond_3de
    move-object/from16 v8, v51

    .line 257
    :goto_3e0
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$5;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-eqz v6, :cond_3ed

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v1, :cond_3eb

    goto :goto_3ed

    :cond_3eb
    const/4 v14, 0x0

    goto :goto_3ee

    :cond_3ed
    :goto_3ed
    const/4 v14, 0x1

    :goto_3ee
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v1, :cond_3f4

    const/4 v6, 0x1

    goto :goto_3f5

    :cond_3f4
    const/4 v6, 0x0

    :goto_3f5
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Name"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x6

    mul-int/lit8 v9, v9, 0x6

    add-int v21, v7, v9

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v17, -0x1

    move-object v12, v4

    const/4 v7, 0x6

    move-object/from16 v13, p0

    const/4 v9, 0x0

    move v15, v6

    move/from16 v18, v27

    move/from16 v19, v0

    move/from16 v20, v59

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int v27, v27, v4

    .line 288
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$6;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    const/4 v15, 0x3

    const/4 v12, 0x2

    if-eq v6, v12, :cond_43c

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v15, :cond_43a

    goto :goto_43c

    :cond_43a
    const/4 v14, 0x0

    goto :goto_43d

    :cond_43c
    :goto_43c
    const/4 v14, 0x1

    :goto_43d
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v15, :cond_443

    const/4 v6, 0x1

    goto :goto_444

    :cond_443
    const/4 v6, 0x0

    :goto_444
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Population"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x6

    add-int v21, v12, v13

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v17, -0x1

    move-object v12, v4

    move-object/from16 v13, p0

    const/4 v9, 0x3

    move v15, v6

    move/from16 v18, v27

    move/from16 v19, v0

    move/from16 v20, v57

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int v27, v27, v4

    .line 319
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$7;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    const/4 v12, 0x5

    if-eq v6, v5, :cond_489

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v12, :cond_486

    goto :goto_489

    :cond_486
    const/16 v39, 0x0

    goto :goto_48b

    :cond_489
    :goto_489
    const/16 v39, 0x1

    :goto_48b
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v12, :cond_492

    const/16 v40, 0x1

    goto :goto_494

    :cond_492
    const/16 v40, 0x0

    :goto_494
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "BuildingSlots"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x6

    add-int v46, v6, v13

    sget v47, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v42, -0x1

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move/from16 v43, v27

    move/from16 v44, v0

    move/from16 v45, v54

    invoke-direct/range {v37 .. v47}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int v27, v27, v4

    .line 351
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$8;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    const/4 v13, 0x7

    if-eq v6, v7, :cond_4d8

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v13, :cond_4d5

    goto :goto_4d8

    :cond_4d5
    const/16 v39, 0x0

    goto :goto_4da

    :cond_4d8
    :goto_4d8
    const/16 v39, 0x1

    :goto_4da
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I

    if-ne v6, v13, :cond_4e1

    const/16 v40, 0x1

    goto :goto_4e3

    :cond_4e1
    const/16 v40, 0x0

    :goto_4e3
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Cost"

    invoke-virtual {v6, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v46, v6, v14

    sget v47, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v42, -0x1

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move/from16 v43, v27

    move/from16 v44, v0

    move/from16 v45, v53

    invoke-direct/range {v37 .. v47}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v4, v0

    .line 383
    .end local v0    # "buttonY":I
    .local v4, "buttonY":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 386
    .local v6, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_521
    :try_start_521
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v14

    if-ge v0, v14, :cond_5e0

    .line 387
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v14

    if-nez v14, :cond_5db

    .line 388
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v13

    invoke-virtual {v14, v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v13

    if-nez v13, :cond_5db

    .line 389
    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v13, :cond_59f

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v14

    if-ne v13, v14, :cond_5db

    .line 390
    :cond_59f
    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v13, :cond_5c8

    .line 391
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v13

    if-gez v13, :cond_5c8

    .line 392
    goto :goto_5db

    .line 396
    :cond_5c8
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_5db
    :goto_5db
    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x7

    goto/16 :goto_521

    .line 402
    .end local v0    # "i":I
    :cond_5e0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5e4
    .catch Ljava/lang/Exception; {:try_start_521 .. :try_end_5e4} :catch_987

    if-lez v0, :cond_94f

    .line 403
    :goto_5e6
    :try_start_5e6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_944

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "toAddID":I
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_5ef
    .catch Ljava/lang/Exception; {:try_start_5e6 .. :try_end_5ef} :catch_949

    if-nez v13, :cond_629

    .line 407
    const/4 v13, 0x1

    .local v13, "o":I
    :goto_5f2
    :try_start_5f2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_626

    .line 408
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_620
    .catch Ljava/lang/Exception; {:try_start_5f2 .. :try_end_620} :catch_987

    if-eqz v14, :cond_623

    .line 409
    move v0, v13

    .line 407
    :cond_623
    add-int/lit8 v13, v13, 0x1

    goto :goto_5f2

    :cond_626
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto/16 :goto_79e

    .line 413
    :cond_629
    :try_start_629
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_62b
    .catch Ljava/lang/Exception; {:try_start_629 .. :try_end_62b} :catch_949

    if-ne v13, v1, :cond_665

    .line 414
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_62e
    :try_start_62e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_662

    .line 415
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_65c
    .catch Ljava/lang/Exception; {:try_start_62e .. :try_end_65c} :catch_987

    if-eqz v14, :cond_65f

    .line 416
    move v0, v13

    .line 414
    :cond_65f
    add-int/lit8 v13, v13, 0x1

    goto :goto_62e

    :cond_662
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto/16 :goto_79e

    .line 420
    :cond_665
    :try_start_665
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_667
    .catch Ljava/lang/Exception; {:try_start_665 .. :try_end_667} :catch_949

    const/4 v14, 0x2

    if-ne v13, v14, :cond_69e

    .line 421
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_66b
    :try_start_66b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_69b

    .line 422
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v15
    :try_end_695
    .catch Ljava/lang/Exception; {:try_start_66b .. :try_end_695} :catch_987

    if-le v14, v15, :cond_698

    .line 423
    move v0, v13

    .line 421
    :cond_698
    add-int/lit8 v13, v13, 0x1

    goto :goto_66b

    :cond_69b
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto/16 :goto_79e

    .line 427
    :cond_69e
    :try_start_69e
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_6a0
    .catch Ljava/lang/Exception; {:try_start_69e .. :try_end_6a0} :catch_949

    if-ne v13, v9, :cond_6d6

    .line 428
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_6a3
    :try_start_6a3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_6d3

    .line 429
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v15
    :try_end_6cd
    .catch Ljava/lang/Exception; {:try_start_6a3 .. :try_end_6cd} :catch_987

    if-ge v14, v15, :cond_6d0

    .line 430
    move v0, v13

    .line 428
    :cond_6d0
    add-int/lit8 v13, v13, 0x1

    goto :goto_6a3

    :cond_6d3
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto/16 :goto_79e

    .line 434
    :cond_6d6
    :try_start_6d6
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_6d8
    .catch Ljava/lang/Exception; {:try_start_6d6 .. :try_end_6d8} :catch_949

    if-ne v13, v5, :cond_70a

    .line 435
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_6db
    :try_start_6db
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_707

    .line 436
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I
    :try_end_701
    .catch Ljava/lang/Exception; {:try_start_6db .. :try_end_701} :catch_987

    if-le v14, v15, :cond_704

    .line 437
    move v0, v13

    .line 435
    :cond_704
    add-int/lit8 v13, v13, 0x1

    goto :goto_6db

    :cond_707
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto/16 :goto_79e

    .line 441
    :cond_70a
    :try_start_70a
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_70c
    .catch Ljava/lang/Exception; {:try_start_70a .. :try_end_70c} :catch_949

    if-ne v13, v12, :cond_73d

    .line 442
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_70f
    :try_start_70f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_73b

    .line 443
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I
    :try_end_735
    .catch Ljava/lang/Exception; {:try_start_70f .. :try_end_735} :catch_987

    if-ge v14, v15, :cond_738

    .line 444
    move v0, v13

    .line 442
    :cond_738
    add-int/lit8 v13, v13, 0x1

    goto :goto_70f

    :cond_73b
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto :goto_79e

    .line 448
    :cond_73d
    :try_start_73d
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_73f
    .catch Ljava/lang/Exception; {:try_start_73d .. :try_end_73f} :catch_949

    if-ne v13, v7, :cond_76e

    .line 449
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_742
    :try_start_742
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_76c

    .line 450
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v14

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v15
    :try_end_764
    .catch Ljava/lang/Exception; {:try_start_742 .. :try_end_764} :catch_987

    cmpg-float v14, v14, v15

    if-gez v14, :cond_769

    .line 451
    move v0, v13

    .line 449
    :cond_769
    add-int/lit8 v13, v13, 0x1

    goto :goto_742

    :cond_76c
    const/4 v14, 0x7

    .end local v13    # "o":I
    goto :goto_79e

    .line 455
    :cond_76e
    :try_start_76e
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->iSortID:I
    :try_end_770
    .catch Ljava/lang/Exception; {:try_start_76e .. :try_end_770} :catch_949

    const/4 v14, 0x7

    if-ne v13, v14, :cond_79e

    .line 456
    const/4 v13, 0x1

    .restart local v13    # "o":I
    :goto_774
    :try_start_774
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_79e

    .line 457
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v15

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v16
    :try_end_796
    .catch Ljava/lang/Exception; {:try_start_774 .. :try_end_796} :catch_987

    cmpl-float v15, v15, v16

    if-lez v15, :cond_79b

    .line 458
    move v0, v13

    .line 456
    :cond_79b
    add-int/lit8 v13, v13, 0x1

    goto :goto_774

    .line 463
    .end local v13    # "o":I
    :cond_79e
    :goto_79e
    move/from16 v27, v10

    .line 465
    :try_start_7a0
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$9;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x2

    mul-int/lit8 v32, v15, 0x2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v28, v13

    move-object/from16 v29, p0

    move/from16 v33, v27

    move/from16 v34, v4

    move/from16 v35, v58

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v15

    add-int v27, v27, v13

    .line 492
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$10;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7f1
    .catch Ljava/lang/Exception; {:try_start_7a0 .. :try_end_7f1} :catch_949

    move-object/from16 v5, v50

    :try_start_7f3
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v41, -0x1

    move-object/from16 v37, v13

    move-object/from16 v38, p0

    move/from16 v42, v27

    move/from16 v43, v4

    move/from16 v44, v55

    move/from16 v45, v36

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int v27, v27, v12

    .line 512
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$11;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v41, -0x1

    move-object/from16 v37, v12

    move-object/from16 v38, p0

    move/from16 v42, v27

    move/from16 v43, v4

    move/from16 v44, v23

    move/from16 v45, v36

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int v27, v27, v12

    .line 527
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$12;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    sget-object v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v7

    invoke-static {v15, v14, v9, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v7

    int-to-float v7, v7

    const/16 v9, 0xa

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v45

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v46

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v47

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v48

    move-object/from16 v37, v12

    move-object/from16 v38, p0

    move/from16 v41, v27

    move/from16 v42, v4

    move/from16 v43, v52

    move/from16 v44, v36

    invoke-direct/range {v37 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    .line 621
    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 622
    move-object/from16 v50, v5

    const/4 v5, 0x4

    const/4 v7, 0x6

    const/4 v9, 0x3

    const/4 v12, 0x5

    .end local v0    # "toAddID":I
    goto/16 :goto_5e6

    .line 403
    :cond_944
    move-object/from16 v5, v50

    move-object/from16 v9, v49

    goto :goto_982

    .line 628
    :catch_949
    move-exception v0

    move-object/from16 v5, v50

    :goto_94c
    move-object/from16 v9, v49

    goto :goto_98c

    .line 625
    :cond_94f
    move-object/from16 v5, v50

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    :try_end_955
    .catch Ljava/lang/Exception; {:try_start_7f3 .. :try_end_955} :catch_985

    move-object/from16 v9, v49

    :try_start_957
    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v7, v10, 0x2

    sub-int v18, v2, v7

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v15, -0x1

    move-object v12, v0

    move/from16 v16, v10

    move/from16 v17, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_980
    .catch Ljava/lang/Exception; {:try_start_957 .. :try_end_980} :catch_983

    add-int/2addr v0, v7

    add-int/2addr v4, v0

    .line 630
    :goto_982
    goto :goto_98f

    .line 628
    :catch_983
    move-exception v0

    goto :goto_98c

    :catch_985
    move-exception v0

    goto :goto_94c

    :catch_987
    move-exception v0

    move-object/from16 v9, v49

    move-object/from16 v5, v50

    .line 629
    .local v0, "ex":Ljava/lang/Exception;
    :goto_98c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 632
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_98f
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Built"

    invoke-virtual {v7, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int v17, v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x6

    mul-int/lit8 v12, v12, 0x6

    add-int v18, v7, v12

    const/4 v14, -0x1

    move-object v12, v0

    move/from16 v16, v4

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v4, v0

    .line 636
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9c9
    :try_start_9c9
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v0, v7, :cond_a25

    .line 637
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v7

    if-nez v7, :cond_a22

    .line 638
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v12

    sget-object v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v7

    if-eqz v7, :cond_a22

    .line 639
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_a22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c9

    .line 644
    .end local v0    # "i":I
    :cond_a25
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_bcd

    .line 645
    :goto_a2b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_bfc

    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, "toAddID":I
    const/4 v7, 0x1

    .local v7, "o":I
    :goto_a33
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_a67

    .line 649
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a64

    .line 650
    move v0, v7

    .line 648
    :cond_a64
    add-int/lit8 v7, v7, 0x1

    goto :goto_a33

    .line 654
    .end local v7    # "o":I
    :cond_a67
    move/from16 v27, v10

    .line 656
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$13;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v41, v9, 0x2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move-object/from16 v37, v7

    move-object/from16 v38, p0

    move/from16 v42, v27

    move/from16 v43, v4

    move/from16 v44, v58

    move/from16 v45, v36

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int v27, v27, v7

    .line 677
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$14;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v41, -0x1

    move-object/from16 v37, v7

    move-object/from16 v38, p0

    move/from16 v42, v27

    move/from16 v43, v4

    move/from16 v44, v55

    move/from16 v45, v36

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int v27, v27, v7

    .line 697
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$15;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v41, -0x1

    move-object/from16 v37, v7

    move-object/from16 v38, p0

    move/from16 v42, v27

    move/from16 v43, v4

    move/from16 v44, v23

    move/from16 v45, v36

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int v27, v27, v7

    .line 714
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$16;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Destroy"

    invoke-virtual {v9, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/textures/Images;->x:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v45

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move-object/from16 v37, v7

    move-object/from16 v38, p0

    move/from16 v41, v27

    move/from16 v42, v4

    move/from16 v43, v52

    move/from16 v44, v36

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    .line 728
    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 729
    nop

    .end local v0    # "toAddID":I
    goto/16 :goto_a2b

    .line 732
    :cond_bcd
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v18, v2, v5

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v15, -0x1

    move-object v12, v0

    move/from16 v16, v10

    move/from16 v17, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_bfa
    .catch Ljava/lang/Exception; {:try_start_9c9 .. :try_end_bfa} :catch_bfd

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 738
    :cond_bfc
    goto :goto_c01

    .line 736
    :catch_bfd
    move-exception v0

    .line 737
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 740
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c01
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    .line 742
    .end local v4    # "buttonY":I
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v25, v25, v1

    .line 743
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v25

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    .local v1, "menuHeight":I
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9, v2, v5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    move v14, v2

    .end local v2    # "menuWidth":I
    .local v14, "menuWidth":I
    move-object/from16 v2, p0

    move v15, v3

    .end local v3    # "tNum":I
    .local v15, "tNum":I
    move-object v3, v4

    move/from16 v4, v24

    move/from16 v5, v25

    move-object/from16 v16, v6

    .end local v6    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v6, v14

    move v7, v1

    move-object v8, v11

    move v9, v12

    move v12, v10

    .end local v10    # "paddingLeft":I
    .local v12, "paddingLeft":I
    move v10, v13

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 749
    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->drawScrollPositionAlways:Z

    .line 751
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ConstructNewBuilding"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 752
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

    .line 756
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 757
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

    .line 760
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 761
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 762
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 764
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 765
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 776
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 777
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 778
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 769
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 770
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 771
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 772
    return-void
.end method
