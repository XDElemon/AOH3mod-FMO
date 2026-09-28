.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMap_FormableCivClaimants.java"


# instance fields
.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lLoadedFlags_TagsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sCivsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 25

    .line 45
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->sCivsTag:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 48
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    .line 49
    .local v12, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int v13, v0, v1

    .line 51
    .local v13, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v14, v0, v1

    .line 52
    .local v14, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v15, v0, v1

    .line 54
    .local v15, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x2

    .line 55
    .local v16, "buttonYPadding":I
    move/from16 v0, v16

    .line 57
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x4

    .line 59
    .local v17, "textPosX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    .line 61
    const/16 v18, 0x1

    sput-boolean v18, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    .line 63
    new-instance v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AddCivilization"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int v8, v1, v2

    const/16 v19, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v12

    move/from16 v7, v16

    move/from16 v20, v14

    move-object v14, v9

    .end local v14    # "menuX":I
    .local v20, "menuX":I
    move/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    add-int/2addr v0, v1

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 73
    .local v14, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 76
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->getClaimantsSize()I

    move-result v2

    .local v2, "iSize":I
    :goto_9f
    if-ge v1, v2, :cond_c4

    .line 77
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v3, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->ClaimantsTag:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_c4
    move/from16 v19, v0

    .line 82
    .end local v0    # "buttonY":I
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    .local v19, "buttonY":I
    :goto_c6
    :try_start_c6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a7

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "toAddID":I
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_ce
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d2} :catch_1af

    if-ge v1, v2, :cond_f2

    .line 86
    :try_start_d4
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e4} :catch_ea

    if-eqz v2, :cond_e7

    .line 87
    move v0, v1

    .line 85
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    .line 140
    .end local v0    # "toAddID":I
    .end local v1    # "i":I
    :catch_ea
    move-exception v0

    move/from16 v23, v12

    move/from16 v21, v15

    move-object v15, v9

    goto/16 :goto_1b5

    .line 91
    .restart local v0    # "toAddID":I
    :cond_f2
    :try_start_f2
    new-instance v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_132} :catch_1af

    sub-int v21, v1, v2

    const/16 v22, 0x1

    const/4 v4, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move v6, v12

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, v21

    move/from16 v21, v15

    move-object v15, v9

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "menuY":I
    move/from16 v9, v22

    :try_start_146
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v1, v23

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants$3;

    const-string v3, ""

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    add-int/2addr v1, v12

    mul-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_162} :catch_1a3

    const/16 v22, 0x1

    const/4 v4, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v7, v19

    move/from16 v23, v12

    move-object v12, v9

    .end local v12    # "paddingLeft":I
    .local v23, "paddingLeft":I
    move/from16 v9, v22

    :try_start_16f
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    add-int v19, v19, v1

    .line 135
    iget-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_19a} :catch_1a1

    .line 139
    move-object v9, v15

    move/from16 v15, v21

    move/from16 v12, v23

    .end local v0    # "toAddID":I
    goto/16 :goto_c6

    .line 140
    :catch_1a1
    move-exception v0

    goto :goto_1b5

    .end local v23    # "paddingLeft":I
    .restart local v12    # "paddingLeft":I
    :catch_1a3
    move-exception v0

    move/from16 v23, v12

    .end local v12    # "paddingLeft":I
    .restart local v23    # "paddingLeft":I
    goto :goto_1b5

    .line 142
    .end local v21    # "menuY":I
    .end local v23    # "paddingLeft":I
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "paddingLeft":I
    .local v15, "menuY":I
    :cond_1a7
    move/from16 v23, v12

    move/from16 v21, v15

    move-object v15, v9

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "paddingLeft":I
    .local v15, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "menuY":I
    .restart local v23    # "paddingLeft":I
    move/from16 v0, v19

    goto :goto_1ba

    .line 140
    .end local v21    # "menuY":I
    .end local v23    # "paddingLeft":I
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "paddingLeft":I
    .local v15, "menuY":I
    :catch_1af
    move-exception v0

    move/from16 v23, v12

    move/from16 v21, v15

    move-object v15, v9

    .line 141
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "paddingLeft":I
    .local v0, "ex":Ljava/lang/Exception;
    .local v15, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "menuY":I
    .restart local v23    # "paddingLeft":I
    :goto_1b5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v0, v19

    .line 146
    .end local v19    # "buttonY":I
    .local v0, "buttonY":I
    :goto_1ba
    new-instance v8, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, ""

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v2, v8

    move v5, v13

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v21

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v21

    sub-int/2addr v1, v13

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v20

    move-object v7, v11

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 147
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"    # I

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 287
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 288
    return v0

    .line 286
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 277
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 278
    return v0

    .line 276
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 11
    .param p1, "nCivTagID"    # I

    .line 299
    const-string v0, "gfx/flagsXH/"

    const-string v1, "gfx/flags/"

    const-string v2, ".png"

    :try_start_6
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_38} :catch_39

    .line 302
    goto :goto_72

    .line 300
    :catch_39
    move-exception v3

    .line 301
    .local v3, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_3a
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3a .. :try_end_72} :catch_73

    .line 309
    .end local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_72
    goto :goto_e0

    .line 303
    :catch_73
    move-exception v1

    .line 305
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_74
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_74 .. :try_end_a6} :catch_a7

    .line 308
    goto :goto_e0

    .line 306
    :catch_a7
    move-exception v3

    .line 307
    .restart local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_a8
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v0}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a8 .. :try_end_e0} :catch_e1

    .line 312
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_e0
    goto :goto_f9

    .line 310
    :catch_e1
    move-exception v0

    .line 311
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "gfx/flags/ran.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v0    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_f9
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 7
    .param p1, "nMenuElementID"    # I

    .line 199
    if-nez p1, :cond_6

    .line 200
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    goto :goto_5f

    .line 205
    :cond_6
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 206
    sget-object v0, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->removeClaimant(Ljava/lang/String;)V

    .line 207
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_FORMABLE_CIV:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_5f

    .line 210
    :cond_24
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "tempCivTag":Ljava/lang/String;
    :try_start_30
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    .line 215
    .local v1, "nCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://en.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Wiki:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/menus/Dialog;->GO_TO_LINK:Ljava/lang/String;

    .line 216
    sget-object v2, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v2}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    :try_end_50
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_30 .. :try_end_50} :catch_51

    .line 219
    .end local v1    # "nCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_5f

    .line 217
    :catch_51
    move-exception v1

    .line 218
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NoData"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 222
    .end local v0    # "tempCivTag":Ljava/lang/String;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_5f
    return-void
