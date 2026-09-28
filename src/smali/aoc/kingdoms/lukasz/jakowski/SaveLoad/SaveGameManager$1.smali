.class Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->autosave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 13

    .line 102
    const-string v0, "Autosave1"

    .line 107
    .local v0, "saveName":Ljava/lang/String;
    :try_start_2
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_12b

    const-string v2, "AoH.txt"

    const-string v3, "saves/"

    if-eqz v1, :cond_2c

    .line 108
    :try_start_a
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_75

    .line 110
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->readLocalFiles()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 111
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .restart local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_75

    .line 114
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_54
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 117
    .restart local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_75
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 118
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "tempTags":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v4, "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_90
    array-length v6, v2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_91} :catch_12b

    const-string v7, "Autosave"

    if-ge v5, v6, :cond_b1

    .line 124
    :try_start_95
    aget-object v6, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_ae

    .line 125
    aget-object v6, v2, v5

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Details(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    move-result-object v6

    .line 127
    .local v6, "readSD":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    if-eqz v6, :cond_ae

    .line 128
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    aget-object v7, v2, v5

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "readSD":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    :cond_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 134
    .end local v5    # "i":I
    :cond_b1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_SLOTS:I

    if-ge v5, v6, :cond_102

    .line 135
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_bc
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_SLOTS:I

    if-ge v5, v6, :cond_101

    .line 136
    const/4 v6, 0x1

    .line 138
    .local v6, "freeSlot":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c4
    array-length v9, v2

    if-ge v8, v9, :cond_e7

    .line 139
    aget-object v9, v2, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    .line 140
    const/4 v6, 0x0

    .line 141
    goto :goto_e7

    .line 138
    :cond_e4
    add-int/lit8 v8, v8, 0x1

    goto :goto_c4

    .line 145
    .end local v8    # "i":I
    :cond_e7
    :goto_e7
    if-eqz v6, :cond_fe

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 147
    goto :goto_101

    .line 135
    .end local v6    # "freeSlot":Z
    :cond_fe
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .end local v5    # "a":I
    :cond_101
    :goto_101
    goto :goto_12a

    .line 152
    :cond_102
    const/4 v5, 0x0

    .line 153
    .local v5, "bestID":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_109
    if-lez v6, :cond_123

    .line 154
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-wide v7, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->time:J

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-wide v9, v9, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->time:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_120

    .line 155
    move v5, v6

    .line 153
    :cond_120
    add-int/lit8 v6, v6, -0x1

    goto :goto_109

    .line 159
    .end local v6    # "i":I
    :cond_123
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_129} :catch_12b

    move-object v0, v6

    .line 164
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "tempTags":[Ljava/lang/String;
    .end local v3    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .end local v4    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "bestID":I
    :cond_12a
    :goto_12a
    goto :goto_12f

    .line 162
    :catch_12b
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 167
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_12f
    sput-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveKey:Ljava/lang/String;

    .line 169
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->LOAD_SAVE_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 170
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Saving"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->save:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 171
    return-void
.end method
