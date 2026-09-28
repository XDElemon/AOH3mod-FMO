.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapEdit.java"


# direct methods
.method public constructor <init>()V
    .registers 21

    .line 21
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v1, 0x2

    .line 25
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v13, v1, v2

    .line 27
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v14, v1, 0xa

    .line 28
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v15, v1, 0xa

    .line 30
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 31
    .local v16, "buttonYPadding":I
    move/from16 v1, v16

    .line 33
    .local v1, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v2, 0x4

    .line 35
    .local v17, "textPosX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$1;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move v7, v12

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
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

    .line 50
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move/from16 v6, v17

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
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

    .line 70
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$3;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
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

    .line 84
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$4;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
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

    .line 100
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$5;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
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

    .line 115
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$6;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$6;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
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

    .line 130
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$7;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$7;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
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

    .line 145
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$8;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$8;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
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

    .line 161
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$9;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$9;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
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

    .line 177
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$10;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$10;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
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

    .line 192
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$11;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$11;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
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

    .line 207
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$12;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$12;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
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

    .line 237
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$13;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$13;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
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

    .line 250
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$14;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$14;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
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

    .line 270
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$15;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const/16 v18, 0x1

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    move/from16 v19, v14

    move-object v14, v11

    .end local v14    # "menuX":I
    .local v19, "menuX":I
    move/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$15;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
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

    .line 283
    new-instance v14, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$16;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v4, ""

    move-object v2, v14

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$16;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
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

    .line 296
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$17;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const/4 v10, 0x1

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$17;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
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

    .line 309
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$18;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    const/4 v10, 0x0

    const-string v4, ""

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$18;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
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

    .line 322
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$19;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v10

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$19;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
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

    .line 338
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$20;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v10

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$20;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
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

    .line 354
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$21;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v10

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$21;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
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

    .line 370
    new-instance v11, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$22;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v10

    move-object v2, v11

    move-object/from16 v3, p0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$22;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v9, v1, v2

    .line 386
    .end local v1    # "buttonY":I
    .local v9, "buttonY":I
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, ""

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v3, v2

    move v6, v13

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v15

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v15

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 387
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

    .line 391
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 392
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 393
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 394
    return-void
.end method

.method public updateLanguage()V
    .registers 5

    .line 398
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 400
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "EditMap"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 401
    return-void
.end method
