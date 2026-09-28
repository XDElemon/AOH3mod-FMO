.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMap_CivSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;
    }
.end annotation


# static fields
.field public static selectMode:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;


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

    .line 45
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CIV:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->selectMode:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 30

    .line 67
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->sCivsTag:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 70
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v1, 0x2

    .line 71
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v13, v1, v2

    .line 73
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v14, v1, v2

    .line 74
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v15, v1, v2

    .line 76
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 77
    .local v16, "buttonYPadding":I
    move/from16 v17, v16

    .line 79
    .local v17, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v1, 0x4

    .line 81
    .local v18, "textPosX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    .line 85
    const/16 v19, 0x1

    sput-boolean v19, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    .line 87
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_7a

    .line 88
    new-instance v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$1;

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

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 112
    .end local v21    # "menuX":I
    .restart local v14    # "menuX":I
    :cond_7a
    move/from16 v21, v14

    .end local v14    # "menuX":I
    .restart local v21    # "menuX":I
    new-instance v14, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$2;

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

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_95
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

    .line 132
    new-instance v14, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$3;

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

    move/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
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

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 146
    .local v14, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 148
    .local v1, "tagsSPLITED":[Ljava/lang/String;
    const-string v2, "game/Civilizations.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    .line 149
    .local v20, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "tempT":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 152
    .end local v1    # "tagsSPLITED":[Ljava/lang/String;
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ee
    array-length v2, v8

    if-ge v1, v2, :cond_f9

    .line 153
    aget-object v2, v8, v1

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_ee

    .line 156
    .end local v1    # "i":I
    :cond_f9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 157
    .local v7, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 159
    .local v6, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_1e3

    .line 161
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10c
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    const-string v3, ".json"

    const-string v5, "civilizations/"

    const-string v4, "game/"

    if-ge v1, v2, :cond_18c

    .line 162
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v2, :cond_146

    .line 163
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    move-object/from16 v23, v8

    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .local v23, "tagsSPLITED":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v9

    .end local v9    # "tempT":Ljava/lang/String;
    .local v24, "tempT":Ljava/lang/String;
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    goto :goto_171

    .line 165
    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v23    # "tagsSPLITED":[Ljava/lang/String;
    .end local v24    # "tempT":Ljava/lang/String;
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "tempT":Ljava/lang/String;
    :cond_146
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "tempT":Ljava/lang/String;
    .restart local v23    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v24    # "tempT":Ljava/lang/String;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 168
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_171
    array-length v4, v2

    const/4 v5, 0x0

    :goto_173
    if-ge v5, v4, :cond_185

    aget-object v8, v2, v5

    .line 169
    .local v8, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v8    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_173

    .line 161
    :cond_185
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    goto :goto_10c

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v23    # "tagsSPLITED":[Ljava/lang/String;
    .end local v24    # "tempT":Ljava/lang/String;
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "tempT":Ljava/lang/String;
    :cond_18c
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 173
    .end local v1    # "i":I
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "tempT":Ljava/lang/String;
    .restart local v23    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v24    # "tempT":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_191
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v1, v2, :cond_1e7

    .line 174
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v9}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 176
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v8, v2

    const/4 v9, 0x0

    :goto_1c8
    if-ge v9, v8, :cond_1de

    aget-object v25, v2, v9

    .line 177
    .local v25, "file":Lcom/badlogic/gdx/files/FileHandle;
    move-object/from16 v26, v2

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v26, "files":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v25    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v26

    goto :goto_1c8

    .line 173
    .end local v26    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_1de
    move-object/from16 v26, v2

    .end local v2    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v26    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_191

    .line 159
    .end local v1    # "i":I
    .end local v23    # "tagsSPLITED":[Ljava/lang/String;
    .end local v24    # "tempT":Ljava/lang/String;
    .end local v26    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v8    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "tempT":Ljava/lang/String;
    :cond_1e3
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 182
    .end local v8    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "tempT":Ljava/lang/String;
    .restart local v23    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v24    # "tempT":Ljava/lang/String;
    :cond_1e7
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22e

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_1f4
    if-ge v0, v1, :cond_22d

    .line 184
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

    if-ltz v2, :cond_22a

    .line 185
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_22a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f4

    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_22d
    goto :goto_250

    .line 191
    :cond_22e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_233
    if-ge v0, v1, :cond_250

    .line 192
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_233

    .line 198
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_250
    :goto_250
    :try_start_250
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_331

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "toAddID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_258
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_25c} :catch_338

    if-ge v1, v2, :cond_27b

    .line 202
    :try_start_25e
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_26e} :catch_274

    if-eqz v2, :cond_271

    .line 203
    move v0, v1

    .line 201
    :cond_271
    add-int/lit8 v1, v1, 0x1

    goto :goto_258

    .line 263
    .end local v0    # "toAddID":I
    .end local v1    # "i":I
    :catch_274
    move-exception v0

    move-object v9, v6

    move-object/from16 v25, v14

    move-object v14, v7

    goto/16 :goto_33d

    .line 207
    .restart local v0    # "toAddID":I
    :cond_27b
    :try_start_27b
    new-instance v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$4;

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

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v12, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_2bb} :catch_338

    sub-int v8, v1, v2

    const/16 v22, 0x1

    const/4 v4, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v27, v6

    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v12

    move-object/from16 v28, v7

    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v7, v17

    move-object/from16 v25, v14

    move-object v14, v9

    .end local v14    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v9, v22

    :try_start_2cf
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v14, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$5;

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

    move/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
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

    .line 258
    iget-object v1, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_30c} :catch_32b

    move-object/from16 v9, v27

    .end local v27    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_30e
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_317} :catch_327

    .line 260
    move-object/from16 v14, v28

    .end local v28    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_319
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_319 .. :try_end_31f} :catch_325

    .line 262
    move-object v6, v9

    move-object v7, v14

    move-object/from16 v14, v25

    .end local v0    # "toAddID":I
    goto/16 :goto_250

    .line 263
    :catch_325
    move-exception v0

    goto :goto_33d

    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_327
    move-exception v0

    move-object/from16 v14, v28

    .end local v28    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_33d

    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_32b
    move-exception v0

    move-object/from16 v9, v27

    move-object/from16 v14, v28

    .end local v27    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_33d

    .line 265
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_331
    move-object v9, v6

    move-object/from16 v25, v14

    move-object v14, v7

    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v0, v17

    goto :goto_342

    .line 263
    .end local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_338
    move-exception v0

    move-object v9, v6

    move-object/from16 v25, v14

    move-object v14, v7

    .line 264
    .end local v6    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v9    # "lTempTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "lTempNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "tCivsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_33d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v0, v17

    .line 267
    .end local v17    # "buttonY":I
    .local v0, "buttonY":I
    :goto_342
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

    move/from16 v3, v21

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 268
    return-void
