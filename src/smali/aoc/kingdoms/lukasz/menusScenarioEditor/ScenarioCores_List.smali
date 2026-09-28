.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioCores_List.java"


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
    .registers 28

    .line 50
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->sCivsTag:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 53
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v1, 0x2

    .line 54
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v13, v1, v2

    .line 56
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v14, v1, v2

    .line 57
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v15, v1, v2

    .line 59
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 60
    .local v16, "buttonYPadding":I
    move/from16 v17, v16

    .line 62
    .local v17, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v1, 0x4

    .line 64
    .local v18, "textPosX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    .line 66
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_76

    .line 67
    new-instance v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$1;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int v8, v1, v2

    const/16 v19, 0x1

    const-string v3, ""

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

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 83
    .end local v20    # "menuX":I
    .restart local v14    # "menuX":I
    :cond_76
    move/from16 v20, v14

    .end local v14    # "menuX":I
    .restart local v20    # "menuX":I
    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$2;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_91
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    add-int v17, v17, v1

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 98
    .local v14, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    const-string v2, "game/Civilizations.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v19

    .line 101
    .local v19, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 104
    .end local v1    # "tagsSPLITED":[Ljava/lang/String;
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_bd
    array-length v2, v8

    if-ge v1, v2, :cond_c8

    .line 105
    aget-object v2, v8, v1

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_bd

    .line 108
    .end local v1    # "i":I
    :cond_c8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_196

    .line 110
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_cf
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    const-string v3, ".json"

    const-string v5, "civilizations/"

    const-string v6, "game/"

    if-ge v1, v2, :cond_143

    .line 111
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v2, :cond_105

    .line 112
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .local v2, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_12c

    .line 114
    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_105
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 117
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_12c
    array-length v4, v2

    const/4 v5, 0x0

    :goto_12e
    if-ge v5, v4, :cond_140

    aget-object v6, v2, v5

    .line 118
    .local v6, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v6    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_12e

    .line 110
    :cond_140
    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    .line 122
    .end local v1    # "i":I
    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_143
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_144
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v1, v2, :cond_196

    .line 123
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 125
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v4, v2

    const/4 v7, 0x0

    :goto_17b
    if-ge v7, v4, :cond_191

    aget-object v22, v2, v7

    .line 126
    .local v22, "file":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v23, v2

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v23, "files":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v22    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v23

    goto :goto_17b

    .line 122
    .end local v23    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_191
    move-object/from16 v23, v2

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v23    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    .line 131
    .end local v1    # "i":I
    .end local v23    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 132
    .local v7, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 134
    .local v6, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e9

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_1af
    if-ge v0, v1, :cond_1e8

    .line 136
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1e5

    .line 137
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1af

    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1e8
    goto :goto_20b

    .line 142
    :cond_1e9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_1ee
    if-ge v0, v1, :cond_20b

    .line 143
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ee

    .line 149
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_20b
    :goto_20b
    :try_start_20b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30b

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "toAddID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_213
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_217} :catch_316

    if-ge v1, v2, :cond_23a

    .line 153
    :try_start_219
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_229} :catch_22f

    if-eqz v2, :cond_22c

    .line 154
    move v0, v1

    .line 152
    :cond_22c
    add-int/lit8 v1, v1, 0x1

    goto :goto_213

    .line 214
    .end local v0    # "toAddID":I
    .end local v1    # "i":I
    :catch_22f
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v24, v12

    move-object v9, v6

    move-object v12, v7

    goto/16 :goto_31f

    .line 158
    .restart local v0    # "toAddID":I
    :cond_23a
    :try_start_23a
    new-instance v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    add-int v21, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_27a} :catch_316

    sub-int v22, v1, v2

    const/16 v23, 0x1

    const/4 v4, 0x1

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v24, v5

    move/from16 v5, v21

    move-object/from16 v25, v6

    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v12

    move-object/from16 v26, v7

    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v7, v17

    move-object/from16 v21, v8

    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v21, "tagsSPLITED":[Ljava/lang/String;
    move/from16 v8, v22

    move-object/from16 v22, v9

    .end local v9    # "tempT":Ljava/lang/String;
    .local v22, "tempT":Ljava/lang/String;
    move/from16 v9, v23

    :try_start_295
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v1, v24

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$4;

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
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2b1} :catch_303

    const/16 v23, 0x1

    const/4 v4, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v7, v17

    move/from16 v24, v12

    move-object v12, v9

    .end local v12    # "paddingLeft":I
    .local v24, "paddingLeft":I
    move/from16 v9, v23

    :try_start_2be
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    add-int v17, v17, v1

    .line 209
    iget-object v1, v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2da} :catch_2fd

    move-object/from16 v9, v25

    .end local v25    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2dc
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2e5} :catch_2f9

    .line 211
    move-object/from16 v12, v26

    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2e7
    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 212
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ed} :catch_2f7

    .line 213
    move-object v6, v9

    move-object v7, v12

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v12, v24

    .end local v0    # "toAddID":I
    goto/16 :goto_20b

    .line 214
    :catch_2f7
    move-exception v0

    goto :goto_31f

    .end local v12    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2f9
    move-exception v0

    move-object/from16 v12, v26

    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_31f

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2fd
    move-exception v0

    move-object/from16 v9, v25

    move-object/from16 v12, v26

    .end local v25    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_31f

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "paddingLeft":I
    .local v12, "paddingLeft":I
    .restart local v25    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_303
    move-exception v0

    move/from16 v24, v12

    move-object/from16 v9, v25

    move-object/from16 v12, v26

    .end local v25    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "paddingLeft":I
    goto :goto_31f

    .line 216
    .end local v21    # "tagsSPLITED":[Ljava/lang/String;
    .end local v22    # "tempT":Ljava/lang/String;
    .end local v24    # "paddingLeft":I
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v9, "tempT":Ljava/lang/String;
    .local v12, "paddingLeft":I
    :cond_30b
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v24, v12

    move-object v9, v6

    move-object v12, v7

    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22    # "tempT":Ljava/lang/String;
    .restart local v24    # "paddingLeft":I
    move/from16 v0, v17

    goto :goto_324

    .line 214
    .end local v21    # "tagsSPLITED":[Ljava/lang/String;
    .end local v22    # "tempT":Ljava/lang/String;
    .end local v24    # "paddingLeft":I
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v9, "tempT":Ljava/lang/String;
    .local v12, "paddingLeft":I
    :catch_316
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v24, v12

    move-object v9, v6

    move-object v12, v7

    .line 215
    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22    # "tempT":Ljava/lang/String;
    .restart local v24    # "paddingLeft":I
    :goto_31f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v0, v17

    .line 218
    .end local v17    # "buttonY":I
    .local v0, "buttonY":I
    :goto_324
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, ""

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v3, v2

    move v6, v13

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v15

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v13

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v20

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 219
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"    # I

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 347
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 348
    return v0

    .line 346
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 352
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 337
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 338
    return v0

    .line 336
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 11
    .param p1, "nCivTagID"    # I

    .line 359
    const-string v0, "gfx/flagsXH/"

    const-string v1, "gfx/flags/"

    const-string v2, ".png"

    :try_start_6
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

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

    .line 362
    goto :goto_72

    .line 360
    :catch_39
    move-exception v3

    .line 361
    .local v3, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_3a
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

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

    .line 369
    .end local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_72
    goto :goto_e0

    .line 363
    :catch_73
    move-exception v1

    .line 365
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_74
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

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

    .line 368
    goto :goto_e0

    .line 366
    :catch_a7
    move-exception v3

    .line 367
    .restart local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_a8
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

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

    .line 372
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_e0
    goto :goto_f9

    .line 370
    :catch_e1
    move-exception v0

    .line 371
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "gfx/flags/ran.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v0    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_f9
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 11
    .param p1, "nMenuElementID"    # I

    .line 261
    if-nez p1, :cond_15

    .line 262
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_SCENARIO_CORES_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    .line 263
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCoresList()V

    .line 265
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    goto/16 :goto_e5

    .line 269
    :cond_15
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_aa

    .line 270
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9f

    .line 271
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, "civID":I
    if-gez v0, :cond_5b

    .line 274
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    .line 276
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 279
    :cond_5b
    if-lez v0, :cond_9f

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8b

    .line 281
    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 282
    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_ScenarioCores(I)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 285
    .end local v1    # "i":I
    :cond_8b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCoresList_InProvince()V

    .line 287
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Added"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->v:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 291
    .end local v0    # "civID":I
    :cond_9f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 292
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCoresList()V

    goto :goto_e5

    .line 294
    :cond_aa
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "tempCivTag":Ljava/lang/String;
    :try_start_b6
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    .line 299
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

    .line 300
    sget-object v2, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v2}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    :try_end_d6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b6 .. :try_end_d6} :catch_d7

    .line 303
    .end local v1    # "nCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_e5

    .line 301
    :catch_d7
    move-exception v1

    .line 302
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NoData"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 306
    .end local v0    # "tempCivTag":Ljava/lang/String;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_e5
    return-void
