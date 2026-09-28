.class public Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;
.super Ljava/lang/Object;
.source "StatsManager.java"


# instance fields
.field public civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    const-string v1, "neu"

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    return-void
.end method

.method private final saveStatsList()V
    .registers 12

    .line 63
    const-string v0, ""

    .line 65
    .local v0, "tList":Ljava/lang/String;
    const-string v1, "statistics/AoH.txt"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    const-string v3, ";"

    if-eqz v2, :cond_4f

    .line 66
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 68
    .local v2, "file2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "tempTags":Ljava/lang/String;
    move-object v0, v4

    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "tSplited":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 75
    .local v6, "add":Z
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v5

    .local v8, "iSize":I
    :goto_20
    if-ge v7, v8, :cond_33

    .line 76
    aget-object v9, v5, v7

    iget-object v10, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 77
    const/4 v6, 0x0

    .line 78
    goto :goto_33

    .line 75
    :cond_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 82
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_33
    :goto_33
    if-eqz v6, :cond_4e

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .end local v2    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "tempTags":Ljava/lang/String;
    .end local v5    # "tSplited":[Ljava/lang/String;
    .end local v6    # "add":Z
    :cond_4e
    goto :goto_68

    .line 87
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_68
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 91
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public final loadAllStats()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Stats/Stats;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Stats/Stats;>;"
    const-string v1, "statistics/AoH.txt"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 98
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 100
    .local v1, "file2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "tempTags":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "tSplited":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v3

    .local v5, "iSize":I
    :goto_21
    if-ge v4, v5, :cond_7d

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statistics/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v3, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".json"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 106
    :try_start_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 108
    .local v6, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v7, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 109
    .local v7, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    invoke-virtual {v7, v8, v6}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    .line 111
    .local v8, "loadedStats":Laoc/kingdoms/lukasz/jakowski/Stats/Stats;
    if-eqz v8, :cond_75

    .line 112
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_75} :catch_76

    .line 116
    .end local v6    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v8    # "loadedStats":Laoc/kingdoms/lukasz/jakowski/Stats/Stats;
    :cond_75
    goto :goto_7a

    .line 114
    :catch_76
    move-exception v6

    .line 115
    .local v6, "ex":Ljava/lang/Exception;
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 103
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_7a
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 121
    .end local v1    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "tempTags":Ljava/lang/String;
    .end local v3    # "tSplited":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_7d
    return-object v0
.end method

.method public loadStats(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "increaseGames"    # Z

    .line 23
    const-string v0, ".json"

    const-string v1, "statistics/"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_5b

    if-eqz v2, :cond_5a

    .line 25
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 27
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 28
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    .line 30
    if-eqz p2, :cond_55

    .line 31
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ga:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ga:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_55} :catch_56

    .line 33
    :cond_55
    return-void

    .line 34
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :catch_56
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_57
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 40
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5a
    goto :goto_5f

    .line 38
    :catch_5b
    move-exception v0

    .line 39
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 42
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    invoke-direct {v0, p1}, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    .line 43
    return-void
.end method

.method public saveStats()V
    .registers 5

    .line 46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eqz v0, :cond_82

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-nez v0, :cond_82

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    const-string v1, "neu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_82

    .line 50
    :cond_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->li:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->li:I

    .line 51
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->lp:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->lp:I

    .line 53
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    .line 54
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v2, "Data"

    const-class v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statistics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 57
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 59
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->saveStatsList()V

    .line 60
    return-void

    .line 47
    .end local v0    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_82
    :goto_82
    return-void
.end method
