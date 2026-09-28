.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapProvinceConnections.java"


# static fields
.field public static activeProvinceID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    .line 27
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$1;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v8, v1, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int v16, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v17, v2, v3

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v19, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, -0x1

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 59
    return-void
.end method

.method public static addConnection(II)Z
    .registers 19
    .param p0, "nProvinceID"    # I
    .param p1, "nProvinceID2"    # I

    .line 380
    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_ac9

    .line 381
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 382
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ne v4, v0, :cond_1d

    .line 383
    return v2

    .line 381
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 387
    .end local v3    # "i":I
    :cond_20
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_21
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 388
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    if-ne v4, v0, :cond_36

    .line 389
    return v2

    .line 387
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 393
    .end local v3    # "i":I
    :cond_39
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3a
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 394
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    if-ne v4, v1, :cond_4f

    .line 395
    return v2

    .line 393
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 399
    .end local v3    # "i":I
    :cond_52
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 400
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    goto :goto_84

    .line 402
    :cond_64
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 403
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringSeaProvince(I)V

    .line 404
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    goto :goto_84

    .line 406
    :cond_7d
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    .line 410
    :goto_84
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 411
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    goto :goto_b6

    .line 413
    :cond_96
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 414
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringSeaProvince(I)V

    .line 415
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    goto :goto_b6

    .line 417
    :cond_af
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    .line 421
    :goto_b6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v3, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v4, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c1
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_3c2

    .line 425
    const/4 v6, 0x0

    .line 427
    .local v6, "found":Z
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ge v7, v8, :cond_3bb

    .line 428
    const/4 v6, 0x1

    .line 429
    const/4 v8, 0x0

    .line 431
    .local v8, "l1":Z
    const/4 v9, 0x0

    .local v9, "o":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    .local v10, "oSize":I
    :goto_e2
    if-ge v9, v10, :cond_11e

    .line 432
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_11b

    .line 433
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_11b

    .line 434
    const/4 v8, 0x1

    .line 431
    :cond_11b
    add-int/lit8 v9, v9, 0x1

    goto :goto_e2

    .line 438
    .end local v9    # "o":I
    .end local v10    # "oSize":I
    :cond_11e
    if-eqz v8, :cond_2ff

    .line 439
    const/4 v8, 0x0

    .line 441
    const/4 v9, 0x0

    .restart local v9    # "o":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    .restart local v10    # "oSize":I
    :goto_12a
    if-ge v9, v10, :cond_166

    .line 442
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_163

    .line 443
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_163

    .line 444
    const/4 v8, 0x1

    .line 441
    :cond_163
    add-int/lit8 v9, v9, 0x1

    goto :goto_12a

    .line 448
    .end local v9    # "o":I
    .end local v10    # "oSize":I
    :cond_166
    if-nez v8, :cond_225

    .line 449
    const/4 v9, 0x0

    .line 451
    .local v9, "f1":Z
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v2

    .local v10, "o":I
    :goto_172
    if-ltz v10, :cond_223

    .line 452
    if-nez v9, :cond_1c9

    .line 453
    const/4 v11, 0x0

    .local v11, "n":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    .local v12, "nSize":I
    :goto_17f
    if-ge v11, v12, :cond_1c8

    .line 454
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    if-ne v13, v14, :cond_1c5

    .line 455
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    if-ne v13, v14, :cond_1c5

    .line 456
    const/4 v9, 0x1

    .line 458
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    goto :goto_1c8

    .line 453
    :cond_1c5
    add-int/lit8 v11, v11, 0x1

    goto :goto_17f

    .end local v11    # "n":I
    .end local v12    # "nSize":I
    :cond_1c8
    :goto_1c8
    goto :goto_21f

    .line 464
    :cond_1c9
    const/4 v11, 0x1

    .line 466
    .local v11, "end":Z
    const/4 v12, 0x0

    .local v12, "n":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .local v13, "nSize":I
    :goto_1d3
    if-ge v12, v13, :cond_21c

    .line 467
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    if-ne v14, v15, :cond_219

    .line 468
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_219

    .line 469
    const/4 v11, 0x0

    .line 471
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    goto :goto_21c

    .line 466
    :cond_219
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d3

    .line 477
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_21c
    :goto_21c
    if-eqz v11, :cond_21f

    .line 478
    goto :goto_223

    .line 451
    .end local v11    # "end":Z
    :cond_21f
    :goto_21f
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_172

    .line 482
    .end local v9    # "f1":Z
    .end local v10    # "o":I
    :cond_223
    :goto_223
    goto/16 :goto_3bb

    .line 483
    :cond_225
    const/4 v9, 0x0

    .line 486
    .local v9, "startID":I
    const/4 v10, 0x0

    .line 488
    .local v10, "t1":Z
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v2

    .local v11, "o":I
    :goto_230
    if-ltz v11, :cond_29a

    .line 489
    const/4 v10, 0x0

    .line 491
    const/4 v12, 0x0

    .restart local v12    # "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .restart local v13    # "nSize":I
    :goto_23c
    if-ge v12, v13, :cond_267

    .line 492
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    if-ne v14, v15, :cond_264

    .line 493
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_264

    .line 495
    const/4 v10, 0x1

    .line 496
    goto :goto_267

    .line 491
    :cond_264
    add-int/lit8 v12, v12, 0x1

    goto :goto_23c

    .line 500
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_267
    :goto_267
    if-nez v10, :cond_297

    .line 501
    add-int/lit8 v11, v11, 0x1

    .line 502
    :goto_26b
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    if-ge v11, v12, :cond_29a

    .line 503
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v11, v11, 0x1

    goto :goto_26b

    .line 488
    :cond_297
    add-int/lit8 v11, v11, -0x1

    goto :goto_230

    .line 510
    .end local v11    # "o":I
    :cond_29a
    const/4 v11, 0x0

    .local v11, "h":I
    :goto_29b
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    if-ge v11, v12, :cond_2fd

    .line 511
    const/4 v12, 0x0

    .line 513
    .local v12, "addT":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_2a7
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v14

    if-ge v13, v14, :cond_2da

    .line 514
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    if-ne v14, v15, :cond_2d7

    .line 515
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_2d7

    .line 517
    const/4 v12, 0x1

    .line 518
    goto :goto_2da

    .line 513
    :cond_2d7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2a7

    .line 522
    .end local v13    # "n":I
    :cond_2da
    :goto_2da
    if-eqz v12, :cond_2fd

    .line 523
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v12    # "addT":Z
    add-int/lit8 v11, v11, 0x1

    goto :goto_29b

    .line 530
    .end local v9    # "startID":I
    .end local v10    # "t1":Z
    .end local v11    # "h":I
    :cond_2fd
    goto/16 :goto_3bb

    .line 532
    :cond_2ff
    const/4 v9, 0x0

    .line 534
    .local v9, "f1":Z
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v2

    .local v10, "o":I
    :goto_309
    if-ltz v10, :cond_3ba

    .line 535
    if-nez v9, :cond_360

    .line 536
    const/4 v11, 0x0

    .local v11, "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    .local v12, "nSize":I
    :goto_316
    if-ge v11, v12, :cond_35f

    .line 537
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    if-ne v13, v14, :cond_35c

    .line 538
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    if-ne v13, v14, :cond_35c

    .line 539
    const/4 v9, 0x1

    .line 541
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    goto :goto_35f

    .line 536
    :cond_35c
    add-int/lit8 v11, v11, 0x1

    goto :goto_316

    .end local v11    # "n":I
    .end local v12    # "nSize":I
    :cond_35f
    :goto_35f
    goto :goto_3b6

    .line 547
    :cond_360
    const/4 v11, 0x1

    .line 549
    .local v11, "end":Z
    const/4 v12, 0x0

    .local v12, "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .local v13, "nSize":I
    :goto_36a
    if-ge v12, v13, :cond_3b3

    .line 550
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    if-ne v14, v15, :cond_3b0

    .line 551
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_3b0

    .line 552
    const/4 v11, 0x0

    .line 554
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    goto :goto_3b3

    .line 549
    :cond_3b0
    add-int/lit8 v12, v12, 0x1

    goto :goto_36a

    .line 560
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_3b3
    :goto_3b3
    if-eqz v11, :cond_3b6

    .line 561
    goto :goto_3ba

    .line 534
    .end local v11    # "end":Z
    :cond_3b6
    :goto_3b6
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_309

    .line 568
    .end local v9    # "f1":Z
    .end local v10    # "o":I
    :cond_3ba
    :goto_3ba
    nop

    .line 571
    .end local v7    # "j":I
    .end local v8    # "l1":Z
    :cond_3bb
    :goto_3bb
    if-eqz v6, :cond_3be

    .line 572
    goto :goto_3c2

    .line 424
    .end local v6    # "found":Z
    :cond_3be
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c1

    .line 577
    .end local v5    # "i":I
    :cond_3c2
    :goto_3c2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_705

    .line 578
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3c9
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_705

    .line 579
    const/4 v6, 0x0

    .line 581
    .restart local v6    # "found":Z
    const/4 v7, 0x0

    .restart local v7    # "j":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ge v7, v8, :cond_6fe

    .line 582
    const/4 v6, 0x1

    .line 583
    const/4 v8, 0x0

    .line 585
    .restart local v8    # "l1":Z
    const/4 v9, 0x0

    .local v9, "o":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    .local v10, "oSize":I
    :goto_3ea
    if-ge v9, v10, :cond_42d

    .line 586
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    if-ne v11, v12, :cond_42a

    .line 587
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_42a

    .line 588
    const/4 v8, 0x1

    .line 585
    :cond_42a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3ea

    .line 592
    .end local v9    # "o":I
    .end local v10    # "oSize":I
    :cond_42d
    if-eqz v8, :cond_633

    .line 593
    const/4 v8, 0x0

    .line 595
    const/4 v9, 0x0

    .restart local v9    # "o":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    .restart local v10    # "oSize":I
    :goto_439
    if-ge v9, v10, :cond_47c

    .line 596
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_479

    .line 597
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_479

    .line 598
    const/4 v8, 0x1

    .line 595
    :cond_479
    add-int/lit8 v9, v9, 0x1

    goto :goto_439

    .line 602
    .end local v9    # "o":I
    .end local v10    # "oSize":I
    :cond_47c
    if-nez v8, :cond_549

    .line 603
    const/4 v9, 0x0

    .line 605
    .local v9, "f1":Z
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v2

    .local v10, "o":I
    :goto_488
    if-ltz v10, :cond_547

    .line 606
    if-nez v9, :cond_4e6

    .line 607
    const/4 v11, 0x0

    .local v11, "n":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    .local v12, "nSize":I
    :goto_495
    if-ge v11, v12, :cond_4e5

    .line 608
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    if-ne v13, v14, :cond_4e2

    .line 609
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    if-ne v13, v14, :cond_4e2

    .line 610
    const/4 v9, 0x1

    .line 612
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    goto :goto_4e5

    .line 607
    :cond_4e2
    add-int/lit8 v11, v11, 0x1

    goto :goto_495

    .end local v11    # "n":I
    .end local v12    # "nSize":I
    :cond_4e5
    :goto_4e5
    goto :goto_543

    .line 618
    :cond_4e6
    const/4 v11, 0x1

    .line 620
    .local v11, "end":Z
    const/4 v12, 0x0

    .local v12, "n":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .restart local v13    # "nSize":I
    :goto_4f0
    if-ge v12, v13, :cond_540

    .line 621
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    if-ne v14, v15, :cond_53d

    .line 622
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_53d

    .line 623
    const/4 v11, 0x0

    .line 625
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    goto :goto_540

    .line 620
    :cond_53d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4f0

    .line 631
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_540
    :goto_540
    if-eqz v11, :cond_543

    .line 632
    goto :goto_547

    .line 605
    .end local v11    # "end":Z
    :cond_543
    :goto_543
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_488

    .line 636
    .end local v9    # "f1":Z
    .end local v10    # "o":I
    :cond_547
    :goto_547
    goto/16 :goto_6fe

    .line 637
    :cond_549
    const/4 v9, 0x0

    .line 640
    .local v9, "startID":I
    const/4 v10, 0x0

    .line 642
    .local v10, "t1":Z
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v2

    .local v11, "o":I
    :goto_554
    if-ltz v11, :cond_5c6

    .line 643
    const/4 v10, 0x0

    .line 645
    const/4 v12, 0x0

    .restart local v12    # "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .restart local v13    # "nSize":I
    :goto_560
    if-ge v12, v13, :cond_593

    .line 646
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_590

    .line 647
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_590

    .line 649
    const/4 v10, 0x1

    .line 650
    goto :goto_593

    .line 645
    :cond_590
    add-int/lit8 v12, v12, 0x1

    goto :goto_560

    .line 654
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_593
    :goto_593
    if-nez v10, :cond_5c3

    .line 655
    add-int/lit8 v11, v11, 0x1

    .line 656
    :goto_597
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    if-ge v11, v12, :cond_5c6

    .line 657
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v11, v11, 0x1

    goto :goto_597

    .line 642
    :cond_5c3
    add-int/lit8 v11, v11, -0x1

    goto :goto_554

    .line 664
    .end local v11    # "o":I
    :cond_5c6
    const/4 v11, 0x0

    .local v11, "h":I
    :goto_5c7
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    if-ge v11, v12, :cond_631

    .line 665
    const/4 v12, 0x0

    .line 667
    .local v12, "addT":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_5d3
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v14

    if-ge v13, v14, :cond_60e

    .line 668
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_60b

    .line 669
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_60b

    .line 671
    const/4 v12, 0x1

    .line 672
    goto :goto_60e

    .line 667
    :cond_60b
    add-int/lit8 v13, v13, 0x1

    goto :goto_5d3

    .line 676
    .end local v13    # "n":I
    :cond_60e
    :goto_60e
    if-eqz v12, :cond_631

    .line 677
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    .end local v12    # "addT":Z
    add-int/lit8 v11, v11, 0x1

    goto :goto_5c7

    .line 684
    .end local v9    # "startID":I
    .end local v10    # "t1":Z
    .end local v11    # "h":I
    :cond_631
    goto/16 :goto_6fe

    .line 686
    :cond_633
    const/4 v9, 0x0

    .line 688
    .local v9, "f1":Z
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v2

    .local v10, "o":I
    :goto_63d
    if-ltz v10, :cond_6fd

    .line 689
    if-nez v9, :cond_69b

    .line 690
    const/4 v11, 0x0

    .local v11, "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    .local v12, "nSize":I
    :goto_64a
    if-ge v11, v12, :cond_69a

    .line 691
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_697

    .line 692
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    if-ne v13, v14, :cond_697

    .line 693
    const/4 v9, 0x1

    .line 695
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    goto :goto_69a

    .line 690
    :cond_697
    add-int/lit8 v11, v11, 0x1

    goto :goto_64a

    .end local v11    # "n":I
    .end local v12    # "nSize":I
    :cond_69a
    :goto_69a
    goto :goto_6f9

    .line 701
    :cond_69b
    const/4 v11, 0x1

    .line 703
    .local v11, "end":Z
    const/4 v12, 0x0

    .local v12, "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .local v13, "nSize":I
    :goto_6a5
    if-ge v12, v13, :cond_6f6

    .line 704
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_6f3

    .line 705
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_6f3

    .line 706
    const/4 v11, 0x0

    .line 708
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    goto :goto_6f6

    .line 703
    :cond_6f3
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a5

    .line 714
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_6f6
    :goto_6f6
    if-eqz v11, :cond_6f9

    .line 715
    goto :goto_6fd

    .line 688
    .end local v11    # "end":Z
    :cond_6f9
    :goto_6f9
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_63d

    .line 722
    .end local v9    # "f1":Z
    .end local v10    # "o":I
    :cond_6fd
    :goto_6fd
    nop

    .line 725
    .end local v7    # "j":I
    .end local v8    # "l1":Z
    :cond_6fe
    :goto_6fe
    if-eqz v6, :cond_701

    .line 726
    goto :goto_705

    .line 578
    .end local v6    # "found":Z
    :cond_701
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3c9

    .line 733
    .end local v5    # "i":I
    :cond_705
    :goto_705
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a49

    .line 734
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_70c
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_a49

    .line 735
    const/4 v6, 0x0

    .line 737
    .restart local v6    # "found":Z
    const/4 v7, 0x0

    .restart local v7    # "j":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ge v7, v8, :cond_a42

    .line 738
    const/4 v6, 0x1

    .line 739
    const/4 v8, 0x0

    .line 741
    .restart local v8    # "l1":Z
    const/4 v9, 0x0

    .local v9, "o":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    .local v10, "oSize":I
    :goto_72d
    if-ge v9, v10, :cond_770

    .line 742
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_76d

    .line 743
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_76d

    .line 744
    const/4 v8, 0x1

    .line 741
    :cond_76d
    add-int/lit8 v9, v9, 0x1

    goto :goto_72d

    .line 748
    .end local v9    # "o":I
    .end local v10    # "oSize":I
    :cond_770
    if-eqz v8, :cond_977

    .line 749
    const/4 v8, 0x0

    .line 751
    const/4 v9, 0x0

    .restart local v9    # "o":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    .restart local v10    # "oSize":I
    :goto_77c
    if-ge v9, v10, :cond_7bf

    .line 752
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    if-ne v11, v12, :cond_7bc

    .line 753
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_7bc

    .line 754
    const/4 v8, 0x1

    .line 751
    :cond_7bc
    add-int/lit8 v9, v9, 0x1

    goto :goto_77c

    .line 758
    .end local v9    # "o":I
    .end local v10    # "oSize":I
    :cond_7bf
    if-nez v8, :cond_88d

    .line 759
    const/4 v9, 0x0

    .line 761
    .local v9, "f1":Z
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v2

    .local v10, "o":I
    :goto_7cb
    if-ltz v10, :cond_88b

    .line 762
    if-nez v9, :cond_829

    .line 763
    const/4 v11, 0x0

    .local v11, "n":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    .local v12, "nSize":I
    :goto_7d8
    if-ge v11, v12, :cond_828

    .line 764
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_825

    .line 765
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    if-ne v13, v14, :cond_825

    .line 766
    const/4 v9, 0x1

    .line 768
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    goto :goto_828

    .line 763
    :cond_825
    add-int/lit8 v11, v11, 0x1

    goto :goto_7d8

    .end local v11    # "n":I
    .end local v12    # "nSize":I
    :cond_828
    :goto_828
    goto :goto_887

    .line 774
    :cond_829
    const/4 v11, 0x1

    .line 776
    .local v11, "end":Z
    const/4 v12, 0x0

    .local v12, "n":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .restart local v13    # "nSize":I
    :goto_833
    if-ge v12, v13, :cond_884

    .line 777
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_881

    .line 778
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_881

    .line 779
    const/4 v11, 0x0

    .line 781
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    goto :goto_884

    .line 776
    :cond_881
    add-int/lit8 v12, v12, 0x1

    goto :goto_833

    .line 787
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_884
    :goto_884
    if-eqz v11, :cond_887

    .line 788
    goto :goto_88b

    .line 761
    .end local v11    # "end":Z
    :cond_887
    :goto_887
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_7cb

    .line 792
    .end local v9    # "f1":Z
    .end local v10    # "o":I
    :cond_88b
    :goto_88b
    goto/16 :goto_a42

    .line 793
    :cond_88d
    const/4 v9, 0x0

    .line 796
    .local v9, "startID":I
    const/4 v10, 0x0

    .line 798
    .local v10, "t1":Z
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v2

    .local v11, "o":I
    :goto_898
    if-ltz v11, :cond_90a

    .line 799
    const/4 v10, 0x0

    .line 801
    const/4 v12, 0x0

    .restart local v12    # "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .restart local v13    # "nSize":I
    :goto_8a4
    if-ge v12, v13, :cond_8d7

    .line 802
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_8d4

    .line 803
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_8d4

    .line 805
    const/4 v10, 0x1

    .line 806
    goto :goto_8d7

    .line 801
    :cond_8d4
    add-int/lit8 v12, v12, 0x1

    goto :goto_8a4

    .line 810
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_8d7
    :goto_8d7
    if-nez v10, :cond_907

    .line 811
    add-int/lit8 v11, v11, 0x1

    .line 812
    :goto_8db
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    sub-int/2addr v12, v2

    if-ge v11, v12, :cond_90a

    .line 813
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v11, v11, 0x1

    goto :goto_8db

    .line 798
    :cond_907
    add-int/lit8 v11, v11, -0x1

    goto :goto_898

    .line 820
    .end local v11    # "o":I
    :cond_90a
    const/4 v11, 0x0

    .local v11, "h":I
    :goto_90b
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    if-ge v11, v12, :cond_975

    .line 821
    const/4 v12, 0x0

    .line 823
    .local v12, "addT":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_917
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v14

    if-ge v13, v14, :cond_952

    .line 824
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_94f

    .line 825
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_94f

    .line 827
    const/4 v12, 0x1

    .line 828
    goto :goto_952

    .line 823
    :cond_94f
    add-int/lit8 v13, v13, 0x1

    goto :goto_917

    .line 832
    .end local v13    # "n":I
    :cond_952
    :goto_952
    if-eqz v12, :cond_975

    .line 833
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    .end local v12    # "addT":Z
    add-int/lit8 v11, v11, 0x1

    goto :goto_90b

    .line 840
    .end local v9    # "startID":I
    .end local v10    # "t1":Z
    .end local v11    # "h":I
    :cond_975
    goto/16 :goto_a42

    .line 842
    :cond_977
    const/4 v9, 0x0

    .line 844
    .local v9, "f1":Z
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v2

    .local v10, "o":I
    :goto_981
    if-ltz v10, :cond_a41

    .line 845
    if-nez v9, :cond_9df

    .line 846
    const/4 v11, 0x0

    .local v11, "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v12

    .local v12, "nSize":I
    :goto_98e
    if-ge v11, v12, :cond_9de

    .line 847
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_9db

    .line 848
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    if-ne v13, v14, :cond_9db

    .line 849
    const/4 v9, 0x1

    .line 851
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    goto :goto_9de

    .line 846
    :cond_9db
    add-int/lit8 v11, v11, 0x1

    goto :goto_98e

    .end local v11    # "n":I
    .end local v12    # "nSize":I
    :cond_9de
    :goto_9de
    goto :goto_a3d

    .line 857
    :cond_9df
    const/4 v11, 0x1

    .line 859
    .local v11, "end":Z
    const/4 v12, 0x0

    .local v12, "n":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v13

    .local v13, "nSize":I
    :goto_9e9
    if-ge v12, v13, :cond_a3a

    .line 860
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v15

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_a37

    .line 861
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v15

    if-ne v14, v15, :cond_a37

    .line 862
    const/4 v11, 0x0

    .line 864
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    goto :goto_a3a

    .line 859
    :cond_a37
    add-int/lit8 v12, v12, 0x1

    goto :goto_9e9

    .line 870
    .end local v12    # "n":I
    .end local v13    # "nSize":I
    :cond_a3a
    :goto_a3a
    if-eqz v11, :cond_a3d

    .line 871
    goto :goto_a41

    .line 844
    .end local v11    # "end":Z
    :cond_a3d
    :goto_a3d
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_981

    .line 878
    .end local v9    # "f1":Z
    .end local v10    # "o":I
    :cond_a41
    :goto_a41
    nop

    .line 881
    .end local v7    # "j":I
    .end local v8    # "l1":Z
    :cond_a42
    :goto_a42
    if-eqz v6, :cond_a45

    .line 882
    goto :goto_a49

    .line 734
    .end local v6    # "found":Z
    :cond_a45
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_70c

    .line 887
    .end local v5    # "i":I
    :cond_a49
    :goto_a49
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_a4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a7f

    .line 888
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 889
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 887
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4a

    .line 892
    .end local v5    # "a":I
    :cond_a7f
    if-le v0, v1, :cond_a89

    .line 893
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    goto :goto_a90

    .line 895
    :cond_a89
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    .line 898
    :goto_a90
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Added"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    .line 899
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorMapProvinceConnectionsList()Laoc/kingdoms/lukasz/menu/Menu;

    .line 902
    .end local v3    # "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_ac9
    return v2
