.class public Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_SaveGame.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static sSaveName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->lTime:J

    .line 42
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->sSaveName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 29
    .param p1, "visible"    # Z

    .line 44
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 47
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v20, v0, v1

    .line 48
    .local v20, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v21

    .line 50
    .local v21, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    .line 52
    .local v1, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v0, 0x2

    .line 53
    .local v22, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v23, v0, v2

    .line 55
    .local v23, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    .line 57
    .local v0, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v24, v2, v3

    .line 58
    .local v24, "buttonX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 60
    .local v25, "buttonH":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const-string v8, " "

    const-string v4, "_"

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ";"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "."

    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate_Simple()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->sSaveName:Ljava/lang/String;

    .line 63
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SaveName"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v3, 0x2

    mul-int/lit8 v3, v20, 0x2

    sub-int v18, v1, v3

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v11, v2

    move-object/from16 v12, p0

    move/from16 v16, v20

    move/from16 v17, v0

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 76
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Cancel"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v20, 0x2

    sub-int v3, v1, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    div-int/lit8 v18, v3, 0x2

    const/16 v19, 0x1

    const/4 v15, -0x1

    move-object v11, v2

    move/from16 v17, v0

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "SaveTheGame"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v20, v3

    mul-int/lit8 v4, v20, 0x2

    sub-int v4, v1, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v16, v3, v4

    mul-int/lit8 v3, v20, 0x2

    sub-int v3, v1, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    div-int/lit8 v18, v3, 0x2

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 101
    .end local v0    # "buttonY":I
    .local v2, "buttonY":I
    :try_start_166
    invoke-static {}, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->disposeData()V

    .line 105
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16b} :catch_323

    const-string v3, "AoH.txt"

    const-string v4, "saves/"

    if-eqz v0, :cond_193

    .line 106
    :try_start_171
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1dc

    .line 108
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_193
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->readLocalFiles()Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 109
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1dc

    .line 112
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1bb
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 115
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_1dc
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_31f

    .line 116
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 118
    .local v11, "tempTags":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 119
    .local v12, "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 122
    .local v13, "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f8
    array-length v4, v11

    if-ge v3, v4, :cond_20e

    .line 123
    aget-object v4, v11, v3

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Details(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    move-result-object v4

    .line 125
    .local v4, "readSD":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    if-eqz v4, :cond_20b

    .line 126
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    aget-object v5, v11, v3

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v4    # "readSD":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    :cond_20b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f8

    .line 131
    .end local v3    # "i":I
    :cond_20e
    :goto_20e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_253

    .line 132
    const/4 v3, 0x0

    .line 134
    .local v3, "bestID":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_21b
    if-lez v4, :cond_235

    .line 135
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-wide v5, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->time:J

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-wide v14, v14, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->time:J

    cmp-long v16, v5, v14

    if-lez v16, :cond_232

    .line 136
    move v3, v4

    .line 134
    :cond_232
    add-int/lit8 v4, v4, -0x1

    goto :goto_21b

    .line 140
    .end local v4    # "i":I
    :cond_235
    sget-object v4, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v4, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGamesKey:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v12, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    invoke-interface {v13, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    nop

    .end local v3    # "bestID":I
    goto :goto_20e

    .line 146
    :cond_253
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v4, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    :goto_25a
    if-ge v3, v4, :cond_26c

    .line 147
    sget-object v5, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->sCivTag:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->loadFlag(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_25a

    .line 151
    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_26c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    sget-object v4, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_273} :catch_323

    move v14, v4

    move v15, v2

    move v6, v3

    .end local v2    # "buttonY":I
    .end local v3    # "i":I
    .local v6, "i":I
    .local v14, "iSize":I
    .local v15, "buttonY":I
    :goto_276
    if-ge v6, v14, :cond_316

    .line 152
    :try_start_278
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$4;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->sCivTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    .line 153
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iMonth:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGames:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_2cd} :catch_312

    mul-int/lit8 v2, v20, 0x2

    sub-int v17, v1, v2

    move-object v2, v5

    move-object/from16 v3, p0

    move-object/from16 v18, v0

    move-object v0, v5

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v18, "file":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v5, v16

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    move/from16 v6, v20

    move-object/from16 v19, v11

    move-object v11, v7

    .end local v11    # "tempTags":[Ljava/lang/String;
    .local v19, "tempTags":[Ljava/lang/String;
    move v7, v15

    move-object/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v17, v9

    move/from16 v9, v16

    :try_start_2e9
    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 152
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_301
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_301} :catch_310

    add-int/2addr v0, v2

    add-int/2addr v15, v0

    .line 151
    add-int/lit8 v6, v16, 0x1

    move-object v7, v11

    move-object/from16 v9, v17

    move-object/from16 v0, v18

    move-object/from16 v11, v19

    move-object/from16 v8, v26

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_276

    .line 178
    .end local v6    # "i":I
    .end local v12    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .end local v13    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "iSize":I
    .end local v18    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v19    # "tempTags":[Ljava/lang/String;
    :catch_310
    move-exception v0

    goto :goto_314

    :catch_312
    move-exception v0

    move-object v11, v7

    :goto_314
    move v2, v15

    goto :goto_325

    .line 151
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v6    # "i":I
    .restart local v11    # "tempTags":[Ljava/lang/String;
    .restart local v12    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .restart local v13    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "iSize":I
    :cond_316
    move-object/from16 v18, v0

    move/from16 v16, v6

    move-object/from16 v19, v11

    move-object v11, v7

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6    # "i":I
    .end local v11    # "tempTags":[Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v18    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v19    # "tempTags":[Ljava/lang/String;
    move v2, v15

    goto :goto_322

    .line 115
    .end local v12    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .end local v13    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "iSize":I
    .end local v15    # "buttonY":I
    .end local v16    # "i":I
    .end local v18    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v19    # "tempTags":[Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "buttonY":I
    :cond_31f
    move-object/from16 v18, v0

    move-object v11, v7

    .line 180
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_322
    goto :goto_328

    .line 178
    :catch_323
    move-exception v0

    move-object v11, v7

    .line 179
    .local v0, "ex":Ljava/lang/Exception;
    :goto_325
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_328
    const/4 v0, 0x0

    .line 184
    .end local v2    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_32e
    if-ge v2, v3, :cond_36a

    .line 185
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_367

    .line 186
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move v0, v4

    .line 184
    :cond_367
    add-int/lit8 v2, v2, 0x1

    goto :goto_32e

    .line 190
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_36a
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 192
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v23

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 194
    .local v12, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v1, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$5;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v16, 0x1

    move-object v13, v2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;Ljava/lang/String;ZZI)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    const/4 v9, 0x1

    move v11, v1

    .end local v1    # "menuWidth":I
    .local v11, "menuWidth":I
    move-object/from16 v1, p0

    move/from16 v4, v23

    move v5, v11

    move v6, v12

    move-object v7, v10

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 203
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 226
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 227
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 207
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    .line 208
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 211
    :cond_24
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 212
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 213
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 215
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 216
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 220
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 221
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SaveGame;->lTime:J

    .line 222
    return-void
.end method
