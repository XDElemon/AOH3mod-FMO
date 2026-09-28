.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMap_GenerateSuggestedCivilizations.java"


# instance fields
.field public scenarioIDBefore:I


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 30
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->scenarioIDBefore:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "GenerateSuggestedCivilizations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, v1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 37
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    iput v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->scenarioIDBefore:I

    .line 39
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;)V
    .registers 1
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;

    .line 26
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->loadData()V

    return-void
.end method

.method private final loadData()V
    .registers 3

    .line 63
    nop

    :goto_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_13

    .line 64
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->build_SuggestedOwners()V

    .line 65
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    goto :goto_1

    .line 68
    :cond_13
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->scenarioIDBefore:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 71
    return-void
.end method


# virtual methods
.method public build_SuggestedOwners()V
    .registers 19

    .line 75
    const-string v0, ".txt"

    const-string v1, "suggestedCivilizations/"

    const-string v2, "map/"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "scenarios/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 77
    .local v3, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 78
    .local v4, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 80
    .local v5, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    const/4 v6, 0x1

    .line 82
    .local v6, "tCivID":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/JsonValue;

    .line 83
    .local v8, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    const-class v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-virtual {v4, v9, v8}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    .line 85
    .local v9, "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    iget v10, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    if-ltz v10, :cond_175

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v10
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9a} :catch_184

    const-string v11, ";"

    if-eqz v10, :cond_130

    .line 87
    :try_start_9e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 88
    .local v10, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "sOwners":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "sRes":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 94
    .local v14, "add":Z
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_d1
    move-object/from16 v16, v3

    .end local v3    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    array-length v3, v13

    if-ge v15, v3, :cond_eb

    .line 95
    aget-object v3, v13, v15

    move-object/from16 v17, v4

    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v17, "json":Lcom/badlogic/gdx/utils/Json;
    iget-object v4, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 96
    const/4 v3, 0x0

    move v14, v3

    .line 94
    :cond_e4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_d1

    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_eb
    move-object/from16 v17, v4

    .line 100
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v15    # "a":I
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    if-eqz v14, :cond_12f

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 102
    .local v3, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v3, v4, v11}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 104
    .end local v3    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    .end local v10    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "sOwners":Ljava/lang/String;
    .end local v13    # "sRes":[Ljava/lang/String;
    .end local v14    # "add":Z
    :cond_12f
    goto :goto_179

    .line 106
    .end local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v3, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_130
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 107
    .local v3, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_174} :catch_184

    goto :goto_179

    .line 85
    .end local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v3, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_175
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 110
    .end local v3    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v8    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "tempData":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    .restart local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    :goto_179
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_55

    .line 82
    .end local v16    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v3    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_17f
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 113
    .end local v3    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v5    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    .end local v6    # "tCivID":I
    goto :goto_188

    .line 111
    :catch_184
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_188
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 57
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 58
    return-void
.end method
