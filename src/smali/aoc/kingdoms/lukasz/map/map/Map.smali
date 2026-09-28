.class public Laoc/kingdoms/lukasz/map/map/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/Map$Config;,
        Laoc/kingdoms/lukasz/map/map/Map$Maps;,
        Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;
    }
.end annotation


# static fields
.field public static drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;


# instance fields
.field public iActiveMapID:I

.field public lMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Map_Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 261
    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    .line 41
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    .line 42
    new-instance v2, Laoc/kingdoms/lukasz/map/map/Map$Config;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/Map$Config;-><init>()V

    .line 43
    .local v2, "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 44
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Laoc/kingdoms/lukasz/map/map/Map$Config;

    const-string v5, "Map"

    const-class v6, Laoc/kingdoms/lukasz/map/map/Map$Maps;

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    const-class v4, Laoc/kingdoms/lukasz/map/map/Map$Config;

    const-string v5, "map/Maps.json"

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map$Config;

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    .line 50
    # getter for: Laoc/kingdoms/lukasz/map/map/Map$Config;->Map:Ljava/util/ArrayList;
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/map/Map$Config;->access$000(Laoc/kingdoms/lukasz/map/map/Map$Config;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Config.json"

    const-string v7, "/"

    const-string v8, "map/"

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 51
    .local v5, "obj":Ljava/lang/Object;
    move-object v9, v5

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Map$Maps;

    .line 52
    .local v9, "tempMapFolder":Laoc/kingdoms/lukasz/map/map/Map$Maps;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Laoc/kingdoms/lukasz/map/map/Map$Maps;->Folder:Ljava/lang/String;
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/map/Map$Maps;->access$100(Laoc/kingdoms/lukasz/map/map/Map$Maps;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 53
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    # getter for: Laoc/kingdoms/lukasz/map/map/Map$Maps;->Folder:Ljava/lang/String;
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/map/Map$Maps;->access$100(Laoc/kingdoms/lukasz/map/map/Map$Maps;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Laoc/kingdoms/lukasz/map/map/Map_Data;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v9    # "tempMapFolder":Laoc/kingdoms/lukasz/map/map/Map$Maps;
    :cond_87
    goto :goto_3f

    .line 58
    :cond_88
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_243

    .line 61
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8f
    sget v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    const-string v9, "json"

    const-string v10, "txt"

    const-string v11, "jar"

    if-ge v4, v5, :cond_186

    .line 62
    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v5, :cond_c1

    .line 63
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .local v5, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_e4

    .line 65
    .end local v5    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_c1
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 68
    .restart local v5    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_e4
    array-length v12, v5

    const/4 v13, 0x0

    :goto_e6
    if-ge v13, v12, :cond_17d

    aget-object v14, v5, v13

    .line 69
    .local v14, "file":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v15, 0x1

    .line 71
    .local v15, "addMap":Z
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_109

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_109

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_10a

    .line 72
    :cond_109
    const/4 v15, 0x0

    .line 75
    :cond_10a
    if-eqz v15, :cond_139

    .line 76
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_10d
    move-object/from16 v16, v2

    .end local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .local v16, "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_136

    .line 77
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    move-object/from16 v17, v3

    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v17, "json":Lcom/badlogic/gdx/utils/Json;
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 78
    const/4 v15, 0x0

    .line 79
    goto :goto_13d

    .line 76
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_10d

    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_136
    move-object/from16 v17, v3

    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    goto :goto_13d

    .line 75
    .end local v1    # "a":I
    .end local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_139
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 84
    .end local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    :goto_13d
    if-eqz v15, :cond_174

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 85
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Laoc/kingdoms/lukasz/map/map/Map_Data;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v14    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v15    # "addMap":Z
    :cond_174
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/4 v1, 0x0

    goto/16 :goto_e6

    .line 61
    .end local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_17d
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_8f

    .end local v5    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_186
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 90
    .end local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v4    # "i":I
    .restart local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18b
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v1, v2, :cond_247

    .line 91
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v4}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 93
    .local v2, "files":[Lcom/badlogic/gdx/files/FileHandle;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1bc
    if-ge v4, v3, :cond_23f

    aget-object v5, v2, v4

    .line 94
    .local v5, "file":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v12, 0x1

    .line 96
    .local v12, "addMap":Z
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_1df

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_1df

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_1e0

    .line 97
    :cond_1df
    const/4 v12, 0x0

    .line 100
    :cond_1e0
    if-eqz v12, :cond_204

    .line 101
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_1e3
    iget-object v14, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_204

    .line 102
    iget-object v14, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_201

    .line 103
    const/4 v12, 0x0

    .line 104
    goto :goto_204

    .line 101
    :cond_201
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e3

    .line 109
    .end local v13    # "a":I
    :cond_204
    :goto_204
    if-eqz v12, :cond_23b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v13

    if-eqz v13, :cond_23b

    .line 110
    iget-object v13, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/map/map/Map_Data;

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Laoc/kingdoms/lukasz/map/map/Map_Data;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v5    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "addMap":Z
    :cond_23b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1bc

    .line 90
    :cond_23f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18b

    .line 58
    .end local v1    # "i":I
    .end local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    .local v2, "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_243
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 116
    .end local v2    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    .restart local v16    # "data":Laoc/kingdoms/lukasz/map/map/Map$Config;
    .restart local v17    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_247
    iget v1, v0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->setActiveMapID(I)V

    .line 117
    return-void
.end method

.method public static final drawCityName_Capital_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V
    .registers 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I

    .line 292
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 294
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 296
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 297
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 299
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6d

    .line 300
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 302
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_l:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 304
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 305
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 307
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_cc

    .line 309
    :cond_6d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    if-le v0, v1, :cond_a5

    .line 310
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 313
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 315
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 316
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 318
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_cc

    .line 321
    :cond_a5
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 323
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_s:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 325
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 326
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 328
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 330
    :goto_cc
    return-void
.end method

.method public static final drawCityName_Capital_CivFlag_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I

    .line 333
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 335
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_62

    .line 336
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 338
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 340
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_f4

    .line 342
    :cond_62
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b4

    .line 343
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 345
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 347
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_f4

    .line 350
    :cond_b4
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 352
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 354
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s_Low:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 356
    :goto_f4
    return-void
.end method

.method public static updateDrawProvincesFlags()V
    .registers 2

    .line 267
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    if-nez v0, :cond_e

    .line 268
    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    goto :goto_24

    .line 273
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 274
    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    goto :goto_24

    .line 282
    :cond_1d
    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    .line 289
    :goto_24
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 200
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_20

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "i":I
    :cond_1f
    goto :goto_21

    .line 202
    :catch_20
    move-exception v0

    .line 207
    :goto_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    :try_start_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 208
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_41

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 212
    .end local v0    # "i":I
    :cond_40
    goto :goto_42

    .line 210
    :catch_41
    move-exception v0

    .line 215
    :goto_42
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_43
    :try_start_43
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 216
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5e} :catch_62

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 220
    .end local v0    # "i":I
    :cond_61
    goto :goto_63

    .line 218
    :catch_62
    move-exception v0

    .line 223
    :goto_63
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_64
    :try_start_64
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 224
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_83

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 228
    .end local v0    # "i":I
    :cond_82
    goto :goto_84

    .line 226
    :catch_83
    move-exception v0

    .line 231
    :goto_84
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_85
    :try_start_85
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a3

    .line 232
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a0} :catch_a4

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 236
    .end local v0    # "i":I
    :cond_a3
    goto :goto_a5

    .line 234
    :catch_a4
    move-exception v0

    .line 239
    :goto_a5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a6
    :try_start_a6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c4

    .line 240
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c1} :catch_c5

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 244
    .end local v0    # "i":I
    :cond_c4
    goto :goto_c6

    .line 242
    :catch_c5
    move-exception v0

    .line 247
    :goto_c6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c7
    :try_start_c7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_df

    .line 248
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_dc} :catch_e0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 252
    .end local v0    # "i":I
    :cond_df
    goto :goto_e1

    .line 250
    :catch_e0
    move-exception v0

    .line 253
    :goto_e1
    return-void