.end method

.method private final getFlagID(I)I
    .registers 4
    .param p1, "nCivTagID"    # I

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 427
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 428
    return v0

    .line 426
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .registers 5
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 417
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

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

    .line 418
    return v0

    .line 416
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private final loadFlag(I)V
    .registers 10
    .param p1, "nCivTagID"    # I

    .line 438
    const-string v0, ".png"

    const-string v1, "gfx/flags/"

    :try_start_4
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_36} :catch_37

    .line 441
    goto :goto_70

    .line 439
    :catch_37
    move-exception v2

    .line 440
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_38
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v0}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_38 .. :try_end_70} :catch_71

    .line 444
    .end local v2    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_70
    goto :goto_89

    .line 442
    :catch_71
    move-exception v0

    .line 443
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "gfx/flags/ran.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v0    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_89
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 7
    .param p1, "nMenuElementID"    # I

    .line 310
    const/4 v0, 0x2

    if-ge p1, v0, :cond_7

    .line 313
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    goto :goto_78

    .line 318
    :cond_7
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_3e

    .line 321
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$6;->$SwitchMap$aoc$kingdoms$lukasz$menusMapEditor$EditorMap_CivSelect$SelectMode:[I

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->selectMode:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    goto :goto_3a

    .line 327
    :pswitch_19
    sget-object v1, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    div-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->addClaimant(Ljava/lang/String;)V

    goto :goto_3a

    .line 323
    :pswitch_2a
    sget-object v1, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    div-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->FormableCivTag:Ljava/lang/String;

    .line 324
    nop

    .line 332
    :goto_3a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->back()V

    goto :goto_78

    .line 350
    :cond_3e
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    .local v0, "tempCivTag":Ljava/lang/String;
    :try_start_49
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    .line 355
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

    .line 356
    sget-object v2, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v2}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    :try_end_69
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_49 .. :try_end_69} :catch_6a

    .line 359
    .end local v1    # "nCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_78

    .line 357
    :catch_6a
    move-exception v1

    .line 358
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NoData"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 362
    .end local v0    # "tempCivTag":Ljava/lang/String;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_19
    .end packed-switch
.end method

.method public final back()V
    .registers 3

    .line 53
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$6;->$SwitchMap$aoc$kingdoms$lukasz$menusMapEditor$EditorMap_CivSelect$SelectMode:[I

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->selectMode:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 59
    return-void

    .line 55
    :pswitch_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_FORMABLE_CIV:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 56
    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public disposeData()V
    .registers 3

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 460
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 465
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 466
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 279
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 284
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_b8

    .line 285
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 286
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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

    .line 287
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

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

    .line 284
    :cond_b4
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1e

    .end local v0    # "i":I
    :cond_b8
    goto :goto_bc

    .line 292
    :catch_b9
    move-exception v0

    goto :goto_bd

    .line 290
    :catch_bb
    move-exception v0

    .line 294
    :goto_bc
    nop

    .line 296
    :goto_bd
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 297
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

    .line 273
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 274
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 275
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 451
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 453
    if-nez p1, :cond_8

    .line 454
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->disposeData()V

    .line 456
    :cond_8
    return-void
.end method

.method public updateLanguage()V
    .registers 5

    .line 303
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 305
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "SelectCivilization"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

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

    .line 306
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 6

    .line 368
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 370
    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 371
    const/4 v0, 0x2

    .line 374
    .local v0, "tempRandomButton":I
    move v2, v0

    .local v2, "i":I
    :goto_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElementsSize()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 375
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getIsLoaded(Ljava/lang/String;)I

    move-result v3

    .line 377
    .local v3, "tempTagID":I
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 378
    if-gez v3, :cond_54

    .line 379
    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->loadFlag(I)V

    goto :goto_54

    .line 383
    :cond_34
    if-ltz v3, :cond_54

    .line 384
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 385
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v4, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 387
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 374
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 391
    .end local v0    # "tempRandomButton":I
    .end local v2    # "i":I
    .end local v3    # "tempTagID":I
    :cond_57
    goto :goto_9e

    .line 395
    :cond_58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_59
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElementsSize()I

    move-result v2

    if-ge v0, v2, :cond_9e

    .line 396
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, "tempTagID":I
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 399
    if-gez v2, :cond_9b

    .line 400
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->loadFlag(I)V

    goto :goto_9b

    .line 404
    :cond_7b
    if-ltz v2, :cond_9b

    .line 405
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 406
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 395
    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 413
    .end local v0    # "i":I
    .end local v2    # "tempTagID":I
    :cond_9e
    :goto_9e
    return-void
.end method