.end method

.method public disposeData()V
    .registers 3

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 328
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 332
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 158
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 163
    :try_start_1d
    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    if-eqz v0, :cond_be

    .line 164
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_22
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 165
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 166
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 167
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 164
    :cond_b8
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_22

    .end local v0    # "i":I
    :cond_bc
    goto/16 :goto_158

    .line 172
    :cond_be
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_bf
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_158

    .line 173
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 174
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 175
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_151
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_151} :catch_157
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_151} :catch_155

    .line 172
    :cond_151
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_bf

    .line 181
    .end local v0    # "i":I
    :catch_155
    move-exception v0

    goto :goto_159

    .line 179
    :catch_157
    move-exception v0

    .line 183
    :cond_158
    :goto_158
    nop

    .line 185
    :goto_159
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 186
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

    .line 152
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 153
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 154
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 319
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 321
    if-nez p1, :cond_8

    .line 322
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->disposeData()V

    .line 324
    :cond_8
    return-void
.end method

.method public updateLanguage()V
    .registers 5

    .line 192
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 194
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Claimants"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 228
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 230
    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 231
    const/4 v0, 0x1

    .line 234
    .local v0, "tempRandomButton":I
    move v2, v0

    .local v2, "i":I
    :goto_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElementsSize()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 235
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getIsLoaded(Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "tempTagID":I
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 238
    if-gez v3, :cond_54

    .line 239
    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->loadFlag(I)V

    goto :goto_54

    .line 243
    :cond_34
    if-ltz v3, :cond_54

    .line 244
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 245
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v4, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 251
    .end local v0    # "tempRandomButton":I
    .end local v2    # "i":I
    .end local v3    # "tempTagID":I
    :cond_57
    goto :goto_9e

    .line 255
    :cond_58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_59
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElementsSize()I

    move-result v2

    if-ge v0, v2, :cond_9e

    .line 256
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 258
    .local v2, "tempTagID":I
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 259
    if-gez v2, :cond_9b

    .line 260
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->loadFlag(I)V

    goto :goto_9b

    .line 264
    :cond_7b
    if-ltz v2, :cond_9b

    .line 265
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 266
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCivClaimants;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 273
    .end local v0    # "i":I
    .end local v2    # "tempTagID":I
    :cond_9e
    :goto_9e
    return-void
.end method