.end method

.method public static generateConnections()V
    .registers 10

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1c7

    .line 270
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1c3

    .line 272
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_BoxInBox(II)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 273
    const/4 v2, 0x0

    .line 275
    .local v2, "addConnection":Z
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_17
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v4

    if-ge v3, v4, :cond_1ba

    .line 276
    const/4 v4, 0x0

    .local v4, "j2":I
    :goto_22
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_1b3

    .line 277
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    if-ne v5, v6, :cond_1ac

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    if-ne v5, v6, :cond_1ac

    .line 279
    :try_start_50
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    if-ne v5, v6, :cond_7f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6
    :try_end_7a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_7a} :catch_80

    if-ne v5, v6, :cond_7f

    .line 280
    const/4 v2, 0x1

    .line 281
    goto/16 :goto_1b3

    .line 303
    :cond_7f
    goto :goto_c4

    .line 283
    :catch_80
    move-exception v5

    .line 284
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    add-int/lit8 v6, v3, 0x1

    .line 285
    .local v6, "ti2":I
    add-int/lit8 v7, v4, 0x1

    .line 287
    .local v7, "tj2":I
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ne v8, v6, :cond_90

    .line 288
    const/4 v6, 0x0

    .line 291
    :cond_90
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ne v8, v7, :cond_9b

    .line 292
    const/4 v7, 0x0

    .line 296
    :cond_9b
    :try_start_9b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_c2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_bd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9b .. :try_end_bd} :catch_c3

    if-ne v8, v9, :cond_c2

    .line 297
    const/4 v2, 0x1

    .line 298
    goto/16 :goto_1b3

    .line 302
    :cond_c2
    goto :goto_c4

    .line 300
    :catch_c3
    move-exception v8

    .line 306
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "ti2":I
    .end local v7    # "tj2":I
    :goto_c4
    :try_start_c4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    if-ne v5, v6, :cond_f3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6
    :try_end_ee
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c4 .. :try_end_ee} :catch_f4

    if-ne v5, v6, :cond_f3

    .line 307
    const/4 v2, 0x1

    .line 308
    goto/16 :goto_1b3

    .line 330
    :cond_f3
    goto :goto_139

    .line 310
    :catch_f4
    move-exception v5

    .line 311
    .restart local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    add-int/lit8 v6, v3, 0x1

    .line 312
    .restart local v6    # "ti2":I
    add-int/lit8 v7, v4, -0x1

    .line 314
    .restart local v7    # "tj2":I
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ne v8, v6, :cond_104

    .line 315
    const/4 v6, 0x0

    .line 318
    :cond_104
    if-gez v7, :cond_110

    .line 319
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 323
    :cond_110
    :try_start_110
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_137

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_132
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_110 .. :try_end_132} :catch_138

    if-ne v8, v9, :cond_137

    .line 324
    const/4 v2, 0x1

    .line 325
    goto/16 :goto_1b3

    .line 329
    :cond_137
    goto :goto_139

    .line 327
    :catch_138
    move-exception v8

    .line 333
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "ti2":I
    .end local v7    # "tj2":I
    :goto_139
    :try_start_139
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    if-ne v5, v6, :cond_167

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6
    :try_end_163
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_139 .. :try_end_163} :catch_168

    if-ne v5, v6, :cond_167

    .line 334
    const/4 v2, 0x1

    .line 335
    goto :goto_1b3

    .line 357
    :cond_167
    goto :goto_1ac

    .line 337
    :catch_168
    move-exception v5

    .line 338
    .restart local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    add-int/lit8 v6, v3, -0x1

    .line 339
    .restart local v6    # "ti2":I
    add-int/lit8 v7, v4, 0x1

    .line 341
    .restart local v7    # "tj2":I
    if-gez v6, :cond_179

    .line 342
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 345
    :cond_179
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    if-ne v8, v7, :cond_184

    .line 346
    const/4 v7, 0x0

    .line 350
    :cond_184
    :try_start_184
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_1aa

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_1a6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_184 .. :try_end_1a6} :catch_1ab

    if-ne v8, v9, :cond_1aa

    .line 351
    const/4 v2, 0x1

    .line 352
    goto :goto_1b3

    .line 356
    :cond_1aa
    goto :goto_1ac

    .line 354
    :catch_1ab
    move-exception v8

    .line 361
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "ti2":I
    .end local v7    # "tj2":I
    :cond_1ac
    :goto_1ac
    if-eqz v2, :cond_1af

    .line 362
    goto :goto_1b3

    .line 276
    :cond_1af
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 366
    .end local v4    # "j2":I
    :cond_1b3
    :goto_1b3
    if-eqz v2, :cond_1b6

    .line 367
    goto :goto_1ba

    .line 275
    :cond_1b6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    .line 371
    .end local v3    # "i2":I
    :cond_1ba
    :goto_1ba
    if-eqz v2, :cond_1bf

    .line 372
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->addConnection(II)Z

    .line 270
    .end local v2    # "addConnection":Z
    :cond_1bf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 269
    .end local v1    # "j":I
    :cond_1c3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 377
    .end local v0    # "i":I
    :cond_1c7
    return-void
