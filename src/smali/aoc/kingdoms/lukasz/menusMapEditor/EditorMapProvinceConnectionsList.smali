.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapProvinceConnectionsList.java"


# direct methods
.method public constructor <init>()V
    .registers 23

    .line 25
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v1, 0x2

    .line 29
    .local v11, "paddingLeft":I
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 31
    .local v12, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    div-int/lit8 v13, v1, 0x2

    .line 32
    .local v13, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v14, v1, v2

    .line 33
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v1, 0x4

    .line 35
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 36
    .local v16, "buttonYPadding":I
    move/from16 v1, v16

    .line 38
    .local v1, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    const/16 v17, 0x1

    if-ltz v2, :cond_126

    .line 39
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_2d
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    const-string v9, ""

    if-ge v10, v2, :cond_a5

    .line 40
    new-instance v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v2, v11, 0x2

    sub-int v9, v13, v2

    const/16 v18, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v8

    move-object/from16 v3, p0

    move v7, v11

    move-object/from16 v19, v8

    move v8, v1

    move/from16 v20, v14

    move v14, v10

    .end local v10    # "i":I
    .local v14, "i":I
    .local v20, "menuX":I
    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v2, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v1, v2

    .line 39
    add-int/lit8 v10, v14, 0x1

    move/from16 v14, v20

    .end local v14    # "i":I
    .restart local v10    # "i":I
    goto :goto_2d

    .end local v20    # "menuX":I
    .local v14, "menuX":I
    :cond_a5
    move/from16 v20, v14

    move v14, v10

    .line 75
    .end local v10    # "i":I
    .end local v14    # "menuX":I
    .restart local v20    # "menuX":I
    const/4 v2, 0x0

    move v14, v2

    .local v14, "i":I
    :goto_aa
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v2

    if-ge v14, v2, :cond_122

    .line 76
    new-instance v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v2, v11, 0x2

    sub-int v18, v13, v2

    const/16 v19, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v10

    move-object/from16 v3, p0

    move v7, v11

    move v8, v1

    move-object/from16 v21, v9

    move/from16 v9, v18

    move/from16 v18, v11

    move-object v11, v10

    .end local v11    # "paddingLeft":I
    .local v18, "paddingLeft":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v1, v2

    .line 75
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v18

    move-object/from16 v9, v21

    goto :goto_aa

    .end local v18    # "paddingLeft":I
    .restart local v11    # "paddingLeft":I
    :cond_122
    move/from16 v18, v11

    .end local v11    # "paddingLeft":I
    .restart local v18    # "paddingLeft":I
    move v10, v1

    goto :goto_12b

    .line 38
    .end local v18    # "paddingLeft":I
    .end local v20    # "menuX":I
    .restart local v11    # "paddingLeft":I
    .local v14, "menuX":I
    :cond_126
    move/from16 v18, v11

    move/from16 v20, v14

    .end local v11    # "paddingLeft":I
    .end local v14    # "menuX":I
    .restart local v18    # "paddingLeft":I
    .restart local v20    # "menuX":I
    move v10, v1

    .line 112
    .end local v1    # "buttonY":I
    .local v10, "buttonY":I
    :goto_12b
    new-instance v7, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Province"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, v7

    move v4, v12

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v12, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v12

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    if-ltz v1, :cond_169

    const/4 v8, 0x1

    goto :goto_16b

    :cond_169
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_16b
    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v20

    move v5, v13

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 113
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 117
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 118
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 119
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 120
    return-void
.end method

.method public updateLanguage()V
    .registers 5

    .line 124
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 126
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnectionsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Province"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 127
    return-void
.end method
