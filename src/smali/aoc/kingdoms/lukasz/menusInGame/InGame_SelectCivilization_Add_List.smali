.class public Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_SelectCivilization_Add_List.java"


# static fields
.field public static selectedCivTAG:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->selectedCivTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 34

    .line 54
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->sCivsTag:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 57
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v1, 0x2

    .line 58
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v13, v1, v2

    .line 60
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v14, v1, v2

    .line 61
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v15, v1, v2

    .line 63
    .local v15, "menuY":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 64
    .local v16, "buttonYPadding":I
    move/from16 v17, v16

    .line 66
    .local v17, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v1, 0x4

    .line 68
    .local v18, "textPosX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    .line 82
    const/16 v19, 0x1

    sput-boolean v19, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    .line 84
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_78

    .line 85
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$1;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int v8, v1, v2

    const/16 v20, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v12

    move/from16 v7, v16

    move/from16 v21, v14

    move-object v14, v9

    .end local v14    # "menuX":I
    .local v21, "menuX":I
    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 103
    .end local v21    # "menuX":I
    .restart local v14    # "menuX":I
    :cond_78
    move/from16 v21, v14

    .end local v14    # "menuX":I
    .restart local v21    # "menuX":I
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$2;

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

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_93
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

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 119
    .local v14, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    const-string v2, "game/Civilizations.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    .line 122
    .local v20, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    .end local v1    # "tagsSPLITED":[Ljava/lang/String;
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_bf
    array-length v2, v8

    if-ge v1, v2, :cond_ca

    .line 126
    aget-object v2, v8, v1

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 129
    .end local v1    # "i":I
    :cond_ca
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_198

    .line 131
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    const-string v3, ".json"

    const-string v5, "civilizations/"

    const-string v6, "game/"

    if-ge v1, v2, :cond_145

    .line 132
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v2, :cond_107

    .line 133
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
    goto :goto_12e

    .line 135
    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_107
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

    .line 138
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_12e
    array-length v4, v2

    const/4 v5, 0x0

    :goto_130
    if-ge v5, v4, :cond_142

    aget-object v6, v2, v5

    .line 139
    .local v6, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v6    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    .line 131
    :cond_142
    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    .line 143
    .end local v1    # "i":I
    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_145
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_146
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v1, v2, :cond_198

    .line 144
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

    .line 146
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v4, v2

    const/4 v7, 0x0

    :goto_17d
    if-ge v7, v4, :cond_193

    aget-object v23, v2, v7

    .line 147
    .local v23, "file":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v24, v2

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v24, "files":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v23    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v24

    goto :goto_17d

    .line 143
    .end local v24    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_193
    move-object/from16 v24, v2

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v24    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_146

    .line 152
    .end local v1    # "i":I
    .end local v24    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 153
    .local v7, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 155
    .local v6, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_1b1
    if-ge v0, v1, :cond_1ea

    .line 157
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

    if-ltz v2, :cond_1e7

    .line 158
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1e7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b1

    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1ea
    goto :goto_20d

    .line 164
    :cond_1eb
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_1f0
    if-ge v0, v1, :cond_20d

    .line 165
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f0

    .line 170
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_20d
    :goto_20d
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const-string v5, "]"

    const-string v4, " ["

    if-ltz v0, :cond_2fa

    .line 171
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSuggestedCivs(I)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "suggestedCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_21d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2ea

    .line 174
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v7

    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, v23

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v7, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v23, v12, 0x2

    sub-int v1, v1, v23

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v23, v1, v23

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object v1, v2

    move-object/from16 v27, v2

    move-object/from16 v2, p0

    move/from16 v28, v3

    .end local v3    # "i":I
    .local v28, "i":I
    move-object v3, v6

    move-object v6, v4

    move/from16 v4, v26

    move-object/from16 v29, v5

    move v5, v7

    move-object/from16 v30, v6

    move-object/from16 v7, v22

    .end local v22    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v12

    move-object/from16 v31, v7

    move-object/from16 v22, v24

    .end local v7    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v31, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v7, v17

    move-object/from16 v24, v8

    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v24, "tagsSPLITED":[Ljava/lang/String;
    move/from16 v8, v23

    move-object/from16 v23, v9

    .end local v9    # "tempT":Ljava/lang/String;
    .local v23, "tempT":Ljava/lang/String;
    move/from16 v9, v25

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v1, v27

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$4;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    add-int/2addr v1, v12

    mul-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const-string v3, ""

    const/4 v4, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v26, v14

    move-object v14, v9

    .end local v14    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v9, v25

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
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

    .line 225
    iget-object v1, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    move/from16 v2, v28

    .end local v28    # "i":I
    .local v2, "i":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v7, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v26

    move-object/from16 v5, v29

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_21d

    .end local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "tempT":Ljava/lang/String;
    .end local v24    # "tagsSPLITED":[Ljava/lang/String;
    .end local v26    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "tempT":Ljava/lang/String;
    .restart local v14    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2ea
    move v2, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v31, v6

    move-object/from16 v22, v7

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v14

    .end local v3    # "i":I
    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "tempT":Ljava/lang/String;
    .end local v14    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "tempT":Ljava/lang/String;
    .restart local v24    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v26    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_308

    .line 170
    .end local v0    # "suggestedCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "tempT":Ljava/lang/String;
    .end local v24    # "tagsSPLITED":[Ljava/lang/String;
    .end local v26    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "tempT":Ljava/lang/String;
    .restart local v14    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2fa
    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v31, v6

    move-object/from16 v22, v7

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v14

    .line 231
    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "tempT":Ljava/lang/String;
    .end local v14    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "tempT":Ljava/lang/String;
    .restart local v24    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v26    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_308
    :try_start_308
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3fe

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "toAddID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_310
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2
    :try_end_314
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_314} :catch_407

    if-ge v1, v2, :cond_337

    .line 235
    move-object/from16 v14, v22

    .end local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_318
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_328} :catch_330

    if-eqz v2, :cond_32b

    .line 236
    move v0, v1

    .line 234
    :cond_32b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v22, v14

    goto :goto_310

    .line 296
    .end local v0    # "toAddID":I
    .end local v1    # "i":I
    :catch_330
    move-exception v0

    move/from16 v22, v15

    move-object/from16 v9, v31

    goto/16 :goto_40e

    .line 234
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "toAddID":I
    .restart local v1    # "i":I
    .restart local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_337
    move-object/from16 v14, v22

    .line 240
    .end local v1    # "i":I
    .end local v22    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_339
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    :try_end_342
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_342} :catch_3f8

    move-object/from16 v8, v31

    .end local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_344
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, v30

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_37b} :catch_3f3

    sub-int v22, v1, v2

    const/16 v25, 0x1

    const/4 v4, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v27, v6

    move v6, v12

    move-object/from16 v28, v7

    move/from16 v7, v17

    move-object/from16 v32, v8

    .end local v8    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v32, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v8, v22

    move/from16 v22, v15

    move-object v15, v9

    .end local v15    # "menuY":I
    .local v22, "menuY":I
    move/from16 v9, v25

    :try_start_393
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$6;

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

    const/4 v9, 0x1

    const/4 v4, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
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

    .line 291
    iget-object v1, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_393 .. :try_end_3d0} :catch_3ef

    move-object/from16 v9, v32

    .end local v32    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3d2
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 294
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3e1
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_3e1} :catch_3ed

    .line 295
    move-object/from16 v31, v9

    move/from16 v15, v22

    move-object/from16 v29, v27

    move-object/from16 v30, v28

    move-object/from16 v22, v14

    .end local v0    # "toAddID":I
    goto/16 :goto_308

    .line 296
    :catch_3ed
    move-exception v0

    goto :goto_40e

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3ef
    move-exception v0

    move-object/from16 v9, v32

    .end local v32    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_40e

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "menuY":I
    .restart local v8    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "menuY":I
    :catch_3f3
    move-exception v0

    move-object v9, v8

    move/from16 v22, v15

    .end local v8    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "menuY":I
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "menuY":I
    goto :goto_40e

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "menuY":I
    .restart local v15    # "menuY":I
    .restart local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3f8
    move-exception v0

    move/from16 v22, v15

    move-object/from16 v9, v31

    .end local v15    # "menuY":I
    .end local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "menuY":I
    goto :goto_40e

    .line 298
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "menuY":I
    .local v22, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3fe
    move-object/from16 v14, v22

    move-object/from16 v9, v31

    move/from16 v22, v15

    .end local v15    # "menuY":I
    .end local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "menuY":I
    move/from16 v0, v17

    goto :goto_413

    .line 296
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "menuY":I
    .local v22, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_407
    move-exception v0

    move-object/from16 v14, v22

    move-object/from16 v9, v31

    move/from16 v22, v15

    .line 297
    .end local v15    # "menuY":I
    .end local v31    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "menuY":I
    :goto_40e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v0, v17

    .line 310
    .end local v17    # "buttonY":I
    .local v0, "buttonY":I
    :goto_413
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, ""

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v3, v2

    move v6, v13

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v22

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v22

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

    move/from16 v3, v21

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 311
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"    # I

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 433
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 434
    return v0

    .line 432
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 423
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 424
    return v0

    .line 422
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    .end local v0    # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 10
    .param p1, "nCivTagID"    # I

    .line 444
    const-string v0, "gfx/flags/ran.png"

    const-string v1, "mods/GameCivs/gfx/flagsH/"

    const-string v2, "gfx/flagsXH/"

    const-string v3, "gfx/flags/"

    const-string v4, ".png"

    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 445
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v5, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_264

    .line 447
    :cond_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 448
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v5, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_264

    .line 450
    :cond_cc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 451
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v5, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_264

    .line 453
    :cond_127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 454
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v5, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_264

    .line 456
    :cond_18e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 457
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_264

    .line 459
    :cond_1e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_24f

    .line 460
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_264

    .line 463
    :cond_24f
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_264} :catch_265

    .line 467
    :goto_264
    goto :goto_27b

    .line 465
    :catch_265
    move-exception v1

    .line 466
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_27b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 11
    .param p1, "nMenuElementID"    # I

    .line 351
    if-nez p1, :cond_15

    .line 352
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_IN_GAME_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    .line 353
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCivilizationsList()V

    .line 355
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    goto/16 :goto_b2

    .line 360
    :cond_15
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_77

    .line 361
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "tempCivTag":Ljava/lang/String;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 364
    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->selectedCivTAG:Ljava/lang/String;

    .line 365
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 367
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->selectedCivTAG:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, "civID":I
    if-lez v1, :cond_76

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-nez v2, :cond_76

    .line 370
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->buildData(II)V

    .line 371
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->buildData_MapMode(II)V

    .line 372
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ReleaseAVassal()V

    .line 374
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 376
    .end local v1    # "civID":I
    :cond_76
    goto :goto_b2

    .line 379
    .end local v0    # "tempCivTag":Ljava/lang/String;
    :cond_77
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .restart local v0    # "tempCivTag":Ljava/lang/String;
    :try_start_83
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    .line 384
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

    .line 385
    sget-object v2, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v2}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    :try_end_a3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_83 .. :try_end_a3} :catch_a4

    .line 388
    .end local v1    # "nCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_b2

    .line 386
    :catch_a4
    move-exception v1

    .line 387
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NoData"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 391
    .end local v0    # "tempCivTag":Ljava/lang/String;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_b2
    :goto_b2
    return-void
.end method

.method public disposeData()V
    .registers 3

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 484
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 489
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 490
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 322
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 327
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_b8

    .line 328
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 329
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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

    .line 330
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_b4} :catch_b9

    .line 327
    :cond_b4
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1e

    .line 335
    .end local v0    # "i":I
    :cond_b8
    goto :goto_ba

    .line 333
    :catch_b9
    move-exception v0

    .line 337
    :goto_ba
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 338
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

    .line 316
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 317
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 318
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 475
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 477
    if-nez p1, :cond_8

    .line 478
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->disposeData()V

    .line 480
    :cond_8
    return-void
.end method

.method public updateLanguage()V
    .registers 5

    .line 344
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 346
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "AddCivilization"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

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

    .line 347
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 397
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 399
    const/4 v0, 0x1

    .line 402
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElementsSize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 403
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lCivsTags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, "tempTagID":I
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 406
    if-gez v2, :cond_50

    .line 407
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->loadFlag(I)V

    goto :goto_50

    .line 411
    :cond_2f
    if-ltz v2, :cond_50

    .line 412
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 413
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 415
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 402
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 419
    .end local v1    # "i":I
    .end local v2    # "tempTagID":I
    :cond_53
    return-void
.end method