.end method

.method public disposeData()V
    .registers 3

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 388
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 394
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 230
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 235
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_b8

    .line 236
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 237
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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

    .line 238
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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
    :try_end_b4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_b4} :catch_bb
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_b4} :catch_b9

    .line 235
    :cond_b4
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1e

    .end local v0    # "i":I
    :cond_b8
    goto :goto_bc

    .line 243
    :catch_b9
    move-exception v0

    goto :goto_bd

    .line 241
    :catch_bb
    move-exception v0

    .line 245
    :goto_bc
    nop

    .line 247
    :goto_bd
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 248
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

    .line 224
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 225
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 226
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 379
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 381
    if-nez p1, :cond_8

    .line 382
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->disposeData()V

    .line 384
    :cond_8
    return-void
.end method

.method public updateLanguage()V
    .registers 5

    .line 254
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 256
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "AddCore"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

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

    .line 257
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 312
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 314
    const/4 v0, 0x1

    .line 317
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElementsSize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 318
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lCivsTags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, "tempTagID":I
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 321
    if-gez v2, :cond_50

    .line 322
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->loadFlag(I)V

    goto :goto_50

    .line 325
    :cond_2f
    if-ltz v2, :cond_50

    .line 326
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 327
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCores_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 333
    .end local v1    # "i":I
    .end local v2    # "tempTagID":I
    :cond_53
    return-void
.end method
