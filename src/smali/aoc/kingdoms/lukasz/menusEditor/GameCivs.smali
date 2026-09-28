.class public Laoc/kingdoms/lukasz/menusEditor/GameCivs;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "GameCivs.java"


# static fields
.field public static chosen_AlphabetCharachter:Ljava/lang/String;

.field public static sSearch:Ljava/lang/String;


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    .line 46
    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 29

    .line 48
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 51
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    .line 52
    .local v12, "paddingLeft":I
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 54
    .local v13, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v14, v0, 0xa

    .line 55
    .local v14, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v15, v0, 0xa

    .line 57
    .local v15, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x2

    .line 58
    .local v16, "buttonYPadding":I
    move/from16 v0, v16

    .line 60
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x4

    .line 62
    .local v17, "textPosX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    .line 64
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/GameCivs$1;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int v8, v1, v2

    const/16 v18, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v12

    move/from16 v7, v16

    move/from16 v19, v14

    move-object v14, v9

    .end local v14    # "menuX":I
    .local v19, "menuX":I
    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusEditor/GameCivs$1;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivs;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
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

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    const-string v2, "game/Civilizations.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    .line 80
    .local v14, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 83
    .end local v1    # "tagsSPLITED":[Ljava/lang/String;
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 84
    .local v7, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 86
    .local v6, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 88
    .local v5, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_90
    array-length v2, v8

    if-ge v1, v2, :cond_9b

    .line 89
    aget-object v2, v8, v1

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 92
    .end local v1    # "i":I
    :cond_9b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_184

    .line 94
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    const-string v4, ""

    const-string v2, ".json"

    move/from16 v20, v0

    .end local v0    # "buttonY":I
    .local v20, "buttonY":I
    const-string v0, "civilizations/"

    move-object/from16 v21, v8

    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v21, "tagsSPLITED":[Ljava/lang/String;
    const-string v8, "game/"

    if-ge v1, v3, :cond_12d

    .line 95
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v3, :cond_e2

    .line 96
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    move-object/from16 v22, v9

    .end local v9    # "tempT":Ljava/lang/String;
    .local v22, "tempT":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v14

    .end local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v23, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_10d

    .line 98
    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v22    # "tempT":Ljava/lang/String;
    .end local v23    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v9    # "tempT":Ljava/lang/String;
    .restart local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_e2
    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .end local v9    # "tempT":Ljava/lang/String;
    .end local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v22    # "tempT":Ljava/lang/String;
    .restart local v23    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 101
    .restart local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_10d
    array-length v3, v0

    const/4 v8, 0x0

    :goto_10f
    if-ge v8, v3, :cond_121

    aget-object v9, v0, v8

    .line 102
    .local v9, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v9    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v8, v8, 0x1

    goto :goto_10f

    .line 94
    :cond_121
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v14, v23

    goto/16 :goto_a2

    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v22    # "tempT":Ljava/lang/String;
    .end local v23    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v9, "tempT":Ljava/lang/String;
    .restart local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_12d
    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 106
    .end local v1    # "i":I
    .end local v9    # "tempT":Ljava/lang/String;
    .end local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v22    # "tempT":Ljava/lang/String;
    .restart local v23    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_132
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v1, v3, :cond_18c

    .line 107
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v14}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 109
    .local v3, "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v9, v3

    const/4 v14, 0x0

    :goto_169
    if-ge v14, v9, :cond_17f

    aget-object v24, v3, v14

    .line 110
    .local v24, "file":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v24    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v25

    goto :goto_169

    .line 106
    :cond_17f
    move-object/from16 v25, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_132

    .line 92
    .end local v1    # "i":I
    .end local v3    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v20    # "buttonY":I
    .end local v21    # "tagsSPLITED":[Ljava/lang/String;
    .end local v22    # "tempT":Ljava/lang/String;
    .end local v23    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v0, "buttonY":I
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "tempT":Ljava/lang/String;
    .restart local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_184
    move/from16 v20, v0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 126
    .end local v0    # "buttonY":I
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "tempT":Ljava/lang/String;
    .end local v14    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v20    # "buttonY":I
    .restart local v21    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v22    # "tempT":Ljava/lang/String;
    .restart local v23    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_18c
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d3

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_199
    if-ge v0, v1, :cond_1d2

    .line 128
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-ltz v2, :cond_1cf

    .line 129
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_199

    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1d2
    goto :goto_239

    .line 134
    :cond_1d3
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_217

    .line 135
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_1e0
    if-ge v0, v1, :cond_216

    .line 136
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v2, v4, :cond_213

    .line 137
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e0

    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_216
    goto :goto_239

    .line 143
    :cond_217
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_21c
    if-ge v0, v1, :cond_239

    .line 144
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_21c

    .line 150
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_239
    :goto_239
    :try_start_239
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31c

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "toAddID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_241
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_245} :catch_321

    if-ge v1, v2, :cond_264

    .line 154
    :try_start_247
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_257} :catch_25d

    if-eqz v2, :cond_25a

    .line 155
    move v0, v1

    .line 153
    :cond_25a
    add-int/lit8 v1, v1, 0x1

    goto :goto_241

    .line 220
    .end local v0    # "toAddID":I
    .end local v1    # "i":I
    :catch_25d
    move-exception v0

    move-object/from16 v24, v5

    move-object v9, v6

    move-object v14, v7

    goto/16 :goto_326

    .line 159
    .restart local v0    # "toAddID":I
    :cond_264
    :try_start_264
    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/GameCivs$2;

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

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v8, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_2a4} :catch_321

    sub-int v9, v1, v2

    const/16 v18, 0x1

    const/4 v4, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v24, v5

    .end local v5    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v5, v8

    move-object v8, v6

    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v12

    move-object/from16 v26, v7

    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v7, v20

    move-object/from16 v27, v8

    .end local v8    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v8, v9

    move/from16 v9, v18

    :try_start_2ba
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusEditor/GameCivs$2;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivs;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/GameCivs$3;

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

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v7, v20

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusEditor/GameCivs$3;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivs;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    add-int v20, v20, v1

    .line 215
    iget-object v1, v10, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2f7} :catch_316

    move-object/from16 v9, v27

    .end local v27    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2f9
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_302} :catch_312

    .line 217
    move-object/from16 v14, v26

    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_304
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_30a} :catch_310

    .line 219
    move-object v6, v9

    move-object v7, v14

    move-object/from16 v5, v24

    .end local v0    # "toAddID":I
    goto/16 :goto_239

    .line 220
    :catch_310
    move-exception v0

    goto :goto_326

    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_312
    move-exception v0

    move-object/from16 v14, v26

    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_326

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_316
    move-exception v0

    move-object/from16 v14, v26

    move-object/from16 v9, v27

    .end local v26    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_326

    .line 222
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_31c
    move-object/from16 v24, v5

    move-object v9, v6

    move-object v14, v7

    .end local v5    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_329

    .line 220
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_321
    move-exception v0

    move-object/from16 v24, v5

    move-object v9, v6

    move-object v14, v7

    .line 221
    .end local v5    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_326
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 224
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_329
    new-instance v6, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v6

    move v3, v13

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v15

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v13

    sub-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, v19

    move v6, v0

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 225
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"    # I

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 340
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 341
    return v0

    .line 339
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 330
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 331
    return v0

    .line 329
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 11
    .param p1, "nCivTagID"    # I

    .line 352
    const-string v0, "gfx/flagsXH/"

    const-string v1, "gfx/flags/"

    const-string v2, ".png"

    :try_start_6
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

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

    .line 355
    goto :goto_72

    .line 353
    :catch_39
    move-exception v3

    .line 354
    .local v3, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_3a
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

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

    .line 362
    .end local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_72
    goto :goto_e0

    .line 356
    :catch_73
    move-exception v1

    .line 358
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_74
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

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

    .line 361
    goto :goto_e0

    .line 359
    :catch_a7
    move-exception v3

    .line 360
    .restart local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_a8
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

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

    .line 365
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v3    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_e0
    goto :goto_f9

    .line 363
    :catch_e1
    move-exception v0

    .line 364
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "gfx/flags/ran.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v0    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_f9
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 7
    .param p1, "nMenuElementID"    # I

    .line 271
    if-nez p1, :cond_6

    .line 272
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    goto :goto_64

    .line 277
    :cond_6
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 278
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "tempCivTag":Ljava/lang/String;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    .line 282
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    .line 283
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_64

    .line 286
    .end local v0    # "tempCivTag":Ljava/lang/String;
    :cond_29
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .restart local v0    # "tempCivTag":Ljava/lang/String;
    :try_start_35
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    .line 291
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

    .line 292
    sget-object v2, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v2}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    :try_end_55
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_35 .. :try_end_55} :catch_56

    .line 295
    .end local v1    # "nCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_64

    .line 293
    :catch_56
    move-exception v1

    .line 294
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NoData"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 298
    .end local v0    # "tempCivTag":Ljava/lang/String;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_64
    return-void