.end method

.method public final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    if-eqz v0, :cond_b

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->disposeMinimapOfCivilizations_Real()V

    .line 139
    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 142
    return-void
.end method

.method public final drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 145
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 146
    return-void
.end method

.method public final getActiveMapID()I
    .registers 2

    .line 170
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    return v0
.end method

.method public final getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;
    .registers 3

    .line 190
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    return-object v0
.end method

.method public final getFile_ActiveMap_Path()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFile_Map_Path(I)Ljava/lang/String;
    .registers 4
    .param p1, "nMapID"    # I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapWorldMap(I)Z
    .registers 3
    .param p1, "i"    # I

    .line 194
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WorldMap:Z

    return v0
.end method

.method public final isWorldMap(I)Z
    .registers 3
    .param p1, "i"    # I

    .line 164
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WorldMap:Z

    return v0
.end method

.method public final setActiveMapID(I)V
    .registers 4
    .param p1, "nActiveMapID"    # I

    .line 174
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    if-eq v0, p1, :cond_9

    .line 175
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    .line 176
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Map;->updateWorldMap()V

    .line 179
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_CITIES_MIN_SCALE:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    .line 180
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    .line 181
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_INNER_BORDERS:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    .line 182
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    .line 183
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_ARMY_MIN_SCALE:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    .line 184
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_OCCUPIED_SCALE:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    .line 186
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Map;->iActiveMapID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->ResearchCost:F

    sput v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->MapResearchCost:F

    .line 187
    return-void
.end method

.method public final update()V
    .registers 2

    .line 127
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->update()V

    .line 128
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->update()V

    .line 129
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateMoveMap()V

    .line 130
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->updateMapPosition()V

    .line 132
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateInView_CordsXY()V

    .line 133
    return-void
.end method

.method public final updateWorldMap()V
    .registers 2

    .line 120
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateWorldMap()V

    .line 121
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->updateWorldMap()V

    .line 122
    return-void
.end method
