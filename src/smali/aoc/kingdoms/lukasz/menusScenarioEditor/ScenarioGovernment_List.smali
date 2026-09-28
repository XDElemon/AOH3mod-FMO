.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioGovernment_List.java"


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>()V
    .registers 23

    .line 23
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 21
    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 26
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    .line 27
    .local v12, "paddingLeft":I
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 29
    .local v13, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v0, 0x4

    .line 30
    .local v14, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v15, v0, v1

    .line 32
    .local v15, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x2

    .line 33
    .local v16, "buttonYPadding":I
    move/from16 v17, v16

    .line 35
    .local v17, "buttonY":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    .line 37
    .local v18, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v0, 0x4

    .line 39
    .local v19, "textPosX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_48

    .line 40
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    goto :goto_4a

    .line 43
    :cond_48
    iput v10, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    .line 46
    :goto_4a
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "CapitalCity"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    mul-int/lit8 v0, v12, 0x2

    sub-int v7, v18, v0

    const/16 v20, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v17

    move-object v10, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v17, v17, v0

    .line 54
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$2;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v0, v0, 0x2

    add-int v5, v12, v0

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v8

    move/from16 v6, v17

    move-object v10, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$3;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const-string v2, "-"

    move-object v0, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v16, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 70
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MilitaryAcademy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    mul-int/lit8 v0, v12, 0x2

    sub-int v7, v18, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v17, v17, v0

    .line 78
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$5;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v0, v0, 0x2

    add-int v5, v12, v0

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$6;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "-"

    move-object v0, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$6;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v16, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 94
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$7;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MilitaryAcademyForGenerals"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    mul-int/lit8 v0, v12, 0x2

    sub-int v7, v18, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$7;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v17, v17, v0

    .line 102
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$8;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v0, v0, 0x2

    add-int v5, v12, v0

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$8;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$9;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "-"

    move-object v0, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$9;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v16, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 118
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "SupremeCourt"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    mul-int/lit8 v0, v12, 0x2

    sub-int v7, v18, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$10;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v17, v17, v0

    .line 126
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$11;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v0, v0, 0x2

    add-int v5, v12, v0

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$11;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$12;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "-"

    move-object v0, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$12;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v16, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 142
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$13;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NuclearReactor"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    mul-int/lit8 v0, v12, 0x2

    sub-int v7, v18, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$13;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v17, v17, v0

    .line 150
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$14;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v0, v0, 0x2

    add-int v5, v12, v0

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$14;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$15;

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v18, v0

    div-int/lit8 v7, v0, 0x2

    const-string v2, "-"

    move-object v0, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$15;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v16, 0x2

    add-int/2addr v0, v1

    add-int v8, v17, v0

    .line 165
    .end local v17    # "buttonY":I
    .local v8, "buttonY":I
    new-instance v7, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v7

    move v3, v13

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v13, v15

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v13

    mul-int/lit8 v1, v15, 0x2

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    if-lez v0, :cond_2d5

    const/16 v21, 0x1

    goto :goto_2d7

    :cond_2d5
    const/16 v21, 0x0

    :goto_2d7
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    move/from16 v4, v18

    move-object v6, v11

    move/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 166
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

    .line 177
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 180
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 181
    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iX"    # I
    .param p3, "iY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iTranslateX"    # I
    .param p7, "iTranslateY"    # I

    .line 171
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 172
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 173
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 187
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 188
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_1e

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 189
    return-void
.end method