.end method

.method public disposeData()V
    .registers 3

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 381
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 236
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 241
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_c1

    .line 242
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 243
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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

    .line 244
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextPos()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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
    :try_end_bd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_bd} :catch_c4
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_bd} :catch_c2

    .line 241
    :cond_bd
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1e

    .end local v0    # "i":I
    :cond_c1
    goto :goto_c5

    .line 249
    :catch_c2
    move-exception v0

    goto :goto_c6

    .line 247
    :catch_c4
    move-exception v0

    .line 251
    :goto_c5
    nop

    .line 253
    :goto_c6
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 254
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

    .line 230
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 231
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 232
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 372
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 374
    if-nez p1, :cond_8

    .line 375
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->disposeData()V

    .line 377
    :cond_8
    return-void
.end method

.method public updateLanguage()V
    .registers 8

    .line 260
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 262
    const-string v0, "game/Civilizations.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 263
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "tagsSPLITED":[Ljava/lang/String;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "GameCivilizations"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 304
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 306
    const/4 v0, 0x1

    .line 309
    .local v0, "tempRandomButton":I
    move v1, v0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElementsSize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 310
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lCivsTags:Ljava/util/List;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 312
    .local v2, "tempTagID":I
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 313
    if-gez v2, :cond_50

    .line 314
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->loadFlag(I)V

    goto :goto_50

    .line 318
    :cond_2f
    if-ltz v2, :cond_50

    .line 319
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 320
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 322
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 326
    .end local v1    # "i":I
    .end local v2    # "tempTagID":I
    :cond_53
    return-void
.end method