.end method

.method public static final generateConnections_BoxInBox(II)Z
    .registers 5
    .param p0, "i"    # I
    .param p1, "j"    # I

    .line 223
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 224
    return v1

    .line 227
    :cond_18
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    invoke-static {p0, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 228
    return v1

    .line 231
    :cond_2f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p0, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 232
    return v1

    .line 235
    :cond_46
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p0, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 236
    return v1

    .line 239
    :cond_5d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 240
    return v1

    .line 243
    :cond_74
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 244
    return v1

    .line 247
    :cond_8b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 248
    return v1

    .line 251
    :cond_a2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 252
    return v1

    .line 255
    :cond_b9
    const/4 v0, 0x0

    return v0
.end method

.method public static final generateConnections_PointInBox(III)Z
    .registers 4
    .param p0, "nProvinceID"    # I
    .param p1, "iX"    # I
    .param p2, "iY"    # I

    .line 259
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    if-lt p1, v0, :cond_2a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    if-gt p1, v0, :cond_2a

    .line 260
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v0

    if-lt p2, v0, :cond_2a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v0

    if-gt p2, v0, :cond_2a

    .line 261
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public static keyUp(I)Z
    .registers 8
    .param p0, "keycode"    # I

    .line 90
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1f

    .line 91
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    if-ltz v0, :cond_d

    .line 92
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_ProvinceID(I)V

    .line 94
    :cond_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    .line 95
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    if-ltz v0, :cond_1a

    .line 96
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_ProvinceID_Active(I)V

    .line 98
    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorMapProvinceConnectionsList()Laoc/kingdoms/lukasz/menu/Menu;

    .line 101
    :cond_1f
    const/16 v0, 0x2e

    const-string v1, ": "

    const-string v2, "Done"

    const/4 v3, 0x1

    if-ne p0, v0, :cond_60

    .line 102
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_60

    .line 103
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG(Z)V

    .line 104
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    .line 110
    :cond_60
    const/16 v0, 0x87

    if-ne p0, v0, :cond_9c

    .line 111
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_9c

    .line 112
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG_Just(Z)V

    .line 113
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 115
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    .line 119
    :cond_9c
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    const/4 v1, 0x0

    if-gez v0, :cond_a2

    .line 120
    return v1

    .line 123
    :cond_a2
    const/16 v0, 0x42

    if-ne p0, v0, :cond_af

    .line 124
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->addConnection(II)Z

    move-result v0

    return v0

    .line 127
    :cond_af
    const/16 v0, 0x29

    if-ne p0, v0, :cond_3b2

    .line 128
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v1, :cond_3b1

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v2, v4, :cond_221

    .line 133
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_ca
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_137

    .line 134
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 138
    .end local v2    # "i":I
    :cond_137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1ab

    .line 139
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13e
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1ab

    .line 140
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_13e

    .line 145
    .end local v2    # "i":I
    :cond_1ab
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_377

    .line 146
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1b2
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_21f

    .line 147
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b2

    .end local v2    # "i":I
    :cond_21f
    goto/16 :goto_377

    .line 153
    :cond_221
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_222
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_28f

    .line 154
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_222

    .line 158
    .end local v2    # "i":I
    :cond_28f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_303

    .line 159
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_296
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_303

    .line 160
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_296

    .line 165
    .end local v2    # "i":I
    :cond_303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_377

    .line 166
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_30a
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_377

    .line 167
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_30a

    .line 173
    .end local v2    # "i":I
    :cond_377
    :goto_377
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v2, v4, :cond_389

    .line 174
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    goto :goto_394

    .line 176
    :cond_389
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    .line 179
    :goto_394
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v2, v4, :cond_3a6

    .line 180
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v2, v4, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    goto :goto_3b1

    .line 182
    :cond_3a6
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v2, v4, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    .line 186
    .end local v0    # "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3b1
    :goto_3b1
    return v3

    .line 189
    :cond_3b2
    const/16 v0, 0x43

    if-ne p0, v0, :cond_486

    .line 190
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v1, :cond_485

    .line 191
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringProvince(I)V

    .line 192
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringSeaProvince(I)V

    .line 193
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringProvince(I)V

    .line 194
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringSeaProvince(I)V

    .line 196
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_40a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v0

    if-nez v0, :cond_40a

    .line 197
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    .line 200
    :cond_40a
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_42b

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v0

    if-nez v0, :cond_42b

    .line 201
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    .line 204
    :cond_42b
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v0, v1, :cond_43d

    .line 205
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    goto :goto_448

    .line 207
    :cond_43d
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    .line 210
    :goto_448
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Removed"

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    .line 211
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorMapProvinceConnectionsList()Laoc/kingdoms/lukasz/menu/Menu;

    .line 214
    :cond_485
    return v3

    .line 217
    :cond_486
    return v1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 63
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 65
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 66
    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVE PROVINCE ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nSPACE -> SET ACTIVE PROVINCE\nENTER -> ADD CONNECTION\nBACKSPACE -> REMOVE CONNECTION\nM -> REFLECT PROVINCE BORDER\nR -> REBUILD PROVINCE BACKGROUND\nF5 -> REBUILD PROVINCE BG WITHOUT CROP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "sText":Ljava/lang/String;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 79
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 81
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 83
    return-void
.end method
